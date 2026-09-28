import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:rentlog/core/bloc/load_state.dart';
import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/core/theme/app_theme.dart';
import 'package:rentlog/features/settlement/bloc/settlement_bloc.dart';
import 'package:rentlog/features/settlement/view/widgets/bills_step.dart';
import 'package:rentlog/features/settlement/view/widgets/meters_step.dart';
import 'package:rentlog/features/settlement/view/widgets/review_step.dart';
import 'package:rentlog/l10n/l10n.dart';

import '../features/settlement/settlement_fixtures.dart';

class _MockSettlementBloc extends MockBloc<SettlementEvent, SettlementState>
    implements SettlementBloc;

void main() {
  // Long names, big numbers: the cramped case.
  final data = settlement(
    readings: [
      reading(month, 123456.78),
      reading('2026-07', 123000.5),
      reading(month, 98765.4, leaseId: 'leaseA'),
      reading('2026-07', 98700.1, leaseId: 'leaseA'),
    ],
    leaseMonths: {
      'leaseA': leaseMonth([
        row(categoryId: 'water', type: AllocationType.consumption, usesMeter: true, amountCents: 123456, tenantUsage: 65.3, totalBillCents: 999999),
        row(categoryId: 'Ogrevanje in topla voda', type: AllocationType.consumption, amountCents: 4500, tenantUsage: 12, totalBillCents: 20000),
        row(categoryId: 'Garaža in parkirno mesto', type: AllocationType.manual, amountCents: 2500),
      ]),
      'leaseB': leaseMonth([
        row(categoryId: 'water', type: AllocationType.consumption, usesMeter: true, amountCents: 900, publishedAt: 1),
      ]),
    },
  );

  Future<void> pump(WidgetTester tester, Widget step) async {
    await initializeDateFormatting();
    tester.view
      ..physicalSize = const Size(375, 812)
      ..devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final bloc = _MockSettlementBloc();
    whenListen(
      bloc,
      const Stream<SettlementState>.empty(),
      initialState: SettlementState(month: month, data: LoadState.success(data)),
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
        home: Scaffold(
          body: BlocProvider<SettlementBloc>.value(value: bloc, child: step),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  testWidgets('meters step fits a small phone', (tester) async {
    await pump(tester, MetersStep(data: data));
    expect(find.text('Glavni števec'), findsOneWidget);
    expect(find.text('Stanovanje A'), findsOneWidget);
  });

  testWidgets('bills step fits a small phone', (tester) async {
    await pump(tester, BillsStep(data: data));
    expect(find.text('Skupni račun'), findsWidgets);
  });

  testWidgets('review step fits a small phone', (tester) async {
    await pump(tester, ReviewStep(data: data));
    expect(find.text('Ana Novak'), findsOneWidget);
    expect(find.text('Objavljeno'), findsOneWidget);
    expect(find.text('Osnutek'), findsOneWidget);
  });
}
