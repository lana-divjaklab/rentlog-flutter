import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rentlog/app/view/refresh_on_signal.dart';
import 'package:rentlog/core/bloc/loader_bloc.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';
import 'package:rentlog/features/landlord/data/landlord_repository.dart';
import 'package:rentlog/features/session/bloc/session_bloc.dart';
import 'package:rentlog/l10n/l10n.dart';

class LandlordShell extends StatelessWidget {
  const LandlordShell({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final repo = context.read<LandlordRepository>();
    final orgId = (context.read<SessionBloc>().state as SessionReady)
        .landlordOrg!
        .organizationId;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              LoaderBloc<DashboardOverview>(() => repo.dashboard(orgId))
                ..add(const LoaderEvent.started()),
        ),
        BlocProvider(
          create: (_) =>
              LoaderBloc<List<LeaseSummary>>(() => repo.leases(orgId))
                ..add(const LoaderEvent.started()),
        ),
        BlocProvider(
          create: (_) =>
              LoaderBloc<List<PropertyItem>>(() => repo.properties(orgId))
                ..add(const LoaderEvent.started()),
        ),
      ],
      child: Builder(
        builder: (context) => RefreshOnSignal(
          onRefresh: () {
            context.read<LoaderBloc<DashboardOverview>>().add(const LoaderEvent.refreshed());
            context.read<LoaderBloc<List<LeaseSummary>>>().add(const LoaderEvent.refreshed());
          },
          child: Scaffold(
            body: navigationShell,
            bottomNavigationBar: NavigationBar(
              selectedIndex: navigationShell.currentIndex,
              onDestinationSelected: (i) => navigationShell.goBranch(
                i,
                initialLocation: i == navigationShell.currentIndex,
              ),
              destinations: [
                NavigationDestination(
                  icon: const Icon(Icons.dashboard_outlined),
                  selectedIcon: const Icon(Icons.dashboard),
                  label: l10n.navOverview,
                ),
                NavigationDestination(
                  icon: const Icon(Icons.description_outlined),
                  selectedIcon: const Icon(Icons.description),
                  label: l10n.navLeases,
                ),
                NavigationDestination(
                  icon: const Icon(Icons.home_work_outlined),
                  selectedIcon: const Icon(Icons.home_work),
                  label: l10n.navProperties,
                ),
                NavigationDestination(
                  icon: const Icon(Icons.settings_outlined),
                  selectedIcon: const Icon(Icons.settings),
                  label: l10n.navSettings,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
