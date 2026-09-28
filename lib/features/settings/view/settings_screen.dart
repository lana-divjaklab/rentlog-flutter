import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentlog/core/bloc/load_state.dart';
import 'package:rentlog/core/format/dates.dart';
import 'package:rentlog/core/locale/locale_cubit.dart';
import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/core/push/push_service.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/core/widgets/error_text.dart';
import 'package:rentlog/core/widgets/open_on_web_tile.dart';
import 'package:rentlog/core/widgets/rl_card.dart';
import 'package:rentlog/core/widgets/status_badge.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';
import 'package:rentlog/features/landlord/data/landlord_repository.dart';
import 'package:rentlog/features/session/bloc/session_bloc.dart';
import 'package:rentlog/features/session/data/session_repository.dart';
import 'package:rentlog/features/settings/bloc/settings_bloc.dart';
import 'package:rentlog/l10n/l10n.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final session = context.read<SessionBloc>().state as SessionReady;
    return BlocProvider(
      create: (context) => SettingsBloc(
        session: context.read<SessionRepository>(),
        landlord: context.read<LandlordRepository>(),
        push: context.read<PushService>(),
        organizationId: session.role == AppRole.landlord
            ? session.landlordOrg?.organizationId
            : null,
      )..add(const SettingsEvent.started()),
      child: BlocListener<SettingsBloc, SettingsState>(
        listenWhen: (a, b) =>
            (!a.deleted && b.deleted) || (b.error != null && a.error != b.error),
        listener: (context, state) {
          if (state.deleted) {
            context.read<SessionBloc>().add(const SessionEvent.signOutRequested());
          } else if (state.error != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(describeError(context, state.error!))),
            );
          }
        },
        child: const _SettingsView(),
      ),
    );
  }
}

class _SettingsView extends StatelessWidget {
  const _SettingsView();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final session = context.watch<SessionBloc>().state as SessionReady;
    final state = context.watch<SettingsBloc>().state;
    final language = context.watch<LocaleCubit>().state;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.navSettings)),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
        children: [
          RlCard(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.tint(AppColors.primary),
                  child: Text(
                    (session.user.firstName.isNotEmpty
                            ? session.user.firstName
                            : session.user.email)
                        .substring(0, 1)
                        .toUpperCase(),
                    style: const TextStyle(color: AppColors.primary),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (session.user.fullName.isNotEmpty)
                        Text(
                          session.user.fullName,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                      Text(session.user.email, style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (state.billing != null) ...[
            const _Heading(),
            _SubscriptionCard(billing: state.billing!),
          ],
          _SectionTitle(l10n.settingsLanguage),
          RlCard(
            padding: EdgeInsets.zero,
            child: RadioGroup<String>(
              groupValue: language ?? 'system',
              onChanged: (value) {
                final preference = value == 'system' ? null : value;
                unawaited(context.read<LocaleCubit>().choose(preference));
                context.read<SettingsBloc>().add(
                  SettingsEvent.languageSynced(LocaleCubit.resolve(preference)),
                );
              },
              child: Column(
                children: [
                  RadioListTile<String>(value: 'system', title: Text(l10n.languageSystem)),
                  const RadioListTile<String>(value: 'sl', title: Text('Slovenščina')),
                  const RadioListTile<String>(value: 'en', title: Text('English')),
                ],
              ),
            ),
          ),
          if (state.notifications != null &&
              state.notifications != PushStatus.unavailable) ...[
            _SectionTitle(l10n.settingsNotifications),
            RlCard(
              padding: EdgeInsets.zero,
              child: _NotificationsSwitch(
                status: state.notifications!,
                busy: state.notificationsBusy,
              ),
            ),
          ],
          const SizedBox(height: 24),
          RlCard(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                if (session.canSwitchRole)
                  ListTile(
                    leading: const Icon(Icons.swap_horiz),
                    title: Text(
                      session.role == AppRole.landlord
                          ? l10n.switchToTenant
                          : l10n.switchToLandlord,
                    ),
                    onTap: () => context.read<SessionBloc>().add(
                      SessionEvent.roleSwitched(
                        session.role == AppRole.landlord
                            ? AppRole.tenant
                            : AppRole.landlord,
                      ),
                    ),
                  ),
                ListTile(
                  leading: const Icon(Icons.open_in_new),
                  title: Text(l10n.openWebApp),
                  onTap: () => unawaited(openWeb()),
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: Text(l10n.signOut),
                  onTap: () => context.read<SessionBloc>().add(
                    const SessionEvent.signOutRequested(),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.delete_outline, color: AppColors.destructive),
                  title: Text(
                    l10n.deleteAccount,
                    style: const TextStyle(color: AppColors.destructive),
                  ),
                  onTap: state.deleting ? null : () => _confirmDelete(context),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Center(
            child: Text(
              l10n.appVersion(state.version),
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _confirmDelete(BuildContext context) async {
    final l10n = context.l10n;
    final bloc = context.read<SettingsBloc>();
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.deleteAccountTitle),
        content: Text(l10n.deleteAccountBody),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: AppColors.destructive),
            child: Text(l10n.deleteAccountConfirm),
          ),
        ],
      ),
    );
    if (confirmed ?? false) bloc.add(const SettingsEvent.deletionRequested());
  }
}

class _NotificationsSwitch extends StatefulWidget {
  const _NotificationsSwitch({required this.status, required this.busy});

  final PushStatus status;
  final bool busy;

  @override
  State<_NotificationsSwitch> createState() => _NotificationsSwitchState();
}

class _NotificationsSwitchState extends State<_NotificationsSwitch> {
  late final AppLifecycleListener _lifecycle;

  @override
  void initState() {
    super.initState();
    // Permission may have changed while the user was in the phone's settings.
    _lifecycle = AppLifecycleListener(
      onResume: () => context.read<SettingsBloc>().add(
        const SettingsEvent.notificationsRechecked(),
      ),
    );
  }

  @override
  void dispose() {
    _lifecycle.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final on = widget.status == PushStatus.on;
    final blocked = widget.status == PushStatus.blockedBySystem;
    return SwitchListTile(
      value: on,
      activeThumbColor: AppColors.primary,
      secondary: Icon(
        on ? Icons.notifications_active_outlined : Icons.notifications_off_outlined,
        color: on ? AppColors.primary : AppColors.muted,
      ),
      title: Text(l10n.notificationsSwitch),
      subtitle: Text(
        blocked
            ? l10n.notificationsBlockedHint
            : on
            ? l10n.notificationsOnHint
            : l10n.notificationsOffHint,
        style: TextStyle(color: blocked ? AppColors.warning : AppColors.muted),
      ),
      onChanged: widget.busy
          ? null
          : (enabled) => context.read<SettingsBloc>().add(
              SettingsEvent.notificationsToggled(enabled: enabled),
            ),
    );
  }
}

class _Heading extends StatelessWidget {
  const _Heading();

  @override
  Widget build(BuildContext context) =>
      _SectionTitle(context.l10n.settingsSubscription);
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.fromLTRB(4, 24, 4, 8),
    child: Text(text, style: Theme.of(context).textTheme.labelSmall),
  );
}

/// Read-only on purpose: App Store rule 3.1.1 forbids steering users to buy
/// a digital subscription outside the app, so there is no upgrade button.
class _SubscriptionCard extends StatelessWidget {
  const _SubscriptionCard({required this.billing});

  final LoadState<BillingInfo> billing;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context).languageCode;
    return RlCard(
      child: switch (billing) {
        LoadInProgress() => const Center(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: CircularProgressIndicator(),
          ),
        ),
        LoadFailure(:final error) => Text(describeError(context, error)),
        LoadSuccess(:final data) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                RlBadge(
                  label: data.legacyFullAccess
                      ? l10n.planLegacy
                      : switch (data.plan) {
                          Plan.free => l10n.planFree,
                          Plan.pro => l10n.planPro,
                          Plan.business => l10n.planBusiness,
                        },
                  color: data.plan == Plan.free && !data.legacyFullAccess
                      ? AppColors.muted
                      : AppColors.success,
                ),
                const Spacer(),
                if (data.currentPeriodEnd != null)
                  Text(
                    l10n.renewsOn(
                      formatDate(
                        toIsoDate(
                          DateTime.fromMillisecondsSinceEpoch(data.currentPeriodEnd!),
                        ),
                        locale,
                      ),
                    ),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              l10n.usageProperties(data.propertyCount, _limit(data.limits.maxProperties)),
            ),
            Text(l10n.usageLeases(data.leaseCount, _limit(data.limits.maxLeases))),
          ],
        ),
      },
    );
  }

  static String _limit(int max) => max < 0 ? '∞' : '$max';
}
