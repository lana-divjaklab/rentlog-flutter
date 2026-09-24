import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:rentlog/core/theme/app_theme.dart';
import 'package:rentlog/l10n/l10n.dart';

/// Pumps [child] in the app's theme and localisations at a small phone's
/// size, where cramped rows overflow first.
Future<void> pumpOnPhone(
  WidgetTester tester,
  Widget child, {
  String locale = 'sl',
}) async {
  await initializeDateFormatting();
  tester.view
    ..physicalSize = const Size(375, 812)
    ..devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  await tester.pumpWidget(
    MaterialApp(
      theme: AppTheme.dark,
      locale: Locale(locale),
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: child,
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
}
