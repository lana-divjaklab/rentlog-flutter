import 'package:rentlog/core/convex/convex_client.dart';
import 'package:rentlog/core/push/push_service.dart';
import 'package:rentlog/features/session/data/session_models.dart';

/// The signed-in user as Convex knows them: profile, memberships, invites,
/// push registration and account deletion.
class SessionRepository implements PushTokenSink {
  SessionRepository(this._convex);

  final ConvexClient _convex;

  /// Creates the user row on first sign-in. [locale] only seeds a new user;
  /// an existing user's choice is left alone, as on the web.
  Future<void> store({
    required String email,
    required String name,
    String? locale,
  }) => _convex.mutation('users:store', {
    'email': email,
    'name': name,
    'locale': locale,
  });

  /// Changing language in the app also changes it for emails and pushes.
  Future<void> setLocale(String locale) =>
      _convex.mutation('users:store', {'locale': locale});

  Future<Viewer?> viewer() async {
    final value = await _convex.query('users:viewer');
    return value == null ? null : Viewer.fromJson(convexMap(value));
  }

  Future<List<Membership>> memberships() async => convexList(
    await _convex.query('users:getMemberships'),
  ).map(Membership.fromJson).toList();

  Future<void> createLandlordOrganization(String name) =>
      _convex.mutation('users:bootstrapOrganization', {'name': name});

  Future<InvitePreview?> previewInvite(String code) async {
    final value = await _convex.query('leaseInvites:preview', {'code': code});
    return value == null ? null : InvitePreview.fromJson(convexMap(value));
  }

  Future<void> acceptInvite(String code) =>
      _convex.mutation('leaseInvites:accept', {'code': code});

  @override
  Future<void> register({required String token, required String platform}) =>
      _convex.mutation('pushDevices:register', {
        'token': token,
        'platform': platform,
      });

  @override
  Future<void> unregister(String token) =>
      _convex.mutation('pushDevices:unregister', {'token': token});

  Future<DeletionStatus> deletionStatus() async => DeletionStatus.fromJson(
    convexMap(await _convex.query('users:accountDeletionStatus')),
  );

  Future<void> requestAccountDeletion() =>
      _convex.mutation('users:requestAccountDeletion');

  Future<void> cancelAccountDeletion() =>
      _convex.mutation('users:cancelAccountDeletion');
}
