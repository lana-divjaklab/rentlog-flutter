import 'package:flutter/material.dart';
import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/l10n/l10n.dart';

/// Colour on a 15% tint of itself, as the web's `Badge`.
class RlBadge extends StatelessWidget {
  const RlBadge({required this.label, required this.color, super.key});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: BoxDecoration(
      color: AppColors.tint(color),
      borderRadius: BorderRadius.circular(AppRadius.sm),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}

class StatusBadge extends StatelessWidget {
  const StatusBadge(this.status, {super.key});

  final ChargeStatus status;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return switch (status) {
      ChargeStatus.paid => RlBadge(label: l10n.statusPaid, color: AppColors.success),
      ChargeStatus.overdue => RlBadge(
        label: l10n.statusOverdue,
        color: AppColors.destructive,
      ),
      ChargeStatus.due => RlBadge(label: l10n.statusDue, color: AppColors.warning),
    };
  }
}

/// Paid only when everything is; overdue when anything is; otherwise due.
ChargeStatus? combinedStatus(Iterable<ChargeStatus?> statuses) {
  final known = statuses.whereType<ChargeStatus>().toList();
  if (known.isEmpty) return null;
  if (known.contains(ChargeStatus.overdue)) return ChargeStatus.overdue;
  if (known.every((s) => s == ChargeStatus.paid)) return ChargeStatus.paid;
  return ChargeStatus.due;
}
