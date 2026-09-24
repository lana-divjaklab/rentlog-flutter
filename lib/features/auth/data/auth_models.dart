import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_models.freezed.dart';

@freezed
abstract class AuthUser with _$AuthUser {
  const factory AuthUser({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
  }) = _AuthUser;

  const AuthUser._();

  String get fullName => '$firstName $lastName'.trim();
}

/// A code has been emailed; what it confirms decides how it's attempted.
@freezed
sealed class PendingVerification with _$PendingVerification {
  const factory PendingVerification.signIn({
    required String attemptId,
    required String emailAddressId,
    required String email,
  }) = PendingSignIn;

  const factory PendingVerification.signUp({
    required String attemptId,
    required String email,
  }) = PendingSignUp;
}
