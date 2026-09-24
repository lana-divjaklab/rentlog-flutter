import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentlog/core/models/enums.dart';

part 'session_models.freezed.dart';
part 'session_models.g.dart';

/// One row of `users.getMemberships`.
@freezed
abstract class Membership with _$Membership {
  const factory Membership({
    required String organizationId,
    required String organizationName,
    required MembershipRole role,
    required int leaseCount,
    required int propertyCount,
  }) = _Membership;

  factory Membership.fromJson(Map<String, dynamic> json) =>
      _$MembershipFromJson(json);
}

/// `users.viewer`.
@freezed
abstract class Viewer with _$Viewer {
  const factory Viewer({
    @JsonKey(name: '_id') required String id,
    required String email,
    required String name,
    required String locale,
    required bool isPlatformAdmin,
  }) = _Viewer;

  factory Viewer.fromJson(Map<String, dynamic> json) => _$ViewerFromJson(json);
}

/// `leaseInvites.preview`.
@freezed
abstract class InvitePreview with _$InvitePreview {
  const factory InvitePreview({
    required String code,
    required String tenantName,
    required String propertyName,
    required String unitName,
    required InviteStatus status,
  }) = _InvitePreview;

  factory InvitePreview.fromJson(Map<String, dynamic> json) =>
      _$InvitePreviewFromJson(json);
}

/// `users.accountDeletionStatus`. Timestamps are epoch milliseconds.
@freezed
abstract class DeletionStatus with _$DeletionStatus {
  const factory DeletionStatus({int? requestedAt, int? purgeAt}) =
      _DeletionStatus;

  factory DeletionStatus.fromJson(Map<String, dynamic> json) =>
      _$DeletionStatusFromJson(json);
}
