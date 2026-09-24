import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentlog/core/format/dates.dart';
import 'package:rentlog/core/format/money.dart';
import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/core/widgets/money_text.dart';
import 'package:rentlog/core/widgets/rl_card.dart';
import 'package:rentlog/core/widgets/status_badge.dart';
import 'package:rentlog/features/landlord/bloc/lease_detail_bloc.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';
import 'package:rentlog/features/landlord/data/landlord_repository.dart';
import 'package:rentlog/features/landlord/domain/utility_preview.dart';
import 'package:rentlog/features/landlord/view/widgets/pay_controls.dart';
import 'package:rentlog/l10n/l10n.dart';

/// One month of a lease for the landlord: rent, per-category costs,
/// carry-over, and paying/publishing. Port of `MonthCard` in the web app's
/// LeaseDetailPage.tsx.
class LeaseMonthCard extends StatefulWidget {
  const LeaseMonthCard({required this.month, required this.busy, super.key});

  final LeaseMonth month;

  /// An action for this month is running.
  final bool busy;

  @override
  State<LeaseMonthCard> createState() => _LeaseMonthCardState();
}

class _LeaseMonthCardState extends State<LeaseMonthCard> {
  late bool _open = widget.month.month == currentMonthKey();

  final _rent = TextEditingController();
  final _paidAmount = TextEditingController();
  final Map<String, TextEditingController> _drafts = {};
  String _rentDate = todayIso();
  String _utilitiesDate = todayIso();

  /// What the controllers were last filled from; see [didUpdateWidget].
  String? _syncedKey;
  bool _paidAmountTouched = false;

  LeaseMonth get _m => widget.month;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _sync();
  }

  @override
  void didUpdateWidget(LeaseMonthCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    _sync();
  }

  /// Refill the fields when the server's numbers change (after a save,
  /// or a bill entered on the web), but never while the user is typing
  /// over unchanged data — same idea as `monthDraftKey` on the web.
  void _sync() {
    final key = [
      _m.rent.amountCents,
      _m.utilityBalance.netCents,
      for (final u in _m.utilities) '${u.categoryId}:${u.amountCents}:${u.tenantUsage}',
    ].join('|');
    if (key == _syncedKey) return;
    _syncedKey = key;
    final locale = Localizations.localeOf(context).languageCode;
    _rent.text = centsToInput(_m.rent.amountCents, locale);
    for (final row in _m.utilities) {
      (_drafts[row.categoryId] ??= TextEditingController()).text =
          initialDraft(row, locale);
    }
    if (!_paidAmountTouched) {
      _paidAmount.text = centsToInput(_m.utilityBalance.netCents, locale);
    }
  }

  @override
  void dispose() {
    _rent.dispose();
    _paidAmount.dispose();
    for (final c in _drafts.values) {
      c.dispose();
    }
    super.dispose();
  }

  Map<String, String> get _draftTexts => {
    for (final e in _drafts.entries) e.key: e.value.text,
  };

  /// Zero-amount charges are meter-reading placeholders, not real costs.
  List<UtilityRow> get _chargedUtilities =>
      _m.utilities.where((u) => u.chargeId != null && (u.amountCents ?? 0) > 0).toList();

  ChargeStatus? get _utilitiesStatus =>
      combinedStatus(_chargedUtilities.map((u) => u.status));

  bool get _utilitiesPaid => _utilitiesStatus == ChargeStatus.paid;

  List<UtilityEntry> _entries() => [
    for (final row in _m.utilities)
      switch (row.allocationType) {
        AllocationType.consumption => UtilityEntry(
          categoryId: row.categoryId,
          tenantUsage: parseNumber(_drafts[row.categoryId]?.text ?? ''),
        ),
        AllocationType.manual => UtilityEntry(
          categoryId: row.categoryId,
          manualAmountCents: parseEurosToCents(_drafts[row.categoryId]?.text ?? ''),
        ),
        _ => UtilityEntry(categoryId: row.categoryId),
      },
  ];

  LeaseDetailBloc get _bloc => context.read<LeaseDetailBloc>();

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    final rent = _m.rent;
    final monthTotal =
        (rent.chargeId != null ? rent.amountCents : 0) +
        _m.utilities.fold<int>(0, (sum, u) => sum + (u.amountCents ?? 0));
    final monthStatus = combinedStatus([
      if (rent.chargeId != null) rent.status,
      _utilitiesStatus,
    ]);
    final charges = [
      if (rent.chargeId != null) rent.publishedAt,
      for (final u in _m.utilities.where((u) => u.chargeId != null)) u.publishedAt,
    ];
    final allPublished = charges.isNotEmpty && charges.every((p) => p != null);

    return RlCard(
      padding: EdgeInsets.zero,
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
                          monthLabelLong(_m.month, locale),
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        if (monthStatus != null) StatusBadge(monthStatus),
                        if (allPublished)
                          RlBadge(label: context.l10n.published, color: AppColors.primary),
                      ],
                    ),
                  ),
                  MoneyText(
                    monthTotal,
                    style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.muted),
                  ),
                ],
              ),
            ),
          ),
          if (_open) ...[
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _rentSection(context),
                  const SizedBox(height: 16),
                  if (_m.utilities.isEmpty)
                    Text(context.l10n.noRules, style: Theme.of(context).textTheme.bodySmall)
                  else
                    _utilitiesSection(context, allPublished),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _rentSection(BuildContext context) {
    final l10n = context.l10n;
    final rent = _m.rent;
    final paid = rent.status == ChargeStatus.paid;
    return _Section(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: _LabelWithBadge(label: l10n.rent, status: rent.status),
              ),
              const SizedBox(width: 8),
              EuroField(controller: _rent),
            ],
          ),
          const SizedBox(height: 10),
          Wrap(
            alignment: WrapAlignment.end,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 8,
            runSpacing: 8,
            children: [
              if (paid && rent.chargeId != null)
                PaidLine(
                  paidAt: rent.paidAt,
                  busy: widget.busy,
                  onUndo: () => _bloc.add(
                    LeaseDetailEvent.rentUnpaid(chargeId: rent.chargeId!),
                  ),
                )
              else ...[
                OutlinedButton(
                  onPressed: widget.busy
                      ? null
                      : () => _bloc.add(
                          LeaseDetailEvent.rentSaved(
                            month: _m.month,
                            amountCents: parseEurosToCents(_rent.text) ?? rent.amountCents,
                          ),
                        ),
                  child: Text(l10n.save),
                ),
                PaymentDateButton(
                  date: _rentDate,
                  onChanged: (d) => setState(() => _rentDate = d),
                ),
                FilledButton(
                  style: FilledButton.styleFrom(minimumSize: const Size(0, 40)),
                  onPressed: widget.busy
                      ? null
                      : () => _bloc.add(
                          LeaseDetailEvent.rentSaved(
                            month: _m.month,
                            amountCents: parseEurosToCents(_rent.text) ?? rent.amountCents,
                            paidAt: _rentDate,
                          ),
                        ),
                  child: Text(l10n.pay),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  Widget _utilitiesSection(BuildContext context, bool allPublished) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context).languageCode;
    final balance = _m.utilityBalance;
    final credit = balance.appliedCreditCents;
    final carriedFrom = monthLabelLong(previousMonthKey(_m.month), locale);
    final dirty = utilitiesDirty(_m.utilities, _draftTexts);
    final hasCharges = _chargedUtilities.isNotEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            l10n.costsForMonth(monthLabelLong(_m.month, locale)),
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
        for (final row in _m.utilities) ...[
          _UtilityRowTile(
            row: row,
            controller: _drafts[row.categoryId]!,
            onChanged: () => setState(() {}),
          ),
          const SizedBox(height: 8),
        ],
        _Section(
          tinted: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                    child: _LabelWithBadge(label: l10n.total, status: _utilitiesStatus),
                  ),
                  const SizedBox(width: 8),
                  MoneyText(balance.grossCents, style: const TextStyle(fontWeight: FontWeight.w600)),
                ],
              ),
              if (credit != 0) ...[
                const SizedBox(height: 6),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        credit > 0
                            ? l10n.creditCarried(carriedFrom)
                            : l10n.debtCarried(carriedFrom),
                        style: const TextStyle(color: AppColors.muted),
                      ),
                    ),
                    // A credit comes off the bill, so it reads negative.
                    MoneyText(-credit, style: const TextStyle(color: AppColors.muted)),
                  ],
                ),
                const Divider(height: 16),
                Row(
                  children: [
                    Text(l10n.payableTotal, style: const TextStyle(fontWeight: FontWeight.w700)),
                    const Spacer(),
                    MoneyText(balance.netCents, style: const TextStyle(fontWeight: FontWeight.w700)),
                  ],
                ),
              ],
              if (hasCharges) ...[
                const SizedBox(height: 10),
                if (_utilitiesPaid)
                  Align(
                    alignment: Alignment.centerRight,
                    child: PaidLine(
                      paidAt: _chargedUtilities
                          .map((u) => u.paidAt)
                          .whereType<String>()
                          .fold<String?>(null, (a, b) => a == null || b.compareTo(a) > 0 ? b : a),
                      amountCents: balance.paidCents,
                      busy: widget.busy,
                      onUndo: () {
                        _paidAmountTouched = false;
                        _bloc.add(LeaseDetailEvent.utilitiesUnpaid(month: _m.month));
                      },
                    ),
                  )
                else
                  _utilitiesPayRow(context),
                if (_utilitiesPaid && balance.closingBalanceCents != 0)
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      balance.closingBalanceCents > 0
                          ? l10n.creditForward(formatMoney(balance.closingBalanceCents, locale))
                          : l10n.debtForward(formatMoney(-balance.closingBalanceCents, locale)),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
              ],
            ],
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: widget.busy || !dirty
                    ? null
                    : () => _bloc.add(
                        LeaseDetailEvent.utilitiesSaved(month: _m.month, entries: _entries()),
                      ),
                child: Text(l10n.saveCosts),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: FilledButton(
                style: FilledButton.styleFrom(minimumSize: const Size(0, 40)),
                onPressed: widget.busy || (allPublished && !dirty)
                    ? null
                    : () => _bloc.add(
                        LeaseDetailEvent.utilitiesSaved(
                          month: _m.month,
                          entries: _entries(),
                          publish: true,
                        ),
                      ),
                child: widget.busy
                    ? const SizedBox.square(
                        dimension: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : Text(l10n.publishMonth),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _utilitiesPayRow(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Wrap(
          alignment: WrapAlignment.end,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 8,
          runSpacing: 8,
          children: [
            PaymentDateButton(
              date: _utilitiesDate,
              onChanged: (d) => setState(() => _utilitiesDate = d),
            ),
            EuroField(
              controller: _paidAmount,
              width: 110,
              label: l10n.paidAmountLabel,
              onChanged: (_) => _paidAmountTouched = true,
            ),
            FilledButton(
              style: FilledButton.styleFrom(minimumSize: const Size(0, 40)),
              onPressed: widget.busy
                  ? null
                  : () {
                      _paidAmountTouched = false;
                      _bloc.add(
                        LeaseDetailEvent.utilitiesPaid(
                          month: _m.month,
                          paidAt: _utilitiesDate,
                          // Blank means "exactly what's owed".
                          paidCents:
                              parseEurosToCents(_paidAmount.text) ??
                              _m.utilityBalance.netCents,
                        ),
                      );
                    },
              child: Text(l10n.pay),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Text(
          l10n.paidAmountHint,
          textAlign: TextAlign.right,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}

class _UtilityRowTile extends StatelessWidget {
  const _UtilityRowTile({
    required this.row,
    required this.controller,
    required this.onChanged,
  });

  final UtilityRow row;
  final TextEditingController controller;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context).languageCode;
    final amount = previewCents(row, controller.text);
    final details = <String>[
      switch (row.allocationType) {
        AllocationType.consumption => l10n.allocationConsumption,
        AllocationType.fixed => l10n.allocationFixed,
        AllocationType.percentage => l10n.allocationPercentage,
        AllocationType.billMinusFixed => l10n.allocationBillMinusFixed,
        AllocationType.manual => l10n.allocationManual,
      },
      if (row.totalBillCents != null)
        '${l10n.billShort}: ${formatMoney(row.totalBillCents!, locale)}',
      if (row.allocationType == AllocationType.consumption && row.totalUsage != null)
        '${l10n.meterUsage}: ${formatUsage(row.totalUsage!, locale)} ${row.unit}',
    ];

    return _Section(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            row.categoryName,
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                        if (row.status == ChargeStatus.paid) ...[
                          const SizedBox(width: 6),
                          const Icon(Icons.check_circle, size: 14, color: AppColors.success),
                        ],
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(details.join(' · '), style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              if (amount != null)
                MoneyText(amount, style: const TextStyle(fontWeight: FontWeight.w600))
              else
                const Text('—', style: TextStyle(color: AppColors.muted)),
            ],
          ),
          if (needsBill(row)) ...[
            const SizedBox(height: 6),
            Text(
              l10n.enterBillHint,
              style: const TextStyle(color: AppColors.warning, fontSize: 12),
            ),
          ],
          if (row.allocationType.isEditable) ...[
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 160,
                child: TextField(
                  controller: controller,
                  onChanged: (_) => onChanged(),
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    labelText: row.allocationType == AllocationType.consumption
                        ? l10n.tenantUsage
                        : l10n.amount,
                    suffixText: row.allocationType == AllocationType.consumption
                        ? row.unit
                        : '€',
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({required this.child, this.tinted = false});

  final Widget child;
  final bool tinted;

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: BoxDecoration(
      color: tinted ? AppColors.elevated.withValues(alpha: 0.5) : null,
      border: Border.all(color: AppColors.border),
      borderRadius: BorderRadius.circular(AppRadius.lg),
    ),
    child: Padding(padding: const EdgeInsets.all(12), child: child),
  );
}

/// A bold label with its status badge, wrapping onto a second line rather
/// than pushing the amount beside it off screen.
class _LabelWithBadge extends StatelessWidget {
  const _LabelWithBadge({required this.label, this.status});

  final String label;
  final ChargeStatus? status;

  @override
  Widget build(BuildContext context) => Wrap(
    spacing: 8,
    runSpacing: 4,
    crossAxisAlignment: WrapCrossAlignment.center,
    children: [
      Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
      if (status != null) StatusBadge(status!),
    ],
  );
}
