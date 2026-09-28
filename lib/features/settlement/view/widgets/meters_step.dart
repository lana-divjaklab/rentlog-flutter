import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentlog/core/format/dates.dart';
import 'package:rentlog/core/format/money.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/core/widgets/load_state_view.dart';
import 'package:rentlog/core/widgets/rl_card.dart';
import 'package:rentlog/core/widgets/status_badge.dart';
import 'package:rentlog/features/settlement/bloc/settlement_bloc.dart';
import 'package:rentlog/features/settlement/data/settlement_models.dart';
import 'package:rentlog/features/settlement/domain/settlement_logic.dart';
import 'package:rentlog/features/settlement/view/widgets/commit_field.dart';
import 'package:rentlog/l10n/l10n.dart';

class MetersStep extends StatelessWidget {
  const MetersStep({required this.data, super.key});

  final SettlementMonth data;

  @override
  Widget build(BuildContext context) {
    final utilities = data.meteredUtilities;
    if (utilities.isEmpty) {
      return EmptyState(
        icon: Icons.speed_outlined,
        message: context.l10n.noMeteredUtilities,
      );
    }
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      children: [
        for (final utility in utilities) ...[
          _MeterCard(data: data, utility: utility),
          const SizedBox(height: 12),
        ],
      ],
    );
  }
}

class _MeterCard extends StatelessWidget {
  const _MeterCard({required this.data, required this.utility});

  final SettlementMonth data;
  final MeteredUtility utility;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context).languageCode;
    final state = context.watch<SettlementBloc>().state;
    final current = data.reading(utility.id, data.month);
    final previous = data.reading(utility.id, data.previousMonth);
    final usage = data.propertyUsage(utility.id);
    const mainKey = 'main';

    return RlCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              const Icon(Icons.speed_outlined, size: 20, color: AppColors.primary),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  utility.name,
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
              if (utility.unit.isNotEmpty)
                Text(utility.unit, style: const TextStyle(color: AppColors.muted)),
            ],
          ),
          const SizedBox(height: 14),
          Text(l10n.mainMeter, style: Theme.of(context).textTheme.labelSmall),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                child: CommitField(
                  key: ValueKey('${data.month}:${utility.id}:$mainKey'),
                  large: true,
                  initial: current == null ? '' : numberToInput(current.reading, locale),
                  suffix: utility.unit,
                  saving: state.saving.contains('reading:${utility.id}:$mainKey'),
                  saved: state.saved.contains('reading:${utility.id}:$mainKey'),
                  onCommit: (text) => _commit(context, utility.id, null, text),
                ),
              ),
              const SizedBox(width: 12),
              _UsageBadge(usage: usage, unit: utility.unit),
            ],
          ),
          const SizedBox(height: 6),
          if (previous != null)
            Text(
              l10n.previousReadingValue(
                '${formatUsage(previous.reading, locale)} ${utility.unit}',
              ),
              style: Theme.of(context).textTheme.bodySmall,
            )
          else
            _MissingPrevious(month: data.previousMonth),
          if (data.leases.isNotEmpty) ...[
            const Divider(height: 28),
            for (final lease in data.leases) ...[
              _UnitRow(data: data, utility: utility, lease: lease),
              const SizedBox(height: 10),
            ],
          ],
        ],
      ),
    );
  }
}

class _UnitRow extends StatelessWidget {
  const _UnitRow({
    required this.data,
    required this.utility,
    required this.lease,
  });

  final SettlementMonth data;
  final MeteredUtility utility;
  final PropertyLease lease;

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    final state = context.watch<SettlementBloc>().state;
    final current = data.reading(utility.id, data.month, leaseId: lease.id);
    final previous = data.reading(utility.id, data.previousMonth, leaseId: lease.id);
    final key = 'reading:${utility.id}:${lease.id}';

    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(lease.unitName, style: const TextStyle(fontWeight: FontWeight.w500)),
              Text(
                [
                  lease.tenantName,
                  if (previous != null)
                    context.l10n.previousReadingValue(formatUsage(previous.reading, locale)),
                ].join(' · '),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        CommitField(
          key: ValueKey('${data.month}:${utility.id}:${lease.id}'),
          width: 118,
          initial: current == null ? '' : numberToInput(current.reading, locale),
          saving: state.saving.contains(key),
          saved: state.saved.contains(key),
          onCommit: (text) => _commit(context, utility.id, lease.id, text),
        ),
        const SizedBox(width: 8),
        SizedBox(
          width: 64,
          child: _UsageBadge(
            usage: data.leaseUsage(utility.id, lease.id),
            unit: '',
            compact: true,
          ),
        ),
      ],
    );
  }
}

void _commit(BuildContext context, String categoryId, String? leaseId, String text) {
  final value = parseNumber(text);
  if (value == null || value < 0) return;
  context.read<SettlementBloc>().add(
    SettlementEvent.readingCommitted(
      categoryId: categoryId,
      leaseId: leaseId,
      reading: value,
    ),
  );
}

/// "+12 m³" in teal once usage is known.
class _UsageBadge extends StatelessWidget {
  const _UsageBadge({required this.usage, required this.unit, this.compact = false});

  final double? usage;
  final String unit;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    final value = usage;
    if (value == null) {
      return Text(
        '—',
        textAlign: compact ? TextAlign.right : TextAlign.center,
        style: const TextStyle(color: AppColors.muted),
      );
    }
    final label = '+${formatUsage(value, locale)}${unit.isEmpty ? '' : ' $unit'}';
    return Align(
      alignment: compact ? Alignment.centerRight : Alignment.center,
      child: RlBadge(label: label, color: AppColors.primary),
    );
  }
}

class _MissingPrevious extends StatelessWidget {
  const _MissingPrevious({required this.month});

  final String month;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context).languageCode;
    final label = monthLabelLong(month, locale);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 1),
              child: Icon(Icons.info_outline, size: 16, color: AppColors.warning),
            ),
            const SizedBox(width: 6),
            Expanded(
              child: Text(
                l10n.missingPreviousReading(label),
                style: const TextStyle(color: AppColors.warning, fontSize: 12),
              ),
            ),
          ],
        ),
        TextButton(
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          onPressed: () => context.read<SettlementBloc>().add(
            SettlementEvent.monthChanged(month),
          ),
          child: Text(l10n.openMonth(label)),
        ),
      ],
    );
  }
}
