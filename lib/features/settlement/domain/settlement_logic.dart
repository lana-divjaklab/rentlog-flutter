import 'package:rentlog/core/format/dates.dart';
import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';
import 'package:rentlog/features/landlord/data/landlord_repository.dart';
import 'package:rentlog/features/settlement/data/settlement_models.dart';

/// Everything the Mesec screen shows for one property and month, assembled
/// from the meter data and each active lease's month.
class SettlementMonth {
  const SettlementMonth({
    required this.month,
    required this.meters,
    required this.leaseMonths,
  });

  final String month;
  final PropertyMeters meters;

  /// Active lease → its month, or null when the month is outside the lease.
  final Map<String, LeaseMonth?> leaseMonths;

  List<PropertyLease> get leases => meters.leases;

  String get previousMonth => previousMonthKey(month);

  MeterReadingEntry? reading(
    String categoryId,
    String month, {
    String? leaseId,
  }) {
    for (final r in meters.readings) {
      if (r.categoryId == categoryId &&
          r.consumptionMonth == month &&
          (leaseId == null
              ? r.scope == ReadingScope.property
              : r.scope == ReadingScope.lease && r.leaseId == leaseId)) {
        return r;
      }
    }
    return null;
  }

  /// This month's usage on the main meter, or null until both this and last
  /// month's readings exist.
  double? propertyUsage(String categoryId) => usageBetween(
    reading(categoryId, month),
    reading(categoryId, previousMonth),
  );

  double? leaseUsage(String categoryId, String leaseId) => usageBetween(
    reading(categoryId, month, leaseId: leaseId),
    reading(categoryId, previousMonth, leaseId: leaseId),
  );

  /// The costs the property's leases have rules for, one per category, with
  /// each lease's row for it.
  List<BillCategory> get billCategories {
    final byCategory = <String, BillCategory>{};
    for (final entry in leaseMonths.entries) {
      final leaseMonth = entry.value;
      if (leaseMonth == null) continue;
      for (final row in leaseMonth.utilities) {
        final existing = byCategory[row.categoryId];
        byCategory[row.categoryId] = BillCategory(
          categoryId: row.categoryId,
          name: row.categoryName,
          unit: row.unit,
          usesMeter: row.usesMeter,
          totalBillCents: existing?.totalBillCents ?? row.totalBillCents,
          totalUsage: existing?.totalUsage ?? row.totalUsage,
          rows: {...?existing?.rows, entry.key: row},
        );
      }
    }
    return byCategory.values.toList();
  }

  /// The metered utilities worth reading this month: those the leases bill.
  /// A property with no cost rules yet still shows every meter.
  List<MeteredUtility> get meteredUtilities {
    final billed = {
      for (final c in billCategories)
        if (c.usesMeter) c.categoryId,
    };
    if (billed.isEmpty && billCategories.isEmpty) return meters.categories;
    return meters.categories.where((c) => billed.contains(c.id)).toList();
  }
}

class BillCategory {
  const BillCategory({
    required this.categoryId,
    required this.name,
    required this.unit,
    required this.usesMeter,
    required this.totalBillCents,
    required this.totalUsage,
    required this.rows,
  });

  final String categoryId;
  final String name;
  final String unit;
  final bool usesMeter;
  final int? totalBillCents;
  final double? totalUsage;

  /// Lease → that lease's rule and charge for this category.
  final Map<String, UtilityRow> rows;

  /// Some lease splits this cost by usage, so the bill needs a total usage.
  bool get splitsByUsage =>
      rows.values.any((r) => r.allocationType == AllocationType.consumption);

  /// Fixed and manual costs don't depend on the bill, so a category billed
  /// only that way has nothing to enter.
  bool get needsBill => rows.values.any(
    (r) =>
        r.allocationType == AllocationType.consumption ||
        r.allocationType == AllocationType.percentage ||
        r.allocationType == AllocationType.billMinusFixed,
  );

  bool get entered => (totalBillCents ?? 0) > 0;
}

/// Usage from two consecutive end-of-month readings. The server's own
/// calculation wins when it has one.
double? usageBetween(MeterReadingEntry? current, MeterReadingEntry? previous) {
  if (current == null) return null;
  if (current.calculatedUsage != null) return current.calculatedUsage;
  if (previous == null) return null;
  final delta = current.reading - previous.reading;
  return delta >= 0 ? delta : null;
}

enum StepStatus { empty, partial, done }

StepStatus _status(int filled, int total) {
  if (total == 0 || filled >= total) return StepStatus.done;
  if (filled == 0) return StepStatus.empty;
  return StepStatus.partial;
}

/// Every main meter and unit meter read this month.
StepStatus metersStatus(SettlementMonth data) {
  var filled = 0;
  var total = 0;
  for (final utility in data.meteredUtilities) {
    total += 1 + data.leases.length;
    if (data.reading(utility.id, data.month) != null) filled += 1;
    for (final lease in data.leases) {
      if (data.reading(utility.id, data.month, leaseId: lease.id) != null) {
        filled += 1;
      }
    }
  }
  return _status(filled, total);
}

/// Only bills that feed a calculation count.
StepStatus billsStatus(SettlementMonth data) {
  final categories = data.billCategories.where((c) => c.needsBill).toList();
  return _status(categories.where((c) => c.entered).length, categories.length);
}

/// A lease's month counts as published once every real cost on it is.
bool isPublished(LeaseMonth month) {
  final charged = month.utilities
      .where((u) => u.chargeId != null && (u.amountCents ?? 0) > 0)
      .toList();
  return charged.isNotEmpty && charged.every((u) => u.publishedAt != null);
}

StepStatus reviewStatus(SettlementMonth data) {
  final months = data.leaseMonths.values.whereType<LeaseMonth>().toList();
  return _status(months.where(isPublished).length, months.length);
}

String draftKey(String leaseId, String categoryId) => '$leaseId:$categoryId';

/// What `generateForLeaseMonth` gets for one lease.
///
/// It must be complete: the server treats a consumption rule without usage,
/// or a manual rule without an amount, as zero — and deletes the charge.
/// So every such rule carries meter usage, a typed value, or what is stored.
List<UtilityEntry> entriesFor({
  required SettlementMonth data,
  required String leaseId,
  required LeaseMonth month,
  required Map<String, double> usageDrafts,
  required Map<String, int> manualDrafts,
}) => [
  for (final row in month.utilities)
    switch (row.allocationType) {
      AllocationType.consumption => UtilityEntry(
        categoryId: row.categoryId,
        tenantUsage: row.usesMeter
            ? data.leaseUsage(row.categoryId, leaseId) ?? row.tenantUsage
            : usageDrafts[draftKey(leaseId, row.categoryId)] ?? row.tenantUsage,
      ),
      AllocationType.manual => UtilityEntry(
        categoryId: row.categoryId,
        manualAmountCents:
            manualDrafts[draftKey(leaseId, row.categoryId)] ?? row.amountCents,
      ),
      _ => UtilityEntry(categoryId: row.categoryId),
    },
];
