import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rentlog/core/config/env.dart';

/// What a notification is about; the `data` payload built in
/// convex/pushActions.ts.
class PushMessage {
  const PushMessage({required this.kind, this.leaseId, this.periodMonth});

  factory PushMessage.fromData(Map<String, dynamic> data) => PushMessage(
    kind: data['kind'] as String? ?? '',
    leaseId: data['leaseId'] as String?,
    periodMonth: data['periodMonth'] as String?,
  );

  final String kind;
  final String? leaseId;
  final String? periodMonth;

  Map<String, String> toData() => {
    'kind': kind,
    'leaseId': ?leaseId,
    'periodMonth': ?periodMonth,
  };
}

/// Where a token is sent once one exists; implemented by the session layer.
abstract interface class PushTokenSink {
  Future<void> register({required String token, required String platform});
  Future<void> unregister(String token);
}

/// Firebase Cloud Messaging for both platforms (APNs behind it on iOS).
///
/// Everything is a no-op until the Firebase values in `config/<flavor>.json`
/// are filled in, so the app runs fine before push is set up.
class PushService {
  PushService({FlutterLocalNotificationsPlugin? local})
    : _local = local ?? FlutterLocalNotificationsPlugin();

  final FlutterLocalNotificationsPlugin _local;

  bool _available = false;
  String? _token;
  StreamSubscription<String>? _refreshSub;

  /// Set while signed in, so a registration that couldn't finish (no APNs
  /// token yet) is retried when the app comes back to the foreground.
  PushTokenSink? _sink;
  AppLifecycleListener? _lifecycle;

  final _opened = StreamController<PushMessage>.broadcast();
  final _received = StreamController<PushMessage>.broadcast();

  /// The user tapped a notification: navigate to what it's about.
  Stream<PushMessage> get opened => _opened.stream;

  /// A notification arrived while the app was open: refresh the data.
  Stream<PushMessage> get received => _received.stream;

  bool get isAvailable => _available;

  static const _channelId = 'charges';

  Future<void> initialize({
    required String channelName,
    required String channelDescription,
  }) async {
    final options = _firebaseOptions();
    if (options == null) {
      debugPrint('Push disabled: Firebase is not configured for this flavor.');
      return;
    }
    try {
      await Firebase.initializeApp(options: options);
    } on Object catch (error) {
      debugPrint('Push disabled: Firebase failed to start ($error).');
      return;
    }
    _available = true;

    await _local.initialize(
      settings: const InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/ic_launcher'),
        // Permission is asked for through FCM after sign-in, not at launch.
        iOS: DarwinInitializationSettings(
          requestAlertPermission: false,
          requestBadgePermission: false,
          requestSoundPermission: false,
        ),
      ),
      onDidReceiveNotificationResponse: (response) {
        final payload = response.payload;
        if (payload == null) return;
        _opened.add(
          PushMessage.fromData(jsonDecode(payload) as Map<String, dynamic>),
        );
      },
    );
    await _local
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(
          AndroidNotificationChannel(
            _channelId,
            channelName,
            description: channelDescription,
            importance: Importance.high,
          ),
        );

    final messaging = FirebaseMessaging.instance;
    // iOS shows foreground notifications natively; Android needs a local one.
    await messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    FirebaseMessaging.onMessage.listen((message) {
      final push = PushMessage.fromData(message.data);
      _received.add(push);
      if (Platform.isAndroid) {
        unawaited(_showLocal(message, push, channelName));
      }
    });
    FirebaseMessaging.onMessageOpenedApp.listen(
      (message) => _opened.add(PushMessage.fromData(message.data)),
    );
    final initial = await messaging.getInitialMessage();
    if (initial != null) {
      // Delivered after the router exists, which listens from app start.
      scheduleMicrotask(() => _opened.add(PushMessage.fromData(initial.data)));
    }
  }

  /// Asks for permission (once; later calls just report it) and hands the
  /// token to [sink], again whenever FCM rotates it.
  Future<void> register(PushTokenSink sink) async {
    if (!_available) return;
    _sink = sink;
    _lifecycle ??= AppLifecycleListener(
      onResume: () {
        final pending = _sink;
        if (pending != null && _token == null) unawaited(register(pending));
      },
    );

    final messaging = FirebaseMessaging.instance;
    final settings = await messaging.requestPermission();
    if (settings.authorizationStatus == AuthorizationStatus.denied) return;

    try {
      // iOS delivers the APNs token a moment after permission is granted,
      // and FCM can't issue its own token before that. Wait for it rather
      // than giving up on the first try.
      if (Platform.isIOS && !await _waitForApnsToken(messaging)) {
        debugPrint('Push: no APNs token yet; will retry on next resume.');
        return;
      }
      final token = await messaging.getToken();
      if (token == null) return;
      await sink.register(token: token, platform: _platform);
      _token = token;
    } on Object catch (error) {
      debugPrint('Push registration failed: $error');
      return;
    }

    await _refreshSub?.cancel();
    _refreshSub = messaging.onTokenRefresh.listen((token) {
      _token = token;
      unawaited(sink.register(token: token, platform: _platform));
    });
  }

  /// On sign-out: the next person on this phone must get nothing meant for
  /// the previous one.
  Future<void> unregister(PushTokenSink sink) async {
    if (!_available) return;
    _sink = null;
    await _refreshSub?.cancel();
    _refreshSub = null;
    final token = _token;
    _token = null;
    if (token != null) {
      try {
        await sink.unregister(token);
      } on Object catch (error) {
        debugPrint('Push unregister failed: $error');
      }
    }
    await FirebaseMessaging.instance.deleteToken();
  }

  Future<bool> isPermitted() async {
    if (!_available) return false;
    final settings = await FirebaseMessaging.instance.getNotificationSettings();
    return settings.authorizationStatus == AuthorizationStatus.authorized ||
        settings.authorizationStatus == AuthorizationStatus.provisional;
  }

  Future<void> _showLocal(
    RemoteMessage message,
    PushMessage push,
    String channelName,
  ) async {
    final notification = message.notification;
    if (notification == null) return;
    await _local.show(
      id: message.hashCode,
      title: notification.title,
      body: notification.body,
      notificationDetails: NotificationDetails(
        android: AndroidNotificationDetails(
          _channelId,
          channelName,
          importance: Importance.high,
          priority: Priority.high,
        ),
      ),
      payload: jsonEncode(push.toData()),
    );
  }

  static Future<bool> _waitForApnsToken(FirebaseMessaging messaging) async {
    for (var attempt = 0; attempt < 20; attempt++) {
      if (await messaging.getAPNSToken() != null) return true;
      await Future<void>.delayed(const Duration(milliseconds: 500));
    }
    return false;
  }

  static String get _platform => Platform.isIOS ? 'ios' : 'android';

  static FirebaseOptions? _firebaseOptions() {
    final ios = Platform.isIOS;
    final apiKey = ios ? Env.firebaseApiKeyIos : Env.firebaseApiKeyAndroid;
    final appId = ios ? Env.firebaseAppIdIos : Env.firebaseAppIdAndroid;
    if (apiKey.isEmpty ||
        appId.isEmpty ||
        Env.firebaseProjectId.isEmpty ||
        Env.firebaseSenderId.isEmpty) {
      return null;
    }
    return FirebaseOptions(
      apiKey: apiKey,
      appId: appId,
      messagingSenderId: Env.firebaseSenderId,
      projectId: Env.firebaseProjectId,
      iosBundleId: ios ? 'app.rentlog' : null,
    );
  }
}
