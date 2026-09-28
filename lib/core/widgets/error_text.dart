import 'package:flutter/widgets.dart';
import 'package:rentlog/core/auth/clerk_api.dart';
import 'package:rentlog/core/convex/convex_exception.dart';
import 'package:rentlog/features/auth/data/auth_repository.dart';
import 'package:rentlog/l10n/l10n.dart';

/// Words a failure for the user. Convex's own messages are developer-facing
/// (and redacted in production), so they never reach the screen.
String describeError(BuildContext context, Object error) {
  final l10n = context.l10n;
  return switch (error) {
    ConvexNetworkException() => l10n.networkError,
    ConvexUpgradeRequiredException() => l10n.notInPlan,
    ConvexAuthException() => l10n.sessionExpired,
    _ => l10n.genericError,
  };
}

/// The technical reason, for "Show details": what a user can read out or
/// screenshot when reporting a problem. Convex's production messages carry a
/// request ID that finds the exact call in the Convex logs.
String errorDetail(Object error) {
  final text = switch (error) {
    ConvexException(:final message) => message,
    ClerkApiException(:final code, :final message) => '$code: $message',
    AuthException(:final failure, :final detail) => '${failure.name}: ${detail ?? '-'}',
    _ => '${error.runtimeType}: $error',
  };
  return text.length > 400 ? '${text.substring(0, 400)}…' : text;
}
