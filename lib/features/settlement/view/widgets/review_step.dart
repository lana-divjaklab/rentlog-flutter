import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentlog/core/format/dates.dart';
import 'package:rentlog/core/format/money.dart';
import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/core/widgets/load_state_view.dart';
import 'package:rentlog/core/widgets/money_text.dart';
import 'package:rentlog/core/widgets/rl_card.dart';
import 'package:rentlog/core/widgets/status_badge.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';
import 'package:rentlog/features/settlement/bloc/settlement_bloc.dart';
import 'package:rentlog/features/settlement/data/settlement_models.dart';
import 'package:rentlog/features/settlement/domain/settlement_logic.dart';
import 'package:rentlog/features/settlement/view/widgets/commit_field.dart';
import 'package:rentlog/l10n/l10n.dart';

class ReviewStep extends StatelessWidget {
  const ReviewStep({required this.data, super.key});

  final SettlementMonth data;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context).languageCode;
    final calculating = context.select<SettlementBloc, bool>(
      (b) => b.state.calculating,
    );
    if (data.leases.isEmpty) {
      return EmptyState(
        icon: Icons.people_outline,
        message: l10n.noActiveLeasesOnProperty,
      );
    }
    final allDone = reviewStatus(data) == StepStatus.done;
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      children: [
        if (calculating)
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                const SizedBox.square(
                  dimension: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
                const SizedBox(width: 10),
                Text(l10n.calculating, style: const TextStyle(color: AppColors.muted)),
              ],
            ),
          )
        else if (allDone)
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                const Icon(Icons.check_circle, size: 18, color: AppColors.success),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    l10n.allPublished(monthLabelLong(data.month, locale)),
                    style: const TextStyle(color: AppColors.success),
                  ),
                ),
              ],
            ),
          ),
        for (final lease in data.leases) ...[
          _TenantCard(
            data: data,
            lease: lease,
            month: data.leaseMonths[lease.id],
          ),
          const SizedBox(height: 12),
        ],
      ],
    );
  }
}

class _TenantCard extends StatelessWidget {
  const _TenantCard({required this.data, required this.lease, required this.month});

  final SettlementMonth data;
  final PropertyLease lease;
  final LeaseMonth? month;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context).languageCode;
    final leaseMonth = month;
    final published = leaseMonth != null && isPublished(leaseMonth);

    return RlCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: AppColors.tint(AppColors.primary),
                child: Text(
                  lease.tenantName.isEmpty ? '?' : lease.tenantName[0].toUpperCase(),
                  style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(lease.tenantName, style: const TextStyle(fontWeight: FontWeight.w600)),
                    Text(lease.unitName, style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
              ),
              if (leaseMonth != null)
                RlBadge(
                  label: published ? l10n.published : l10n.draft,
                  color: published ? AppColors.success : AppColors.warning,
                ),
            ],
          ),
          const SizedBox(height: 12),
          if (leaseMonth == null)
            Text(l10n.monthNotInLease, style: Theme.of(context).textTheme.bodySmall)
          else if (leaseMonth.utilities.isEmpty)
            Text(l10n.noRules, style: Theme.of(context).textTheme.bodySmall)
          else ...[
            for (final row in leaseMonth.utilities)
              if (row.allocationType == AllocationType.manual)
                _ManualRow(month: data.month, leaseId: lease.id, row: row)
              else
                _CostRow(row: row),
            const Divider(height: 20),
            _TotalsRow(
              label: l10n.total,
              cents: leaseMonth.utilityBalance.grossCents,
              bold: leaseMonth.utilityBalance.appliedCreditCents == 0,
            ),
            if (leaseMonth.utilityBalance.appliedCreditCents != 0) ...[
              _TotalsRow(
                label: leaseMonth.utilityBalance.appliedCreditCents > 0
                    ? l10n.creditCarried(monthLabelLong(previousMonthKey(data.month), locale))
                    : l10n.debtCarried(monthLabelLong(previousMonthKey(data.month), locale)),
                // A credit comes off the bill, so it reads negative.
                cents: -leaseMonth.utilityBalance.appliedCreditCents,
                muted: true,
              ),
              _TotalsRow(
                label: l10n.payableTotal,
                cents: leaseMonth.utilityBalance.netCents,
                bold: true,
              ),
            ],
          ],
        ],
      ),
    );
  }
}

class _CostRow extends StatelessWidget {
  const _CostRow({required this.row});

  final UtilityRow row;

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    final usage = row.tenantUsage;
    final waitingForBill = row.totalBillCents == null &&
        row.allocationType != AllocationType.fixed;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(row.categoryName),
                if (row.allocationType == AllocationType.consumption && usage != null)
                  Text(
                    '${formatUsage(usage, locale)} ${row.unit}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
              ],
            ),
          ),
          if (waitingForBill)
            const Text('—', style: TextStyle(color: AppColors.muted))
          else
            MoneyText(row.amountCents ?? 0, style: const TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}

class _ManualRow extends StatelessWidget {
  const _ManualRow({required this.month, required this.leaseId, required this.row});

  final String month;
  final String leaseId;
  final UtilityRow row;

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Expanded(child: Text(row.categoryName)),
          CommitField(
            key: ValueKey('$month:manual:$leaseId:${row.categoryId}'),
            width: 130,
            suffix: '€',
            initial: row.amountCents == null ? '' : centsToInput(row.amountCents!, locale),
            onCommit: (text) {
              final cents = parseEurosToCents(text);
              if (cents == null || cents < 0) return;
              context.read<SettlementBloc>().add(
                SettlementEvent.manualAmountCommitted(
                  leaseId: leaseId,
                  categoryId: row.categoryId,
                  amountCents: cents,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _TotalsRow extends StatelessWidget {
  const _TotalsRow({
    required this.label,
    required this.cents,
    this.bold = false,
    this.muted = false,
  });

  final String label;
  final int cents;
  final bool bold;
  final bool muted;

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontWeight: bold ? FontWeight.w700 : FontWeight.w500,
      color: muted ? AppColors.muted : AppColors.foreground,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          Expanded(child: Text(label, style: style)),
          MoneyText(cents, style: style),
        ],
      ),
    );
  }
}
