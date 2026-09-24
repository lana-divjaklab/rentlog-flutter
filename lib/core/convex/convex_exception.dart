/// Every failure a Convex call can end in, so blocs can switch exhaustively.
sealed class ConvexException implements Exception {
  const ConvexException(this.message);

  final String message;

  @override
  String toString() => 'ConvexException: $message';
}

/// No usable session: the Clerk token is missing, expired or rejected.
final class ConvexAuthException extends ConvexException {
  const ConvexAuthException(super.message);
}

/// The org's plan blocks this action (`UpgradeRequiredError` in
/// convex/lib/auth.ts). Convex redacts plain error messages in production,
/// so this is only recognised where the prefix survives; anything redacted
/// arrives as [ConvexServerException].
final class ConvexUpgradeRequiredException extends ConvexException {
  const ConvexUpgradeRequiredException(super.message);
}

/// The function threw.
final class ConvexServerException extends ConvexException {
  const ConvexServerException(super.message);
}

/// The request never got an answer.
final class ConvexNetworkException extends ConvexException {
  const ConvexNetworkException(super.message);
}
