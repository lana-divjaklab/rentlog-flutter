import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';

UtilityRow utilityRow({
  AllocationType allocationType = AllocationType.manual,
  int? amountCents,
  String? chargeId = 'charge1',
  int? totalBillCents,
  double? totalUsage,
  double? tenantUsage,
  int? ruleFixedAmountCents,
  double? rulePercentage,
  int? ruleDeductionCents,
}) => UtilityRow(
  categoryId: 'cat1',
  categoryName: 'Elektrika',
  unit: 'kWh',
  usesMeter: false,
  allocationType: allocationType,
  amountCents: amountCents,
  chargeId: chargeId,
  totalBillCents: totalBillCents,
  totalUsage: totalUsage,
  tenantUsage: tenantUsage,
  ruleFixedAmountCents: ruleFixedAmountCents,
  rulePercentage: rulePercentage,
  ruleDeductionCents: ruleDeductionCents,
  dueDate: '2026-10-31',
);
