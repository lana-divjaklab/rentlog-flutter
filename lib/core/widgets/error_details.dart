import 'package:flutter/material.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/l10n/l10n.dart';

/// "Show details" under a friendly error message, revealing the technical
/// reason in small selectable text.
class ErrorDetails extends StatefulWidget {
  const ErrorDetails(this.detail, {super.key});

  final String detail;

  @override
  State<ErrorDetails> createState() => _ErrorDetailsState();
}

class _ErrorDetailsState extends State<ErrorDetails> {
  bool _open = false;

  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      TextButton(
        onPressed: () => setState(() => _open = !_open),
        child: Text(
          _open ? context.l10n.hideDetails : context.l10n.showDetails,
          style: const TextStyle(fontSize: 12, color: AppColors.muted),
        ),
      ),
      if (_open)
        SelectableText(
          widget.detail,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 11, color: AppColors.muted),
        ),
    ],
  );
}
