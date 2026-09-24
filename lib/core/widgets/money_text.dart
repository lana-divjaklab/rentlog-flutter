import 'package:flutter/material.dart';
import 'package:rentlog/core/format/money.dart';
import 'package:rentlog/core/theme/app_theme.dart';

/// An amount in tabular figures so columns of money line up.
class MoneyText extends StatelessWidget {
  const MoneyText(this.cents, {this.style, super.key});

  final int cents;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) => Text(
    formatMoney(cents, Localizations.localeOf(context).languageCode),
    style: (style ?? const TextStyle()).copyWith(
      fontFeatures: AppTheme.tabular,
    ),
  );
}
