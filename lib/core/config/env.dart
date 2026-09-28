/// Build-time configuration.
///
/// Defaults are production, so a plain `flutter run` — or Run in Xcode or
/// an IDE — just works. `--dart-define-from-file=config/<flavor>.json`
/// overrides any of them, e.g. to point at a Convex dev deployment.
///
/// Everything here is public: the Convex URL and Clerk's Frontend API are
/// what the web app ships to every browser too, and Firebase's client
/// options are the same values the GoogleService files carry. No secret
/// belongs in a mobile binary.
abstract final class Env {
  static const flavor = String.fromEnvironment(
    'FLAVOR',
    defaultValue: 'production',
  );
  static const convexUrl = String.fromEnvironment(
    'CONVEX_URL',
    defaultValue: 'https://agile-grouse-866.eu-west-1.convex.cloud',
  );
  static const clerkFrontendApi = String.fromEnvironment(
    'CLERK_FRONTEND_API',
    defaultValue: 'https://clerk.rent-log.app',
  );
  static const webUrl = String.fromEnvironment(
    'WEB_URL',
    defaultValue: 'https://rent-log.app',
  );

  // Firebase's client options. Overriding them with empty values switches
  // push off.
  static const firebaseProjectId = String.fromEnvironment(
    'FIREBASE_PROJECT_ID',
    defaultValue: 'rentlog-a2492',
  );
  static const firebaseSenderId = String.fromEnvironment(
    'FIREBASE_SENDER_ID',
    defaultValue: '323713901716',
  );
  static const firebaseApiKeyIos = String.fromEnvironment(
    'FIREBASE_API_KEY_IOS',
    defaultValue: 'AIzaSyBeBOGIxgdTdkTNQysmX0WcMrzEZrUfpz0',
  );
  static const firebaseAppIdIos = String.fromEnvironment(
    'FIREBASE_APP_ID_IOS',
    defaultValue: '1:323713901716:ios:87c002a0d13fbdcb31c081',
  );
  static const firebaseApiKeyAndroid = String.fromEnvironment(
    'FIREBASE_API_KEY_ANDROID',
    defaultValue: 'AIzaSyCYALduarbyD6JYsI5lSyqMIdqNlldq1ak',
  );
  static const firebaseAppIdAndroid = String.fromEnvironment(
    'FIREBASE_APP_ID_ANDROID',
    defaultValue: '1:323713901716:android:b9ae1b7d7c18f87a31c081',
  );

  static bool get isProduction => flavor == 'production';

  /// Fails fast at startup instead of at the first network call.
  static void assertConfigured() {
    final missing = [
      if (convexUrl.isEmpty) 'CONVEX_URL',
      if (clerkFrontendApi.isEmpty) 'CLERK_FRONTEND_API',
    ];
    if (missing.isNotEmpty) {
      throw StateError(
        'Missing ${missing.join(', ')}. Run with '
        '--dart-define-from-file=config/<flavor>.json',
      );
    }
  }
}
