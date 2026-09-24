// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charge_breakdown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChargeBreakdown {

 double get totalUsage; double get tenantUsage; String get unit; int get totalBillCents; double? get tenantMeterReading;
/// Create a copy of ChargeBreakdown
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChargeBreakdownCopyWith<ChargeBreakdown> get copyWith => _$ChargeBreakdownCopyWithImpl<ChargeBreakdown>(this as ChargeBreakdown, _$identity);

  /// Serializes this ChargeBreakdown to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ChargeBreakdown;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChargeBreakdown&&(identical(other.totalUsage, _this.totalUsage) || other.totalUsage == _this.totalUsage)&&(identical(other.tenantUsage, _this.tenantUsage) || other.tenantUsage == _this.tenantUsage)&&(identical(other.unit, _this.unit) || other.unit == _this.unit)&&(identical(other.totalBillCents, _this.totalBillCents) || other.totalBillCents == _this.totalBillCents)&&(identical(other.tenantMeterReading, _this.tenantMeterReading) || other.tenantMeterReading == _this.tenantMeterReading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ChargeBreakdown;
  return Object.hash(runtimeType,_this.totalUsage,_this.tenantUsage,_this.unit,_this.totalBillCents,_this.tenantMeterReading);
}

@override
String toString() {
  final _this = this as ChargeBreakdown;
  return 'ChargeBreakdown(totalUsage: ${_this.totalUsage}, tenantUsage: ${_this.tenantUsage}, unit: ${_this.unit}, totalBillCents: ${_this.totalBillCents}, tenantMeterReading: ${_this.tenantMeterReading})';
}


}

/// @nodoc
abstract mixin class $ChargeBreakdownCopyWith<$Res>  {
  factory $ChargeBreakdownCopyWith(ChargeBreakdown value, $Res Function(ChargeBreakdown) _then) = _$ChargeBreakdownCopyWithImpl;
@useResult
$Res call({
 double totalUsage, double tenantUsage, String unit, int totalBillCents, double? tenantMeterReading
});




}
/// @nodoc
class _$ChargeBreakdownCopyWithImpl<$Res>
    implements $ChargeBreakdownCopyWith<$Res> {
  _$ChargeBreakdownCopyWithImpl(this._self, this._then);

  final ChargeBreakdown _self;
  final $Res Function(ChargeBreakdown) _then;

/// Create a copy of ChargeBreakdown
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalUsage = null,Object? tenantUsage = null,Object? unit = null,Object? totalBillCents = null,Object? tenantMeterReading = freezed,}) {
  return _then(ChargeBreakdown(
totalUsage: null == totalUsage ? _self.totalUsage : totalUsage // ignore: cast_nullable_to_non_nullable
as double,tenantUsage: null == tenantUsage ? _self.tenantUsage : tenantUsage // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,totalBillCents: null == totalBillCents ? _self.totalBillCents : totalBillCents // ignore: cast_nullable_to_non_nullable
as int,tenantMeterReading: freezed == tenantMeterReading ? _self.tenantMeterReading : tenantMeterReading // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChargeBreakdown].
extension ChargeBreakdownPatterns on ChargeBreakdown {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChargeBreakdown value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChargeBreakdown() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChargeBreakdown value)  $default,){
final _that = this;
switch (_that) {
case _ChargeBreakdown():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChargeBreakdown value)?  $default,){
final _that = this;
switch (_that) {
case _ChargeBreakdown() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double totalUsage,  double tenantUsage,  String unit,  int totalBillCents,  double? tenantMeterReading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChargeBreakdown() when $default != null:
return $default(_that.totalUsage,_that.tenantUsage,_that.unit,_that.totalBillCents,_that.tenantMeterReading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double totalUsage,  double tenantUsage,  String unit,  int totalBillCents,  double? tenantMeterReading)  $default,) {final _that = this;
switch (_that) {
case _ChargeBreakdown():
return $default(_that.totalUsage,_that.tenantUsage,_that.unit,_that.totalBillCents,_that.tenantMeterReading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double totalUsage,  double tenantUsage,  String unit,  int totalBillCents,  double? tenantMeterReading)?  $default,) {final _that = this;
switch (_that) {
case _ChargeBreakdown() when $default != null:
return $default(_that.totalUsage,_that.tenantUsage,_that.unit,_that.totalBillCents,_that.tenantMeterReading);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChargeBreakdown implements ChargeBreakdown {
  const _ChargeBreakdown({required this.totalUsage, required this.tenantUsage, required this.unit, required this.totalBillCents, this.tenantMeterReading});
  factory _ChargeBreakdown.fromJson(Map<String, dynamic> json) => _$ChargeBreakdownFromJson(json);

@override final  double totalUsage;
@override final  double tenantUsage;
@override final  String unit;
@override final  int totalBillCents;
@override final  double? tenantMeterReading;

/// Create a copy of ChargeBreakdown
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChargeBreakdownCopyWith<_ChargeBreakdown> get copyWith => __$ChargeBreakdownCopyWithImpl<_ChargeBreakdown>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChargeBreakdownToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChargeBreakdown&&(identical(other.totalUsage, totalUsage) || other.totalUsage == totalUsage)&&(identical(other.tenantUsage, tenantUsage) || other.tenantUsage == tenantUsage)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.totalBillCents, totalBillCents) || other.totalBillCents == totalBillCents)&&(identical(other.tenantMeterReading, tenantMeterReading) || other.tenantMeterReading == tenantMeterReading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,totalUsage,tenantUsage,unit,totalBillCents,tenantMeterReading);
}

@override
String toString() {
    return 'ChargeBreakdown(totalUsage: $totalUsage, tenantUsage: $tenantUsage, unit: $unit, totalBillCents: $totalBillCents, tenantMeterReading: $tenantMeterReading)';
}


}

/// @nodoc
abstract mixin class _$ChargeBreakdownCopyWith<$Res> implements $ChargeBreakdownCopyWith<$Res> {
  factory _$ChargeBreakdownCopyWith(_ChargeBreakdown value, $Res Function(_ChargeBreakdown) _then) = __$ChargeBreakdownCopyWithImpl;
@override @useResult
$Res call({
 double totalUsage, double tenantUsage, String unit, int totalBillCents, double? tenantMeterReading
});




}
/// @nodoc
class __$ChargeBreakdownCopyWithImpl<$Res>
    implements _$ChargeBreakdownCopyWith<$Res> {
  __$ChargeBreakdownCopyWithImpl(this._self, this._then);

  final _ChargeBreakdown _self;
  final $Res Function(_ChargeBreakdown) _then;

/// Create a copy of ChargeBreakdown
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalUsage = null,Object? tenantUsage = null,Object? unit = null,Object? totalBillCents = null,Object? tenantMeterReading = freezed,}) {
  return _then(_ChargeBreakdown(
totalUsage: null == totalUsage ? _self.totalUsage : totalUsage // ignore: cast_nullable_to_non_nullable
as double,tenantUsage: null == tenantUsage ? _self.tenantUsage : tenantUsage // ignore: cast_nullable_to_non_nullable
as double,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,totalBillCents: null == totalBillCents ? _self.totalBillCents : totalBillCents // ignore: cast_nullable_to_non_nullable
as int,tenantMeterReading: freezed == tenantMeterReading ? _self.tenantMeterReading : tenantMeterReading // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
