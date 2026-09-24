// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Membership _$MembershipFromJson(Map<String, dynamic> json) => _Membership(
  organizationId: json['organizationId'] as String,
  organizationName: json['organizationName'] as String,
  role: $enumDecode(_$MembershipRoleEnumMap, json['role']),
  leaseCount: (json['leaseCount'] as num).toInt(),
  propertyCount: (json['propertyCount'] as num).toInt(),
);

Map<String, dynamic> _$MembershipToJson(_Membership instance) =>
    <String, dynamic>{
      'organizationId': instance.organizationId,
      'organizationName': instance.organizationName,
      'role': _$MembershipRoleEnumMap[instance.role]!,
      'leaseCount': instance.leaseCount,
      'propertyCount': instance.propertyCount,
    };

const _$MembershipRoleEnumMap = {
  MembershipRole.owner: 'owner',
  MembershipRole.admin: 'admin',
  MembershipRole.tenant: 'tenant',
};

_Viewer _$ViewerFromJson(Map<String, dynamic> json) => _Viewer(
  id: json['_id'] as String,
  email: json['email'] as String,
  name: json['name'] as String,
  locale: json['locale'] as String,
  isPlatformAdmin: json['isPlatformAdmin'] as bool,
);

Map<String, dynamic> _$ViewerToJson(_Viewer instance) => <String, dynamic>{
  '_id': instance.id,
  'email': instance.email,
  'name': instance.name,
  'locale': instance.locale,
  'isPlatformAdmin': instance.isPlatformAdmin,
};

_InvitePreview _$InvitePreviewFromJson(Map<String, dynamic> json) =>
    _InvitePreview(
      code: json['code'] as String,
      tenantName: json['tenantName'] as String,
      propertyName: json['propertyName'] as String,
      unitName: json['unitName'] as String,
      status: $enumDecode(_$InviteStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$InvitePreviewToJson(_InvitePreview instance) =>
    <String, dynamic>{
      'code': instance.code,
      'tenantName': instance.tenantName,
      'propertyName': instance.propertyName,
      'unitName': instance.unitName,
      'status': _$InviteStatusEnumMap[instance.status]!,
    };

const _$InviteStatusEnumMap = {
  InviteStatus.pending: 'pending',
  InviteStatus.accepted: 'accepted',
  InviteStatus.revoked: 'revoked',
  InviteStatus.invalid: 'invalid',
};

_DeletionStatus _$DeletionStatusFromJson(Map<String, dynamic> json) =>
    _DeletionStatus(
      requestedAt: (json['requestedAt'] as num?)?.toInt(),
      purgeAt: (json['purgeAt'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DeletionStatusToJson(_DeletionStatus instance) =>
    <String, dynamic>{
      'requestedAt': ?instance.requestedAt,
      'purgeAt': ?instance.purgeAt,
    };
