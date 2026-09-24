import 'package:json_annotation/json_annotation.dart';

/// String literals as Convex stores them; see convex/schema.ts.

enum ChargeStatus {
  @JsonValue('due')
  due,
  @JsonValue('paid')
  paid,
  @JsonValue('overdue')
  overdue,
}

enum ChargeType {
  @JsonValue('rent')
  rent,
  @JsonValue('utility')
  utility,
}

enum LeaseStatus {
  @JsonValue('draft')
  draft,
  @JsonValue('active')
  active,
  @JsonValue('ended')
  ended,
}

enum MembershipRole {
  @JsonValue('owner')
  owner,
  @JsonValue('admin')
  admin,
  @JsonValue('tenant')
  tenant;

  bool get isLandlord => this != tenant;
}

enum AllocationType {
  @JsonValue('fixed')
  fixed,
  @JsonValue('consumption')
  consumption,
  @JsonValue('percentage')
  percentage,
  @JsonValue('billMinusFixed')
  billMinusFixed,
  @JsonValue('manual')
  manual;

  /// The landlord types a value for these on the lease month; the rest are
  /// derived from the bill and the rule.
  bool get isEditable => this == consumption || this == manual;
}

enum Plan {
  @JsonValue('free')
  free,
  @JsonValue('pro')
  pro,
  @JsonValue('business')
  business,
}

enum InviteStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('accepted')
  accepted,
  @JsonValue('revoked')
  revoked,
  @JsonValue('invalid')
  invalid,
}
