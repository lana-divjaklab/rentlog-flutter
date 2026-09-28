import 'package:flutter/material.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/core/theme/app_theme.dart';

/// A number field that saves itself: on Done, or when focus leaves it with
/// a changed value. Shows a spinner while saving and a ✓ once saved.
class CommitField extends StatefulWidget {
  const CommitField({
    required this.initial,
    required this.onCommit,
    this.label,
    this.suffix,
    this.saving = false,
    this.saved = false,
    this.width,
    this.large = false,
    this.enabled = true,
    super.key,
  });

  /// What the field shows, formatted; refreshed when the server's value
  /// changes and the field isn't being edited.
  final String initial;

  /// Called with the typed text; the caller parses it.
  final ValueChanged<String> onCommit;
  final String? label;
  final String? suffix;
  final bool saving;
  final bool saved;
  final double? width;

  /// The main reading on a card: bigger type.
  final bool large;
  final bool enabled;

  @override
  State<CommitField> createState() => _CommitFieldState();
}

class _CommitFieldState extends State<CommitField> {
  late final _controller = TextEditingController(text: widget.initial);
  final _focus = FocusNode();

  @override
  void initState() {
    super.initState();
    _focus.addListener(() {
      if (!_focus.hasFocus) _commit();
    });
  }

  @override
  void didUpdateWidget(CommitField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initial != oldWidget.initial && !_focus.hasFocus) {
      _controller.text = widget.initial;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _focus.dispose();
    super.dispose();
  }

  void _commit() {
    final text = _controller.text.trim();
    if (text.isEmpty || text == widget.initial) return;
    widget.onCommit(text);
  }

  @override
  Widget build(BuildContext context) {
    final status = widget.saving
        ? const SizedBox.square(
            dimension: 16,
            child: CircularProgressIndicator(strokeWidth: 2),
          )
        : widget.saved
        ? const Icon(Icons.check_circle, size: 18, color: AppColors.success)
        : null;
    final field = TextField(
      controller: _controller,
      focusNode: _focus,
      enabled: widget.enabled,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      textInputAction: TextInputAction.done,
      textAlign: TextAlign.right,
      onSubmitted: (_) => _commit(),
      style: TextStyle(
        fontSize: widget.large ? 22 : 15,
        fontWeight: widget.large ? FontWeight.w600 : FontWeight.w500,
        fontFeatures: AppTheme.tabular,
      ),
      decoration: InputDecoration(
        labelText: widget.label,
        suffixText: widget.suffix,
        prefixIcon: status == null
            ? null
            : Padding(padding: const EdgeInsets.all(12), child: status),
        prefixIconConstraints: const BoxConstraints(minWidth: 40),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: widget.large ? 16 : 12,
        ),
      ),
    );
    return widget.width == null ? field : SizedBox(width: widget.width, child: field);
  }
}
