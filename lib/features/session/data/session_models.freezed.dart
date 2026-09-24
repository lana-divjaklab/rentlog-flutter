// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Membership {

 String get organizationId; String get organizationName; MembershipRole get role; int get leaseCount; int get propertyCount;
/// Create a copy of Membership
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MembershipCopyWith<Membership> get copyWith => _$MembershipCopyWithImpl<Membership>(this as Membership, _$identity);

  /// Serializes this Membership to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Membership;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Membership&&(identical(other.organizationId, _this.organizationId) || other.organizationId == _this.organizationId)&&(identical(other.organizationName, _this.organizationName) || other.organizationName == _this.organizationName)&&(identical(other.role, _this.role) || other.role == _this.role)&&(identical(other.leaseCount, _this.leaseCount) || other.leaseCount == _this.leaseCount)&&(identical(other.propertyCount, _this.propertyCount) || other.propertyCount == _this.propertyCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Membership;
  return Object.hash(runtimeType,_this.organizationId,_this.organizationName,_this.role,_this.leaseCount,_this.propertyCount);
}

@override
String toString() {
  final _this = this as Membership;
  return 'Membership(organizationId: ${_this.organizationId}, organizationName: ${_this.organizationName}, role: ${_this.role}, leaseCount: ${_this.leaseCount}, propertyCount: ${_this.propertyCount})';
}


}

/// @nodoc
abstract mixin class $MembershipCopyWith<$Res>  {
  factory $MembershipCopyWith(Membership value, $Res Function(Membership) _then) = _$MembershipCopyWithImpl;
@useResult
$Res call({
 String organizationId, String organizationName, MembershipRole role, int leaseCount, int propertyCount
});




}
/// @nodoc
class _$MembershipCopyWithImpl<$Res>
    implements $MembershipCopyWith<$Res> {
  _$MembershipCopyWithImpl(this._self, this._then);

  final Membership _self;
  final $Res Function(Membership) _then;

/// Create a copy of Membership
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? organizationId = null,Object? organizationName = null,Object? role = null,Object? leaseCount = null,Object? propertyCount = null,}) {
  return _then(Membership(
organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,organizationName: null == organizationName ? _self.organizationName : organizationName // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as MembershipRole,leaseCount: null == leaseCount ? _self.leaseCount : leaseCount // ignore: cast_nullable_to_non_nullable
as int,propertyCount: null == propertyCount ? _self.propertyCount : propertyCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Membership].
extension MembershipPatterns on Membership {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Membership value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Membership() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Membership value)  $default,){
final _that = this;
switch (_that) {
case _Membership():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Membership value)?  $default,){
final _that = this;
switch (_that) {
case _Membership() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String organizationId,  String organizationName,  MembershipRole role,  int leaseCount,  int propertyCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Membership() when $default != null:
return $default(_that.organizationId,_that.organizationName,_that.role,_that.leaseCount,_that.propertyCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String organizationId,  String organizationName,  MembershipRole role,  int leaseCount,  int propertyCount)  $default,) {final _that = this;
switch (_that) {
case _Membership():
return $default(_that.organizationId,_that.organizationName,_that.role,_that.leaseCount,_that.propertyCount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String organizationId,  String organizationName,  MembershipRole role,  int leaseCount,  int propertyCount)?  $default,) {final _that = this;
switch (_that) {
case _Membership() when $default != null:
return $default(_that.organizationId,_that.organizationName,_that.role,_that.leaseCount,_that.propertyCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Membership implements Membership {
  const _Membership({required this.organizationId, required this.organizationName, required this.role, required this.leaseCount, required this.propertyCount});
  factory _Membership.fromJson(Map<String, dynamic> json) => _$MembershipFromJson(json);

@override final  String organizationId;
@override final  String organizationName;
@override final  MembershipRole role;
@override final  int leaseCount;
@override final  int propertyCount;

/// Create a copy of Membership
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MembershipCopyWith<_Membership> get copyWith => __$MembershipCopyWithImpl<_Membership>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MembershipToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Membership&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.organizationName, organizationName) || other.organizationName == organizationName)&&(identical(other.role, role) || other.role == role)&&(identical(other.leaseCount, leaseCount) || other.leaseCount == leaseCount)&&(identical(other.propertyCount, propertyCount) || other.propertyCount == propertyCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,organizationId,organizationName,role,leaseCount,propertyCount);
}

@override
String toString() {
    return 'Membership(organizationId: $organizationId, organizationName: $organizationName, role: $role, leaseCount: $leaseCount, propertyCount: $propertyCount)';
}


}

/// @nodoc
abstract mixin class _$MembershipCopyWith<$Res> implements $MembershipCopyWith<$Res> {
  factory _$MembershipCopyWith(_Membership value, $Res Function(_Membership) _then) = __$MembershipCopyWithImpl;
@override @useResult
$Res call({
 String organizationId, String organizationName, MembershipRole role, int leaseCount, int propertyCount
});




}
/// @nodoc
class __$MembershipCopyWithImpl<$Res>
    implements _$MembershipCopyWith<$Res> {
  __$MembershipCopyWithImpl(this._self, this._then);

  final _Membership _self;
  final $Res Function(_Membership) _then;

/// Create a copy of Membership
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? organizationId = null,Object? organizationName = null,Object? role = null,Object? leaseCount = null,Object? propertyCount = null,}) {
  return _then(_Membership(
organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,organizationName: null == organizationName ? _self.organizationName : organizationName // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as MembershipRole,leaseCount: null == leaseCount ? _self.leaseCount : leaseCount // ignore: cast_nullable_to_non_nullable
as int,propertyCount: null == propertyCount ? _self.propertyCount : propertyCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Viewer {

@JsonKey(name: '_id') String get id; String get email; String get name; String get locale; bool get isPlatformAdmin;
/// Create a copy of Viewer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ViewerCopyWith<Viewer> get copyWith => _$ViewerCopyWithImpl<Viewer>(this as Viewer, _$identity);

  /// Serializes this Viewer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Viewer;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Viewer&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.locale, _this.locale) || other.locale == _this.locale)&&(identical(other.isPlatformAdmin, _this.isPlatformAdmin) || other.isPlatformAdmin == _this.isPlatformAdmin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Viewer;
  return Object.hash(runtimeType,_this.id,_this.email,_this.name,_this.locale,_this.isPlatformAdmin);
}

@override
String toString() {
  final _this = this as Viewer;
  return 'Viewer(id: ${_this.id}, email: ${_this.email}, name: ${_this.name}, locale: ${_this.locale}, isPlatformAdmin: ${_this.isPlatformAdmin})';
}


}

/// @nodoc
abstract mixin class $ViewerCopyWith<$Res>  {
  factory $ViewerCopyWith(Viewer value, $Res Function(Viewer) _then) = _$ViewerCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String email, String name, String locale, bool isPlatformAdmin
});




}
/// @nodoc
class _$ViewerCopyWithImpl<$Res>
    implements $ViewerCopyWith<$Res> {
  _$ViewerCopyWithImpl(this._self, this._then);

  final Viewer _self;
  final $Res Function(Viewer) _then;

/// Create a copy of Viewer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? name = null,Object? locale = null,Object? isPlatformAdmin = null,}) {
  return _then(Viewer(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String,isPlatformAdmin: null == isPlatformAdmin ? _self.isPlatformAdmin : isPlatformAdmin // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Viewer].
extension ViewerPatterns on Viewer {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Viewer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Viewer() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Viewer value)  $default,){
final _that = this;
switch (_that) {
case _Viewer():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Viewer value)?  $default,){
final _that = this;
switch (_that) {
case _Viewer() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String email,  String name,  String locale,  bool isPlatformAdmin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Viewer() when $default != null:
return $default(_that.id,_that.email,_that.name,_that.locale,_that.isPlatformAdmin);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String email,  String name,  String locale,  bool isPlatformAdmin)  $default,) {final _that = this;
switch (_that) {
case _Viewer():
return $default(_that.id,_that.email,_that.name,_that.locale,_that.isPlatformAdmin);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String email,  String name,  String locale,  bool isPlatformAdmin)?  $default,) {final _that = this;
switch (_that) {
case _Viewer() when $default != null:
return $default(_that.id,_that.email,_that.name,_that.locale,_that.isPlatformAdmin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Viewer implements Viewer {
  const _Viewer({@JsonKey(name: '_id') required this.id, required this.email, required this.name, required this.locale, required this.isPlatformAdmin});
  factory _Viewer.fromJson(Map<String, dynamic> json) => _$ViewerFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String email;
@override final  String name;
@override final  String locale;
@override final  bool isPlatformAdmin;

/// Create a copy of Viewer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ViewerCopyWith<_Viewer> get copyWith => __$ViewerCopyWithImpl<_Viewer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ViewerToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Viewer&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.isPlatformAdmin, isPlatformAdmin) || other.isPlatformAdmin == isPlatformAdmin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,email,name,locale,isPlatformAdmin);
}

@override
String toString() {
    return 'Viewer(id: $id, email: $email, name: $name, locale: $locale, isPlatformAdmin: $isPlatformAdmin)';
}


}

/// @nodoc
abstract mixin class _$ViewerCopyWith<$Res> implements $ViewerCopyWith<$Res> {
  factory _$ViewerCopyWith(_Viewer value, $Res Function(_Viewer) _then) = __$ViewerCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String email, String name, String locale, bool isPlatformAdmin
});




}
/// @nodoc
class __$ViewerCopyWithImpl<$Res>
    implements _$ViewerCopyWith<$Res> {
  __$ViewerCopyWithImpl(this._self, this._then);

  final _Viewer _self;
  final $Res Function(_Viewer) _then;

/// Create a copy of Viewer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? name = null,Object? locale = null,Object? isPlatformAdmin = null,}) {
  return _then(_Viewer(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String,isPlatformAdmin: null == isPlatformAdmin ? _self.isPlatformAdmin : isPlatformAdmin // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$InvitePreview {

 String get code; String get tenantName; String get propertyName; String get unitName; InviteStatus get status;
/// Create a copy of InvitePreview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvitePreviewCopyWith<InvitePreview> get copyWith => _$InvitePreviewCopyWithImpl<InvitePreview>(this as InvitePreview, _$identity);

  /// Serializes this InvitePreview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as InvitePreview;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvitePreview&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.tenantName, _this.tenantName) || other.tenantName == _this.tenantName)&&(identical(other.propertyName, _this.propertyName) || other.propertyName == _this.propertyName)&&(identical(other.unitName, _this.unitName) || other.unitName == _this.unitName)&&(identical(other.status, _this.status) || other.status == _this.status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as InvitePreview;
  return Object.hash(runtimeType,_this.code,_this.tenantName,_this.propertyName,_this.unitName,_this.status);
}

@override
String toString() {
  final _this = this as InvitePreview;
  return 'InvitePreview(code: ${_this.code}, tenantName: ${_this.tenantName}, propertyName: ${_this.propertyName}, unitName: ${_this.unitName}, status: ${_this.status})';
}


}

/// @nodoc
abstract mixin class $InvitePreviewCopyWith<$Res>  {
  factory $InvitePreviewCopyWith(InvitePreview value, $Res Function(InvitePreview) _then) = _$InvitePreviewCopyWithImpl;
@useResult
$Res call({
 String code, String tenantName, String propertyName, String unitName, InviteStatus status
});




}
/// @nodoc
class _$InvitePreviewCopyWithImpl<$Res>
    implements $InvitePreviewCopyWith<$Res> {
  _$InvitePreviewCopyWithImpl(this._self, this._then);

  final InvitePreview _self;
  final $Res Function(InvitePreview) _then;

/// Create a copy of InvitePreview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? tenantName = null,Object? propertyName = null,Object? unitName = null,Object? status = null,}) {
  return _then(InvitePreview(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,tenantName: null == tenantName ? _self.tenantName : tenantName // ignore: cast_nullable_to_non_nullable
as String,propertyName: null == propertyName ? _self.propertyName : propertyName // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InviteStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [InvitePreview].
extension InvitePreviewPatterns on InvitePreview {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvitePreview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvitePreview() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvitePreview value)  $default,){
final _that = this;
switch (_that) {
case _InvitePreview():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvitePreview value)?  $default,){
final _that = this;
switch (_that) {
case _InvitePreview() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String tenantName,  String propertyName,  String unitName,  InviteStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvitePreview() when $default != null:
return $default(_that.code,_that.tenantName,_that.propertyName,_that.unitName,_that.status);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String tenantName,  String propertyName,  String unitName,  InviteStatus status)  $default,) {final _that = this;
switch (_that) {
case _InvitePreview():
return $default(_that.code,_that.tenantName,_that.propertyName,_that.unitName,_that.status);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String tenantName,  String propertyName,  String unitName,  InviteStatus status)?  $default,) {final _that = this;
switch (_that) {
case _InvitePreview() when $default != null:
return $default(_that.code,_that.tenantName,_that.propertyName,_that.unitName,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InvitePreview implements InvitePreview {
  const _InvitePreview({required this.code, required this.tenantName, required this.propertyName, required this.unitName, required this.status});
  factory _InvitePreview.fromJson(Map<String, dynamic> json) => _$InvitePreviewFromJson(json);

@override final  String code;
@override final  String tenantName;
@override final  String propertyName;
@override final  String unitName;
@override final  InviteStatus status;

/// Create a copy of InvitePreview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvitePreviewCopyWith<_InvitePreview> get copyWith => __$InvitePreviewCopyWithImpl<_InvitePreview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InvitePreviewToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvitePreview&&(identical(other.code, code) || other.code == code)&&(identical(other.tenantName, tenantName) || other.tenantName == tenantName)&&(identical(other.propertyName, propertyName) || other.propertyName == propertyName)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,code,tenantName,propertyName,unitName,status);
}

@override
String toString() {
    return 'InvitePreview(code: $code, tenantName: $tenantName, propertyName: $propertyName, unitName: $unitName, status: $status)';
}


}

/// @nodoc
abstract mixin class _$InvitePreviewCopyWith<$Res> implements $InvitePreviewCopyWith<$Res> {
  factory _$InvitePreviewCopyWith(_InvitePreview value, $Res Function(_InvitePreview) _then) = __$InvitePreviewCopyWithImpl;
@override @useResult
$Res call({
 String code, String tenantName, String propertyName, String unitName, InviteStatus status
});




}
/// @nodoc
class __$InvitePreviewCopyWithImpl<$Res>
    implements _$InvitePreviewCopyWith<$Res> {
  __$InvitePreviewCopyWithImpl(this._self, this._then);

  final _InvitePreview _self;
  final $Res Function(_InvitePreview) _then;

/// Create a copy of InvitePreview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? tenantName = null,Object? propertyName = null,Object? unitName = null,Object? status = null,}) {
  return _then(_InvitePreview(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,tenantName: null == tenantName ? _self.tenantName : tenantName // ignore: cast_nullable_to_non_nullable
as String,propertyName: null == propertyName ? _self.propertyName : propertyName // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InviteStatus,
  ));
}


}


/// @nodoc
mixin _$DeletionStatus {

 int? get requestedAt; int? get purgeAt;
/// Create a copy of DeletionStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeletionStatusCopyWith<DeletionStatus> get copyWith => _$DeletionStatusCopyWithImpl<DeletionStatus>(this as DeletionStatus, _$identity);

  /// Serializes this DeletionStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DeletionStatus;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeletionStatus&&(identical(other.requestedAt, _this.requestedAt) || other.requestedAt == _this.requestedAt)&&(identical(other.purgeAt, _this.purgeAt) || other.purgeAt == _this.purgeAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DeletionStatus;
  return Object.hash(runtimeType,_this.requestedAt,_this.purgeAt);
}

@override
String toString() {
  final _this = this as DeletionStatus;
  return 'DeletionStatus(requestedAt: ${_this.requestedAt}, purgeAt: ${_this.purgeAt})';
}


}

/// @nodoc
abstract mixin class $DeletionStatusCopyWith<$Res>  {
  factory $DeletionStatusCopyWith(DeletionStatus value, $Res Function(DeletionStatus) _then) = _$DeletionStatusCopyWithImpl;
@useResult
$Res call({
 int? requestedAt, int? purgeAt
});




}
/// @nodoc
class _$DeletionStatusCopyWithImpl<$Res>
    implements $DeletionStatusCopyWith<$Res> {
  _$DeletionStatusCopyWithImpl(this._self, this._then);

  final DeletionStatus _self;
  final $Res Function(DeletionStatus) _then;

/// Create a copy of DeletionStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? requestedAt = freezed,Object? purgeAt = freezed,}) {
  return _then(DeletionStatus(
requestedAt: freezed == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as int?,purgeAt: freezed == purgeAt ? _self.purgeAt : purgeAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeletionStatus].
extension DeletionStatusPatterns on DeletionStatus {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeletionStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeletionStatus() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeletionStatus value)  $default,){
final _that = this;
switch (_that) {
case _DeletionStatus():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeletionStatus value)?  $default,){
final _that = this;
switch (_that) {
case _DeletionStatus() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? requestedAt,  int? purgeAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeletionStatus() when $default != null:
return $default(_that.requestedAt,_that.purgeAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? requestedAt,  int? purgeAt)  $default,) {final _that = this;
switch (_that) {
case _DeletionStatus():
return $default(_that.requestedAt,_that.purgeAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? requestedAt,  int? purgeAt)?  $default,) {final _that = this;
switch (_that) {
case _DeletionStatus() when $default != null:
return $default(_that.requestedAt,_that.purgeAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeletionStatus implements DeletionStatus {
  const _DeletionStatus({this.requestedAt, this.purgeAt});
  factory _DeletionStatus.fromJson(Map<String, dynamic> json) => _$DeletionStatusFromJson(json);

@override final  int? requestedAt;
@override final  int? purgeAt;

/// Create a copy of DeletionStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeletionStatusCopyWith<_DeletionStatus> get copyWith => __$DeletionStatusCopyWithImpl<_DeletionStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeletionStatusToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeletionStatus&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.purgeAt, purgeAt) || other.purgeAt == purgeAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,requestedAt,purgeAt);
}

@override
String toString() {
    return 'DeletionStatus(requestedAt: $requestedAt, purgeAt: $purgeAt)';
}


}

/// @nodoc
abstract mixin class _$DeletionStatusCopyWith<$Res> implements $DeletionStatusCopyWith<$Res> {
  factory _$DeletionStatusCopyWith(_DeletionStatus value, $Res Function(_DeletionStatus) _then) = __$DeletionStatusCopyWithImpl;
@override @useResult
$Res call({
 int? requestedAt, int? purgeAt
});




}
/// @nodoc
class __$DeletionStatusCopyWithImpl<$Res>
    implements _$DeletionStatusCopyWith<$Res> {
  __$DeletionStatusCopyWithImpl(this._self, this._then);

  final _DeletionStatus _self;
  final $Res Function(_DeletionStatus) _then;

/// Create a copy of DeletionStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? requestedAt = freezed,Object? purgeAt = freezed,}) {
  return _then(_DeletionStatus(
requestedAt: freezed == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as int?,purgeAt: freezed == purgeAt ? _self.purgeAt : purgeAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
