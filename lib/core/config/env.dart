/// Build-time configuration, supplied with
/// `--dart-define-from-file=config/<flavor>.json`.
///
/// Everything here is public: the Convex URL and Clerk's Frontend API are
/// what the web app ships to every browser too. No secret belongs in a
/// mobile binary.
abstract final class Env {
  static const flavor = String.fromEnvironment('FLAVOR', defaultValue: 'development');
  static const convexUrl = String.fromEnvironment('CONVEX_URL');
  static const clerkFrontendApi = String.fromEnvironment('CLERK_FRONTEND_API');
  static const webUrl = String.fromEnvironment('WEB_URL', defaultValue: 'https://rent-log.app');

  // Firebase's client options — public identifiers, the same values the
  // GoogleService files would carry. Empty means push is switched off.
  static const firebaseProjectId = String.fromEnvironment('FIREBASE_PROJECT_ID');
  static const firebaseSenderId = String.fromEnvironment('FIREBASE_SENDER_ID');
  static const firebaseApiKeyIos = String.fromEnvironment('FIREBASE_API_KEY_IOS');
  static const firebaseAppIdIos = String.fromEnvironment('FIREBASE_APP_ID_IOS');
  static const firebaseApiKeyAndroid = String.fromEnvironment('FIREBASE_API_KEY_ANDROID');
  static const firebaseAppIdAndroid = String.fromEnvironment('FIREBASE_APP_ID_ANDROID');

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
