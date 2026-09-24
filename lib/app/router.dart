import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:rentlog/app/routes.dart';
import 'package:rentlog/app/view/landlord_shell.dart';
import 'package:rentlog/app/view/splash_screen.dart';
import 'package:rentlog/app/view/tenant_shell.dart';
import 'package:rentlog/features/auth/view/auth_screen.dart';
import 'package:rentlog/features/landlord/view/landlord_overview_screen.dart';
import 'package:rentlog/features/landlord/view/lease_detail_screen.dart';
import 'package:rentlog/features/landlord/view/leases_screen.dart';
import 'package:rentlog/features/landlord/view/properties_screen.dart';
import 'package:rentlog/features/onboarding/view/onboarding_screen.dart';
import 'package:rentlog/features/session/bloc/session_bloc.dart';
import 'package:rentlog/features/settings/view/settings_screen.dart';
import 'package:rentlog/features/tenant/view/tenant_documents_screen.dart';
import 'package:rentlog/features/tenant/view/tenant_home_screen.dart';

/// Re-runs redirects whenever the session changes.
class _SessionListenable extends ChangeNotifier {
  _SessionListenable(Stream<SessionState> stream) {
    _sub = stream.listen((_) => notifyListeners());
  }

  late final StreamSubscription<SessionState> _sub;

  @override
  void dispose() {
    unawaited(_sub.cancel());
    super.dispose();
  }
}

GoRouter buildRouter(SessionBloc session) => GoRouter(
  initialLocation: AppRoutes.starting,
  refreshListenable: _SessionListenable(session.stream),
  redirect: (context, state) => _redirect(session.state, state.matchedLocation),
  routes: [
    GoRoute(path: AppRoutes.starting, builder: (_, _) => const SplashScreen()),
    GoRoute(path: AppRoutes.signIn, builder: (_, _) => const AuthScreen()),
    GoRoute(path: AppRoutes.onboarding, builder: (_, _) => const OnboardingScreen()),
    GoRoute(path: AppRoutes.join, builder: (_, _) => const OnboardingScreen()),
    StatefulShellRoute.indexedStack(
      builder: (_, _, shell) => TenantShell(navigationShell: shell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.tenantHome,
              builder: (_, state) =>
                  TenantHomeScreen(focusMonth: state.uri.queryParameters['month']),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.tenantDocuments,
              builder: (_, _) => const TenantDocumentsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.tenantSettings,
              builder: (_, _) => const SettingsScreen(),
            ),
          ],
        ),
      ],
    ),
    StatefulShellRoute.indexedStack(
      builder: (_, _, shell) => LandlordShell(navigationShell: shell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.landlordOverview,
              builder: (_, _) => const LandlordOverviewScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.landlordLeases,
              builder: (_, _) => const LeasesScreen(),
              routes: [
                GoRoute(
                  path: ':leaseId',
                  builder: (_, state) =>
                      LeaseDetailScreen(leaseId: state.pathParameters['leaseId']!),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.landlordProperties,
              builder: (_, _) => const PropertiesScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.landlordSettings,
              builder: (_, _) => const SettingsScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);

/// Each session state owns a part of the app; anything else is sent home.
String? _redirect(SessionState session, String location) {
  bool within(String prefix) => location == prefix || location.startsWith('$prefix/');
  return switch (session) {
    SessionStarting() || SessionUnavailable() =>
      location == AppRoutes.starting ? null : AppRoutes.starting,
    SessionSignedOut() => location == AppRoutes.signIn ? null : AppRoutes.signIn,
    SessionOnboarding() =>
      location == AppRoutes.onboarding ? null : AppRoutes.onboarding,
    SessionReady(:final role) => switch (role) {
      _ when location == AppRoutes.join => null,
      AppRole.tenant => within(AppRoutes.tenantHome) ? null : AppRoutes.tenantHome,
      AppRole.landlord =>
        within(AppRoutes.landlordOverview) ? null : AppRoutes.landlordOverview,
    },
  };
}
