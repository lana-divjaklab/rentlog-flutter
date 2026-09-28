import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';
import 'package:rentlog/features/settlement/data/settlement_models.dart';
import 'package:rentlog/features/settlement/domain/settlement_logic.dart';

const month = '2026-08';
const water = MeteredUtility(id: 'water', name: 'Voda', unit: 'm3');
const leaseA = PropertyLease(id: 'leaseA', tenantName: 'Ana Novak', unitName: 'Stanovanje A');
const leaseB = PropertyLease(id: 'leaseB', tenantName: 'Bor Kos', unitName: 'Stanovanje B');

MeterReadingEntry reading(
  String month,
  double value, {
  String? leaseId,
  double? calculatedUsage,
}) => MeterReadingEntry(
  categoryId: 'water',
  consumptionMonth: month,
  scope: leaseId == null ? ReadingScope.property : ReadingScope.lease,
  leaseId: leaseId,
  reading: value,
  calculatedUsage: calculatedUsage,
);

UtilityRow row({
  required String categoryId,
  required AllocationType type,
  bool usesMeter = false,
  int? amountCents,
  double? tenantUsage,
  int? totalBillCents,
  int? publishedAt,
}) => UtilityRow(
  categoryId: categoryId,
  categoryName: categoryId,
  unit: 'm3',
  usesMeter: usesMeter,
  allocationType: type,
  amountCents: amountCents,
  chargeId: amountCents == null ? null : 'charge-$categoryId',
  tenantUsage: tenantUsage,
  totalBillCents: totalBillCents,
  dueDate: '2026-09-30',
  publishedAt: publishedAt,
);

LeaseMonth leaseMonth(List<UtilityRow> utilities) => LeaseMonth(
  month: month,
  utilityBalance: const UtilityBalance(
    grossCents: 0,
    openingBalanceCents: 0,
    appliedCreditCents: 0,
    netCents: 0,
    closingBalanceCents: 0,
  ),
  rent: const RentRow(amountCents: 50000, dueDate: '2026-08-15'),
  utilities: utilities,
);

SettlementMonth settlement({
  List<MeterReadingEntry> readings = const [],
  Map<String, LeaseMonth?>? leaseMonths,
}) => SettlementMonth(
  month: month,
  meters: PropertyMeters(
    categories: const [water],
    leases: const [leaseA, leaseB],
    readings: readings,
  ),
  leaseMonths: leaseMonths ??
      {
        'leaseA': leaseMonth([row(categoryId: 'water', type: AllocationType.consumption, usesMeter: true)]),
        'leaseB': leaseMonth([row(categoryId: 'water', type: AllocationType.consumption, usesMeter: true)]),
      },
);
