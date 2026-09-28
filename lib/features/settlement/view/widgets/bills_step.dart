import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentlog/core/format/money.dart';
import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/core/widgets/load_state_view.dart';
import 'package:rentlog/core/widgets/rl_card.dart';
import 'package:rentlog/core/widgets/status_badge.dart';
import 'package:rentlog/features/settlement/bloc/settlement_bloc.dart';
import 'package:rentlog/features/settlement/domain/settlement_logic.dart';
import 'package:rentlog/features/settlement/view/widgets/commit_field.dart';
import 'package:rentlog/l10n/l10n.dart';

class BillsStep extends StatelessWidget {
  const BillsStep({required this.data, super.key});

  final SettlementMonth data;

  @override
  Widget build(BuildContext context) {
    final categories = data.billCategories;
    if (categories.isEmpty) {
      return EmptyState(
        icon: Icons.receipt_long_outlined,
        message: context.l10n.noCostsToEnter,
      );
    }
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      children: [
        for (final category in categories) ...[
          _BillCard(data: data, category: category),
          const SizedBox(height: 12),
        ],
      ],
    );
  }
}

class _BillCard extends StatelessWidget {
  const _BillCard({required this.data, required this.category});

  final SettlementMonth data;
  final BillCategory category;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context).languageCode;
    final state = context.watch<SettlementBloc>().state;
    final billKey = 'bill:${category.categoryId}';
    final usageKey = 'usage:${category.categoryId}';
    final meterUsage = category.usesMeter
        ? data.propertyUsage(category.categoryId)
        : null;

    return RlCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Icon(
                category.usesMeter ? Icons.speed_outlined : Icons.receipt_long_outlined,
                size: 20,
                color: AppColors.primary,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  category.name,
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
              if (category.entered)
                const Icon(Icons.check_circle, size: 18, color: AppColors.success),
            ],
          ),
          const SizedBox(height: 14),
          CommitField(
            key: ValueKey('${data.month}:$billKey'),
            large: true,
            label: l10n.totalBill,
            suffix: '€',
            initial: category.totalBillCents == null || category.totalBillCents == 0
                ? ''
                : centsToInput(category.totalBillCents!, locale),
            saving: state.saving.contains(billKey),
            saved: state.saved.contains(billKey),
            onCommit: (text) {
              final cents = parseEurosToCents(text);
              if (cents == null || cents < 0) return;
              context.read<SettlementBloc>().add(
                SettlementEvent.billCommitted(
                  categoryId: category.categoryId,
                  totalCents: cents,
                ),
              );
            },
          ),
          if (category.splitsByUsage) ...[
            const SizedBox(height: 12),
            if (category.usesMeter)
              _MeterUsageLine(usage: meterUsage, unit: category.unit)
            else ...[
              CommitField(
                key: ValueKey('${data.month}:$usageKey'),
                label: l10n.totalUsage,
                suffix: category.unit,
                initial: category.totalUsage == null
                    ? ''
                    : numberToInput(category.totalUsage!, locale),
                saving: state.saving.contains(usageKey),
                saved: state.saved.contains(usageKey),
                onCommit: (text) {
                  final usage = parseNumber(text);
                  if (usage == null || usage < 0) return;
                  context.read<SettlementBloc>().add(
                    SettlementEvent.totalUsageCommitted(
                      categoryId: category.categoryId,
                      totalUsage: usage,
                    ),
                  );
                },
              ),
              const SizedBox(height: 12),
              for (final lease in data.leases)
                if (category.rows[lease.id]?.allocationType ==
                    AllocationType.consumption) ...[
                  _TenantUsageRow(
                    data: data,
                    category: category,
                    leaseId: lease.id,
                    title: lease.unitName,
                    subtitle: lease.tenantName,
                  ),
                  const SizedBox(height: 8),
                ],
            ],
          ],
        ],
      ),
    );
  }
}

class _MeterUsageLine extends StatelessWidget {
  const _MeterUsageLine({required this.usage, required this.unit});

  final double? usage;
  final String unit;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context).languageCode;
    final value = usage;
    return Row(
      children: [
        const Icon(Icons.speed_outlined, size: 16, color: AppColors.muted),
        const SizedBox(width: 6),
        Expanded(
          child: value == null
              ? Text(
                  l10n.usageFromMetersMissing,
                  style: const TextStyle(color: AppColors.warning, fontSize: 12),
                )
              : Text(
                  l10n.usageFromMeters('${formatUsage(value, locale)} $unit'),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
        ),
        if (value != null)
          RlBadge(label: '${formatUsage(value, locale)} $unit', color: AppColors.primary),
      ],
    );
  }
}

/// Tenant usage for a cost split by usage without a meter. Kept as a draft
/// until the review step calculates with it.
class _TenantUsageRow extends StatelessWidget {
  const _TenantUsageRow({
    required this.data,
    required this.category,
    required this.leaseId,
    required this.title,
    required this.subtitle,
  });

  final SettlementMonth data;
  final BillCategory category;
  final String leaseId;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    final draft = context.select<SettlementBloc, double?>(
      (b) => b.state.usageDrafts[draftKey(leaseId, category.categoryId)],
    );
    final stored = category.rows[leaseId]?.tenantUsage;
    final value = draft ?? stored;
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
              Text(subtitle, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
        CommitField(
          key: ValueKey('${data.month}:tenantUsage:$leaseId:${category.categoryId}'),
          width: 130,
          suffix: category.unit,
          initial: value == null ? '' : numberToInput(value, locale),
          saved: draft != null,
          onCommit: (text) => context.read<SettlementBloc>().add(
            SettlementEvent.tenantUsageChanged(
              leaseId: leaseId,
              categoryId: category.categoryId,
              usage: parseNumber(text),
            ),
          ),
        ),
      ],
    );
  }
}
