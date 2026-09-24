import 'package:flutter/material.dart';
import 'package:rentlog/core/format/dates.dart';
import 'package:rentlog/core/format/money.dart';
import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/core/widgets/money_text.dart';
import 'package:rentlog/core/widgets/rl_card.dart';
import 'package:rentlog/core/widgets/status_badge.dart';
import 'package:rentlog/features/tenant/data/tenant_models.dart';
import 'package:rentlog/l10n/l10n.dart';

/// One month of the tenant's history: rent, the month's costs, any
/// carry-over and what is left to pay. Port of `MonthSection` in the web
/// app's src/features/tenant/TenantHomePage.tsx.
class TenantMonthCard extends StatefulWidget {
  const TenantMonthCard({
    required this.month,
    required this.utilityDueOffsetMonths,
    required this.utilityDueDay,
    this.highlighted = false,
    super.key,
  });

  final TenantMonth month;
  final int utilityDueOffsetMonths;
  final Object utilityDueDay;

  /// Opened from a push about this month.
  final bool highlighted;

  @override
  State<TenantMonthCard> createState() => _TenantMonthCardState();
}

class _TenantMonthCardState extends State<TenantMonthCard> {
  late bool _open = widget.highlighted || !_isPastFullyPaid;

  TenantMonth get _month => widget.month;

  ChargeStatus? get _utilitiesStatus =>
      combinedStatus(_month.utilities.map((u) => u.status));

  ChargeStatus? get _monthStatus =>
      combinedStatus([_month.rent?.status, _utilitiesStatus]);

  /// Settled months in the past start folded, as on the web.
  bool get _isPastFullyPaid =>
      _monthStatus == ChargeStatus.paid &&
      _month.month.compareTo(currentMonthKey()) < 0;

  @override
  void initState() {
    super.initState();
    if (widget.highlighted) _scrollIntoView();
  }

  @override
  void didUpdateWidget(TenantMonthCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.highlighted && !oldWidget.highlighted) {
      _open = true;
      _scrollIntoView();
    }
  }

  void _scrollIntoView() => WidgetsBinding.instance.addPostFrameCallback((_) {
    if (!mounted) return;
    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 300),
      alignment: 0.1,
    );
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context).languageCode;
    final today = todayIso();
    final rent = _month.rent;
    final utilities = _month.utilities;
    final utilitiesTotal = utilities.fold<int>(0, (sum, u) => sum + u.amountCents);
    final credit = _month.utilityCreditCents;
    final carriedFrom = monthLabelLong(previousMonthKey(_month.month), locale);

    final rentDelay = rent == null
        ? null
        : paymentDelayDays(
            dueDate: rent.dueDate,
            paidAt: rent.paidAt,
            paid: rent.status == ChargeStatus.paid,
            today: today,
          );
    final utilityDue = utilityDueDateForPeriod(
      _month.month,
      widget.utilityDueOffsetMonths,
      widget.utilityDueDay,
    );
    final utilitiesDelay = utilities
        .map(
          (u) => paymentDelayDays(
            dueDate: utilityDue,
            paidAt: u.paidAt,
            paid: u.paidAt != null,
            today: today,
          ),
        )
        .whereType<int>()
        .fold<int?>(null, (max, d) => max == null || d > max ? d : max);

    final overdue = _monthStatus == ChargeStatus.overdue;

    return RlCard(
      padding: EdgeInsets.zero,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: overdue
              ? const Border(left: BorderSide(color: AppColors.destructive, width: 3))
              : null,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: () => setState(() => _open = !_open),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
                child: Row(
                  children: [
                    AnimatedRotation(
                      turns: _open ? 0 : -0.25,
                      duration: const Duration(milliseconds: 150),
                      child: const Icon(Icons.expand_more, size: 20, color: AppColors.muted),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Wrap(
                        spacing: 8,
                        runSpacing: 4,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text(
                            monthLabelLong(_month.month, locale),
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                          if (_monthStatus != null) StatusBadge(_monthStatus!),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        MoneyText(
                          _month.payableCents,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.muted,
                          ),
                        ),
                        if (rentDelay != null) _DelayText(l10n.delayRent(rentDelay)),
                        if (utilitiesDelay != null)
                          _DelayText(l10n.delayUtilities(utilitiesDelay)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            if (_open) ...[
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (rent != null) _ChargeLine(charge: rent, label: l10n.rent),
                    if (utilities.isNotEmpty) ...[
                      Padding(
                        padding: const EdgeInsets.only(top: 12, bottom: 4),
                        child: Text(
                          l10n.costsForMonth(monthLabelLong(_month.month, locale)),
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                      for (final u in utilities) _ChargeLine(charge: u),
                      const Divider(),
                      _TotalRow(
                        label: l10n.total,
                        cents: utilitiesTotal,
                        badge: _utilitiesStatus,
                      ),
                      if (credit != 0) ...[
                        _PlainRow(
                          label: credit > 0
                              ? l10n.creditCarried(carriedFrom)
                              : l10n.debtCarried(carriedFrom),
                          // A credit comes off the bill, so it reads negative.
                          cents: -credit,
                        ),
                        _TotalRow(
                          label: l10n.payableTotal,
                          cents: utilitiesTotal - credit,
                        ),
                      ],
                    ],
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _ChargeLine extends StatelessWidget {
  const _ChargeLine({required this.charge, this.label});

  final TenantCharge charge;
  final String? label;

  // Strips the "(September 2026)" suffix descriptions carry on the web.
  static final _periodSuffix = RegExp(r'\s*\([^)]*\d{4}\)\s*$');

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context).languageCode;
    final isUtility = charge.type == ChargeType.utility;
    final breakdown = charge.breakdown;

    final details = <String>[
      if (charge.paidAt != null)
        l10n.paidOn(formatDate(charge.paidAt!, locale))
      else if (!isUtility)
        l10n.dueOn(formatDate(charge.dueDate, locale)),
      if (breakdown != null && breakdown.tenantUsage > 0)
        '${formatUsage(breakdown.tenantUsage, locale)} / ${formatUsage(breakdown.totalUsage, locale)} ${breakdown.unit}',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label ?? charge.description.replaceFirst(_periodSuffix, '').trim(),
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                if (details.isNotEmpty)
                  Text(
                    details.join(' · '),
                    style: TextStyle(
                      fontSize: 12,
                      color: charge.paidAt != null ? AppColors.success : AppColors.muted,
                    ),
                  ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MoneyText(
                charge.amountCents,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              if (!isUtility) ...[
                const SizedBox(height: 4),
                StatusBadge(charge.status),
              ],
            ],
          ),
        ],
      ),
    );
  }
}

class _TotalRow extends StatelessWidget {
  const _TotalRow({required this.label, required this.cents, this.badge});

  final String label;
  final int cents;
  final ChargeStatus? badge;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Row(
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
        if (badge != null) ...[const SizedBox(width: 8), StatusBadge(badge!)],
        const Spacer(),
        MoneyText(cents, style: const TextStyle(fontWeight: FontWeight.w600)),
      ],
    ),
  );
}

class _PlainRow extends StatelessWidget {
  const _PlainRow({required this.label, required this.cents});

  final String label;
  final int cents;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Row(
      children: [
        Expanded(
          child: Text(label, style: const TextStyle(color: AppColors.muted)),
        ),
        MoneyText(cents, style: const TextStyle(color: AppColors.muted)),
      ],
    ),
  );
}

class _DelayText extends StatelessWidget {
  const _DelayText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Text(
    text,
    style: const TextStyle(fontSize: 11, color: AppColors.destructive),
  );
}
