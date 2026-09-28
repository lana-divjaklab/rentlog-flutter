import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentlog/core/bloc/load_state.dart';
import 'package:rentlog/core/format/dates.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/core/widgets/error_text.dart';
import 'package:rentlog/core/widgets/load_state_view.dart';
import 'package:rentlog/core/widgets/open_on_web_tile.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';
import 'package:rentlog/features/landlord/data/landlord_repository.dart';
import 'package:rentlog/features/session/bloc/session_bloc.dart';
import 'package:rentlog/features/settlement/bloc/settlement_bloc.dart';
import 'package:rentlog/features/settlement/data/settlement_repository.dart';
import 'package:rentlog/features/settlement/domain/settlement_logic.dart';
import 'package:rentlog/features/settlement/view/widgets/bills_step.dart';
import 'package:rentlog/features/settlement/view/widgets/meters_step.dart';
import 'package:rentlog/features/settlement/view/widgets/review_step.dart';
import 'package:rentlog/l10n/l10n.dart';

/// The Mesec tab: a property's month, from meter readings to publishing.
class SettlementScreen extends StatelessWidget {
  const SettlementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final session = context.read<SessionBloc>().state as SessionReady;
    return BlocProvider(
      create: (context) => SettlementBloc(
        landlord: context.read<LandlordRepository>(),
        settlement: context.read<SettlementRepository>(),
        organizationId: session.landlordOrg!.organizationId,
      )..add(const SettlementEvent.started()),
      child: const SettlementView(),
    );
  }
}

/// The screen body, given a SettlementBloc above it. Public so tests and the
/// store-screenshot tool can drive it with their own bloc.
class SettlementView extends StatelessWidget {
  const SettlementView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final state = context.watch<SettlementBloc>().state;
    final properties = state.properties.dataOrNull ?? const <PropertyItem>[];
    final property = properties.where((p) => p.id == state.propertyId).firstOrNull;

    return BlocListener<SettlementBloc, SettlementState>(
      listenWhen: (a, b) => a.signal != b.signal,
      listener: (context, state) {
        final message = state.error != null
            ? describeError(context, state.error!)
            : state.publishedCount != null
            ? l10n.publishedToTenants(state.publishedCount!)
            : null;
        if (message == null) return;
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text(message)));
      },
      child: Scaffold(
        appBar: AppBar(
          title: properties.length > 1
              ? _PropertyPicker(properties: properties, selected: property)
              : Text(property?.name ?? l10n.navMonth),
        ),
        body: switch (state.properties) {
          LoadInProgress() => const Center(child: CircularProgressIndicator()),
          LoadFailure(:final error) => ErrorState(
            message: describeError(context, error),
            detail: errorDetail(error),
            onRetry: () =>
                context.read<SettlementBloc>().add(const SettlementEvent.started()),
          ),
          LoadSuccess(:final data) when data.isEmpty => EmptyState(
            icon: Icons.home_work_outlined,
            message: l10n.propertiesEmpty,
            action: OutlinedButton(
              onPressed: () => openWeb('/properties'),
              child: Text(l10n.openOnWeb),
            ),
          ),
          LoadSuccess() => Column(
            children: [
              _MonthSwitcher(month: state.month),
              Expanded(
                child: LoadStateView(
                  state: state.data,
                  onRefresh: () async {
                    final bloc = context.read<SettlementBloc>()
                      ..add(const SettlementEvent.refreshed());
                    await bloc.stream.firstWhere(
                      (s) => s.data is! LoadInProgress<SettlementMonth>,
                    );
                  },
                  builder: (context, data) => Column(
                    children: [
                      _StepBar(data: data, current: state.step),
                      Expanded(
                        child: switch (state.step) {
                          SettlementStep.meters => MetersStep(data: data),
                          SettlementStep.bills => BillsStep(data: data),
                          SettlementStep.review => ReviewStep(data: data),
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        },
        bottomNavigationBar: state.data.dataOrNull == null
            ? null
            : _BottomAction(state: state, data: state.data.dataOrNull!),
      ),
    );
  }
}

class _PropertyPicker extends StatelessWidget {
  const _PropertyPicker({required this.properties, required this.selected});

  final List<PropertyItem> properties;
  final PropertyItem? selected;

  @override
  Widget build(BuildContext context) => InkWell(
    borderRadius: BorderRadius.circular(AppRadius.md),
    onTap: () async {
      final bloc = context.read<SettlementBloc>();
      final picked = await showModalBottomSheet<String>(
        context: context,
        builder: (context) => SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Text(
                  context.l10n.chooseProperty,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              for (final property in properties)
                ListTile(
                  leading: const Icon(Icons.home_work_outlined),
                  title: Text(property.name),
                  subtitle: Text(property.address),
                  trailing: property.id == selected?.id
                      ? const Icon(Icons.check, color: AppColors.primary)
                      : null,
                  onTap: () => Navigator.pop(context, property.id),
                ),
            ],
          ),
        ),
      );
      if (picked != null && picked != selected?.id) {
        bloc.add(SettlementEvent.propertySelected(picked));
      }
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Text(selected?.name ?? '', overflow: TextOverflow.ellipsis),
          ),
          const Icon(Icons.expand_more, color: AppColors.muted),
        ],
      ),
    ),
  );
}

class _MonthSwitcher extends StatelessWidget {
  const _MonthSwitcher({required this.month});

  final String month;

  static String _shift(String month, int delta) {
    final parts = month.split('-').map(int.parse).toList();
    final d = DateTime(parts[0], parts[1] + delta);
    return '${d.year}-${d.month.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    final bloc = context.read<SettlementBloc>();
    final isFuture = month.compareTo(currentMonthKey()) >= 0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () => bloc.add(SettlementEvent.monthChanged(_shift(month, -1))),
          ),
          Expanded(
            child: Text(
              monthLabelLong(month, locale),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.chevron_right),
            // Nothing to settle beyond the running month.
            onPressed: isFuture
                ? null
                : () => bloc.add(SettlementEvent.monthChanged(_shift(month, 1))),
          ),
        ],
      ),
    );
  }
}

/// Three steps, each coloured by how complete it is.
class _StepBar extends StatelessWidget {
  const _StepBar({required this.data, required this.current});

  final SettlementMonth data;
  final SettlementStep current;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final steps = [
      (SettlementStep.meters, l10n.stepMeters, metersStatus(data)),
      (SettlementStep.bills, l10n.stepBills, billsStatus(data)),
      (SettlementStep.review, l10n.stepReview, reviewStatus(data)),
    ];
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
      child: Row(
        children: [
          for (var i = 0; i < steps.length; i++) ...[
            if (i > 0) const SizedBox(width: 8),
            Expanded(
              child: _StepTile(
                number: i + 1,
                label: steps[i].$2,
                status: steps[i].$3,
                selected: steps[i].$1 == current,
                onTap: () => context.read<SettlementBloc>().add(
                  SettlementEvent.stepSelected(steps[i].$1),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _StepTile extends StatelessWidget {
  const _StepTile({
    required this.number,
    required this.label,
    required this.status,
    required this.selected,
    required this.onTap,
  });

  final int number;
  final String label;
  final StepStatus status;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = switch (status) {
      StepStatus.done => AppColors.success,
      StepStatus.partial => AppColors.warning,
      StepStatus.empty => AppColors.muted,
    };
    return Material(
      color: selected ? AppColors.tint(AppColors.primary) : AppColors.card,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.lg),
        side: BorderSide(color: selected ? AppColors.primary : AppColors.border),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(AppRadius.lg),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
          child: Column(
            children: [
              Container(
                width: 26,
                height: 26,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: status == StepStatus.done ? color : Colors.transparent,
                  border: Border.all(color: color, width: 2),
                ),
                child: status == StepStatus.done
                    ? const Icon(Icons.check, size: 15, color: AppColors.onPrimary)
                    : Text(
                        '$number',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: color,
                        ),
                      ),
              ),
              const SizedBox(height: 6),
              Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
                  color: selected ? AppColors.foreground : AppColors.muted,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomAction extends StatelessWidget {
  const _BottomAction({required this.state, required this.data});

  final SettlementState state;
  final SettlementMonth data;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final bloc = context.read<SettlementBloc>();
    final onReview = state.step == SettlementStep.review;
    final busy = state.calculating || state.publishing;
    final nothingToPublish =
        reviewStatus(data) == StepStatus.done || data.leases.isEmpty;

    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
        child: FilledButton(
          onPressed: busy || (onReview && nothingToPublish)
              ? null
              : () => bloc.add(
                  onReview
                      ? const SettlementEvent.publishRequested()
                      : SettlementEvent.stepSelected(
                          SettlementStep.values[state.step.index + 1],
                        ),
                ),
          child: busy
              ? const SizedBox.square(
                  dimension: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : Text(onReview ? l10n.publishMonth : l10n.next),
        ),
      ),
    );
  }
}
