import 'package:flutter/widgets.dart';
import 'package:rentlog/core/convex/convex_exception.dart';
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
