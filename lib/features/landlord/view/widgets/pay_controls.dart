import 'package:flutter/material.dart';
import 'package:rentlog/core/format/dates.dart';
import 'package:rentlog/core/format/money.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/core/theme/app_theme.dart';
import 'package:rentlog/l10n/l10n.dart';

Future<String?> pickPaymentDate(BuildContext context, String initial) async {
  final picked = await showDatePicker(
    context: context,
    initialDate: parseIsoDate(initial),
    firstDate: DateTime(2000),
    lastDate: DateTime.now().add(const Duration(days: 365)),
    helpText: context.l10n.paymentDate,
  );
  return picked == null ? null : toIsoDate(picked);
}

/// A tappable date, showing the payment date that will be recorded.
class PaymentDateButton extends StatelessWidget {
  const PaymentDateButton({
    required this.date,
    required this.onChanged,
    super.key,
  });

  final String date;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        visualDensity: VisualDensity.compact,
      ),
      icon: const Icon(Icons.event_outlined, size: 16),
      label: Text(formatDate(date, locale), style: const TextStyle(fontSize: 13)),
      onPressed: () async {
        final picked = await pickPaymentDate(context, date);
        if (picked != null) onChanged(picked);
      },
    );
  }
}

/// "Paid 24. 9. 2026 · 100,00 €" with an undo button.
class PaidLine extends StatelessWidget {
  const PaidLine({
    required this.paidAt,
    required this.onUndo,
    this.amountCents,
    this.busy = false,
    super.key,
  });

  final String? paidAt;
  final int? amountCents;
  final VoidCallback onUndo;
  final bool busy;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context).languageCode;
    final parts = [
      if (paidAt != null) l10n.paidOn(formatDate(paidAt!, locale)) else l10n.statusPaid,
      if (amountCents != null) formatMoney(amountCents!, locale),
    ];
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Text(
            parts.join(' · '),
            style: const TextStyle(
              color: AppColors.success,
              fontSize: 13,
              fontFeatures: AppTheme.tabular,
            ),
          ),
        ),
        IconButton(
          tooltip: l10n.undoPayment,
          visualDensity: VisualDensity.compact,
          icon: const Icon(Icons.undo, size: 18),
          onPressed: busy ? null : onUndo,
        ),
      ],
    );
  }
}

/// A compact euro field for amounts inside a card.
class EuroField extends StatelessWidget {
  const EuroField({
    required this.controller,
    this.width = 96,
    this.onChanged,
    this.label,
    super.key,
  });

  final TextEditingController controller;
  final double width;
  final ValueChanged<String>? onChanged;
  final String? label;

  @override
  Widget build(BuildContext context) => SizedBox(
    width: width,
    child: TextField(
      controller: controller,
      onChanged: onChanged,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      textAlign: TextAlign.right,
      style: const TextStyle(fontFeatures: AppTheme.tabular),
      decoration: InputDecoration(
        labelText: label,
        suffixText: '€',
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      ),
    ),
  );
}
