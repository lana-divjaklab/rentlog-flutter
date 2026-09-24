import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/core/widgets/rl_card.dart';
import 'package:rentlog/core/widgets/rl_logo.dart';
import 'package:rentlog/features/onboarding/bloc/onboarding_bloc.dart';
import 'package:rentlog/features/session/bloc/session_bloc.dart';
import 'package:rentlog/features/session/data/session_repository.dart';
import 'package:rentlog/l10n/l10n.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => OnboardingBloc(context.read<SessionRepository>()),
    child: BlocListener<OnboardingBloc, OnboardingState>(
      listenWhen: (a, b) => !a.done && b.done,
      listener: (context, _) {
        context.read<SessionBloc>().add(const SessionEvent.membershipsChanged());
        // Opened on top of the app (from "enter invite code"): go back to it.
        if (context.canPop()) context.pop();
      },
      child: const _OnboardingView(),
    ),
  );
}

class _OnboardingView extends StatefulWidget {
  const _OnboardingView();

  @override
  State<_OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<_OnboardingView> {
  final _code = TextEditingController();
  bool _enteringCode = false;

  @override
  void dispose() {
    _code.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final state = context.watch<OnboardingBloc>().state;
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () => context.read<SessionBloc>().add(
              const SessionEvent.signOutRequested(),
            ),
            child: Text(l10n.signOut, style: const TextStyle(color: AppColors.muted)),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
          children: [
            const RlLogo(size: 36, showWordmark: false),
            const SizedBox(height: 20),
            Text(l10n.onboardingTitle, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text(l10n.onboardingSubtitle, style: const TextStyle(color: AppColors.muted)),
            const SizedBox(height: 28),
            _OptionCard(
              icon: Icons.vpn_key_outlined,
              title: l10n.onboardingTenant,
              subtitle: l10n.onboardingTenantHint,
              selected: _enteringCode,
              onTap: () => setState(() => _enteringCode = true),
              expanded: _enteringCode ? _codeEntry(context, state) : null,
            ),
            const SizedBox(height: 12),
            _OptionCard(
              icon: Icons.home_work_outlined,
              title: l10n.onboardingLandlord,
              subtitle: l10n.onboardingLandlordHint,
              selected: false,
              onTap: state.busy
                  ? null
                  : () => context.read<OnboardingBloc>().add(
                      OnboardingEvent.landlordRequested(
                        l10n.defaultOrganizationName,
                      ),
                    ),
            ),
            if (!_enteringCode && state.failure == OnboardingFailure.error) ...[
              const SizedBox(height: 16),
              Text(l10n.genericError, style: const TextStyle(color: AppColors.destructive)),
            ],
          ],
        ),
      ),
    );
  }

  Widget _codeEntry(BuildContext context, OnboardingState state) {
    final l10n = context.l10n;
    final preview = state.preview;
    final failure = switch (state.failure) {
      OnboardingFailure.invalid => l10n.inviteInvalid,
      OnboardingFailure.revoked => l10n.inviteRevoked,
      OnboardingFailure.used => l10n.inviteUsed,
      OnboardingFailure.error => l10n.genericError,
      null => null,
    };
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 16),
        TextField(
          controller: _code,
          autofocus: true,
          textCapitalization: TextCapitalization.characters,
          autocorrect: false,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9]')),
            LengthLimitingTextInputFormatter(8),
          ],
          style: const TextStyle(letterSpacing: 4, fontWeight: FontWeight.w600),
          onSubmitted: (value) => context.read<OnboardingBloc>().add(
            OnboardingEvent.codeChecked(value),
          ),
          decoration: InputDecoration(labelText: l10n.inviteLabel),
        ),
        if (failure != null) ...[
          const SizedBox(height: 8),
          Text(failure, style: const TextStyle(color: AppColors.destructive)),
        ],
        if (preview != null) ...[
          const SizedBox(height: 12),
          Text(
            l10n.inviteFor(preview.tenantName),
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          Text(
            '${preview.propertyName} · ${preview.unitName}',
            style: const TextStyle(color: AppColors.muted),
          ),
        ],
        const SizedBox(height: 16),
        FilledButton(
          onPressed: state.busy
              ? null
              : () => context.read<OnboardingBloc>().add(
                  preview == null
                      ? OnboardingEvent.codeChecked(_code.text)
                      : const OnboardingEvent.joinRequested(),
                ),
          child: state.busy
              ? const SizedBox.square(
                  dimension: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : Text(preview == null ? l10n.inviteCheck : l10n.inviteJoin),
        ),
      ],
    );
  }
}

class _OptionCard extends StatelessWidget {
  const _OptionCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.selected,
    required this.onTap,
    this.expanded,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final bool selected;
  final VoidCallback? onTap;
  final Widget? expanded;

  @override
  Widget build(BuildContext context) => RlCard(
    onTap: selected ? null : onTap,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.tint(AppColors.primary),
                borderRadius: BorderRadius.circular(AppRadius.lg),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(icon, color: AppColors.primary),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
                  const SizedBox(height: 2),
                  Text(subtitle, style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
            ),
            if (!selected)
              const Icon(Icons.chevron_right, color: AppColors.muted),
          ],
        ),
        ?expanded,
      ],
    ),
  );
}
