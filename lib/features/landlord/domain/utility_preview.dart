import 'package:rentlog/core/format/money.dart';
import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';

/// What a utility row will charge, given what the landlord has typed.
/// Port of `previewCents` in the web app's LeaseDetailPage.tsx, so the
/// amount on screen is the one `generateForLeaseMonth` will store.
int? previewCents(UtilityRow row, String draft) {
  switch (row.allocationType) {
    case AllocationType.fixed:
      return row.ruleFixedAmountCents ?? row.amountCents;
    case AllocationType.percentage:
      final bill = row.totalBillCents;
      final percentage = row.rulePercentage;
      if (bill != null && percentage != null) {
        return (percentage / 100 * bill).round();
      }
      return row.amountCents;
    case AllocationType.billMinusFixed:
      final bill = row.totalBillCents;
      final deduction = row.ruleDeductionCents;
      if (bill != null && deduction != null) {
        final amount = bill - deduction;
        return amount < 0 ? 0 : amount;
      }
      return row.amountCents;
    case AllocationType.consumption:
      final usage = parseNumber(draft) ?? row.tenantUsage;
      final totalUsage = row.totalUsage;
      final bill = row.totalBillCents;
      if (usage != null &&
          usage >= 0 &&
          totalUsage != null &&
          totalUsage != 0 &&
          bill != null) {
        return (usage / totalUsage * bill).round();
      }
      return row.amountCents;
    case AllocationType.manual:
      return parseEurosToCents(draft) ?? row.amountCents;
  }
}

/// The value an editable row's field starts with (`buildUtilDrafts`).
String initialDraft(UtilityRow row, String locale) => switch (row.allocationType) {
  AllocationType.consumption =>
    row.tenantUsage == null ? '' : numberToInput(row.tenantUsage!, locale),
  AllocationType.manual =>
    row.amountCents == null ? '' : centsToInput(row.amountCents!, locale),
  _ => '',
};

/// Rules that split a property bill can't be computed until it's entered.
bool needsBill(UtilityRow row) =>
    row.totalBillCents == null &&
    (row.allocationType == AllocationType.consumption ||
        row.allocationType == AllocationType.percentage ||
        row.allocationType == AllocationType.billMinusFixed);

/// True when saving would change something: a row has no charge yet, or
/// what it would charge now differs from what's stored (a bill entered
/// after the charge was generated leaves it stale).
bool utilitiesDirty(List<UtilityRow> rows, Map<String, String> drafts) =>
    rows.any((row) {
      if (row.chargeId == null) return true;
      final preview = previewCents(row, drafts[row.categoryId] ?? '');
      return preview != null && preview != (row.amountCents ?? 0);
    });
