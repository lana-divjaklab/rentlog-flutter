import 'package:flutter/material.dart';
import 'package:rentlog/core/bloc/load_state.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/core/widgets/error_text.dart';
import 'package:rentlog/l10n/l10n.dart';

/// Loading spinner, error with retry, or the data — with pull-to-refresh
/// around whatever [builder] returns (which must be scrollable).
class LoadStateView<T> extends StatelessWidget {
  const LoadStateView({
    required this.state,
    required this.builder,
    required this.onRefresh,
    super.key,
  });

  final LoadState<T> state;
  final Widget Function(BuildContext context, T data) builder;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) => switch (state) {
    LoadInProgress<T>() => const Center(child: CircularProgressIndicator()),
    LoadFailure<T>(:final error) => ErrorState(
      message: describeError(context, error),
      onRetry: onRefresh,
    ),
    LoadSuccess<T>(:final data) => RefreshIndicator(
      color: AppColors.primary,
      backgroundColor: AppColors.card,
      onRefresh: onRefresh,
      child: builder(context, data),
    ),
  };
}

class ErrorState extends StatelessWidget {
  const ErrorState({required this.message, required this.onRetry, super.key});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) => Center(
    child: Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.cloud_off_outlined, size: 40, color: AppColors.muted),
          const SizedBox(height: 16),
          Text(message, textAlign: TextAlign.center),
          const SizedBox(height: 16),
          OutlinedButton(onPressed: onRetry, child: Text(context.l10n.retry)),
        ],
      ),
    ),
  );
}

/// Centered message inside a scrollable, so pull-to-refresh still works
/// on an empty screen.
class EmptyState extends StatelessWidget {
  const EmptyState({
    required this.message,
    this.icon = Icons.inbox_outlined,
    this.action,
    super.key,
  });

  final String message;
  final IconData icon;
  final Widget? action;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) => SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: constraints.maxHeight),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, size: 40, color: AppColors.muted),
                const SizedBox(height: 16),
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: AppColors.muted),
                ),
                if (action != null) ...[const SizedBox(height: 20), action!],
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
