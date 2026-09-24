import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:rentlog/core/bloc/load_state.dart';
import 'package:rentlog/core/bloc/loader_bloc.dart';
import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/core/theme/app_theme.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';
import 'package:rentlog/features/landlord/view/landlord_overview_screen.dart';
import 'package:rentlog/features/landlord/view/leases_screen.dart';
import 'package:rentlog/l10n/l10n.dart';

class _MockLoader<T> extends MockBloc<LoaderEvent, LoadState<T>>
    implements LoaderBloc<T>;

Future<void> _pumpScreen<T>(WidgetTester tester, T data, Widget screen) async {
  await initializeDateFormatting();
  tester.view
    ..physicalSize = const Size(375, 812)
    ..devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  final bloc = _MockLoader<T>();
  whenListen(
    bloc,
    Stream<LoadState<T>>.empty(),
    initialState: LoadState<T>.success(data),
  );
  await tester.pumpWidget(
    MaterialApp(
      theme: AppTheme.dark,
      locale: const Locale('sl'),
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: BlocProvider<LoaderBloc<T>>.value(value: bloc, child: screen),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('overview fits a small phone with large amounts', (tester) async {
    await _pumpScreen(
      tester,
      const DashboardOverview(
        month: '2026-09',
        year: 2026,
        money: DashboardMoney(
          rentCollectedThisMonthCents: 1234567,
          utilitiesCollectedThisMonthCents: 98765,
          rentCollectedYearCents: 9876543,
          utilitiesCollectedYearCents: 876543,
          overdueAmountCents: 123456,
          overdueCount: 3,
          dueAmountCents: 50000,
          dueCount: 1,
          expectedMonthlyRentCents: 1500000,
        ),
        attention: [
          AttentionItem(
            chargeId: 'c1',
            leaseId: 'l1',
            tenantName: 'Ana Novak Kovačič',
            description: 'Najemnina September 2026',
            amountCents: 85000,
            dueDate: '2026-09-15',
            status: ChargeStatus.overdue,
            type: ChargeType.rent,
          ),
        ],
        leases: [
          DashboardLease(
            leaseId: 'l1',
            tenantName: 'Ana Novak Kovačič',
            propertyName: 'Hiša na Rožniku',
            unitName: 'Nadstropje',
            rentAmountCents: 85000,
            overdueCount: 1,
            overdueAmountCents: 85000,
          ),
        ],
      ),
      const LandlordOverviewScreen(),
    );
    expect(find.text('Zahteva pozornost'), findsOneWidget);
  });

  testWidgets('leases list fits a small phone', (tester) async {
    await _pumpScreen(tester, const [
      LeaseSummary(
        id: 'l1',
        unitName: 'Nadstropje',
        propertyName: 'Hiša na Rožniku',
        tenantName: 'Ana Novak Kovačič',
        startDate: '2025-01-01',
        status: LeaseStatus.active,
        rentAmountCents: 85000,
        unpaidTotalCents: 93334,
        overdueCount: 1,
      ),
    ], const LeasesScreen());
    expect(find.text('Aktivna'), findsOneWidget);
  });
}
