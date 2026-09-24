import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rentlog/app/view/refresh_on_signal.dart';
import 'package:rentlog/features/tenant/bloc/tenant_bloc.dart';
import 'package:rentlog/features/tenant/data/tenant_repository.dart';
import 'package:rentlog/l10n/l10n.dart';

class TenantShell extends StatelessWidget {
  const TenantShell({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocProvider(
      create: (context) =>
          TenantBloc(context.read<TenantRepository>())..add(const TenantEvent.started()),
      child: Builder(
        builder: (context) => RefreshOnSignal(
          onRefresh: () => context.read<TenantBloc>().add(const TenantEvent.refreshed()),
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
                  icon: const Icon(Icons.home_outlined),
                  selectedIcon: const Icon(Icons.home),
                  label: l10n.navHome,
                ),
                NavigationDestination(
                  icon: const Icon(Icons.description_outlined),
                  selectedIcon: const Icon(Icons.description),
                  label: l10n.navDocuments,
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
