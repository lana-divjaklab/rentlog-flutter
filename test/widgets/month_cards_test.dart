import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rentlog/core/format/dates.dart';
import 'package:rentlog/core/models/charge_breakdown.dart';
import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/features/landlord/bloc/lease_detail_bloc.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';
import 'package:rentlog/features/landlord/view/widgets/lease_month_card.dart';
import 'package:rentlog/features/tenant/data/tenant_models.dart';
import 'package:rentlog/features/tenant/view/widgets/tenant_month_card.dart';

import '../helpers/fixtures.dart';
import '../helpers/pump_app.dart';

class _MockLeaseDetailBloc extends MockBloc<LeaseDetailEvent, LeaseDetailState>
    implements LeaseDetailBloc;

void main() {
  final month = currentMonthKey();

  group('TenantMonthCard', () {
    final tenantMonth = TenantMonth(
      month: month,
      totalCents: 58500,
      utilityCreditCents: 666,
      payableCents: 57834,
      rent: TenantCharge(
        id: 'r',
        description: 'Najemnina',
        amountCents: 50000,
        dueDate: '$month-15',
        periodMonth: month,
        status: ChargeStatus.overdue,
        type: ChargeType.rent,
      ),
      utilities: [
        TenantCharge(
          id: 'u',
          description: 'Elektrika in ogrevanje (September 2026)',
          amountCents: 8500,
          dueDate: '$month-28',
          periodMonth: month,
          status: ChargeStatus.due,
          type: ChargeType.utility,
          breakdown: const ChargeBreakdown(
            totalUsage: 1234.5,
            tenantUsage: 456.78,
            unit: 'kWh',
            totalBillCents: 30000,
          ),
        ),
      ],
    );

    testWidgets('lays out a month with a carried credit', (tester) async {
      await pumpOnPhone(
        tester,
        TenantMonthCard(
          month: tenantMonth,
          utilityDueOffsetMonths: 1,
          utilityDueDay: 'endOfMonth',
        ),
      );
      // The current month starts open, showing carry-over and what to pay.
      expect(find.textContaining('Preplačilo iz'), findsOneWidget);
      expect(find.text('Za plačilo'), findsOneWidget);
      // The "(September 2026)" suffix is stripped as on the web.
      expect(find.text('Elektrika in ogrevanje'), findsOneWidget);
    });
  });

  group('LeaseMonthCard', () {
    LeaseMonth leaseMonth({required bool paid}) => LeaseMonth(
      month: month,
      utilityBalance: UtilityBalance(
        grossCents: 9334,
        openingBalanceCents: 666,
        appliedCreditCents: 666,
        netCents: 8668,
        paidCents: paid ? 10000 : null,
        closingBalanceCents: paid ? 1332 : 0,
      ),
      rent: RentRow(
        chargeId: 'rent1',
        amountCents: 50000,
        dueDate: '$month-15',
        status: paid ? ChargeStatus.paid : ChargeStatus.due,
        paidAt: paid ? '$month-14' : null,
      ),
      utilities: [
        utilityRow(amountCents: 5000).copyWith(
          status: paid ? ChargeStatus.paid : ChargeStatus.due,
          paidAt: paid ? '$month-20' : null,
        ),
        utilityRow(
          allocationType: AllocationType.consumption,
          amountCents: 4334,
          totalBillCents: 30000,
          totalUsage: 1234.5,
          tenantUsage: 178.3,
        ).copyWith(
          categoryId: 'cat2',
          categoryName: 'Voda in komunalne storitve',
          status: paid ? ChargeStatus.paid : ChargeStatus.due,
          paidAt: paid ? '$month-20' : null,
        ),
      ],
    );

    Future<void> pump(WidgetTester tester, LeaseMonth m) {
      final bloc = _MockLeaseDetailBloc();
      whenListen(
        bloc,
        const Stream<LeaseDetailState>.empty(),
        initialState: const LeaseDetailState(year: 2026),
      );
      return pumpOnPhone(
        tester,
        BlocProvider<LeaseDetailBloc>.value(
          value: bloc,
          child: LeaseMonthCard(month: m, busy: false),
        ),
      );
    }

    testWidgets('an open month fits a small phone', (tester) async {
      await pump(tester, leaseMonth(paid: false));
      expect(find.text('Za plačilo'), findsOneWidget);
      // Paid amount starts at what's owed after the carried credit.
      expect(find.widgetWithText(TextField, '86,68'), findsOneWidget);
    });

    testWidgets('a settled month shows the transfer and the carry-forward', (
      tester,
    ) async {
      await pump(tester, leaseMonth(paid: true));
      expect(find.textContaining('Preplačilo za naprej'), findsOneWidget);
    });
  });
}
