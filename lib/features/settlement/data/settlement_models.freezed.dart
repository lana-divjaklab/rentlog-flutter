// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settlement_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PropertyMeters {

 List<MeteredUtility> get categories; List<PropertyLease> get leases; List<MeterReadingEntry> get readings;
/// Create a copy of PropertyMeters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyMetersCopyWith<PropertyMeters> get copyWith => _$PropertyMetersCopyWithImpl<PropertyMeters>(this as PropertyMeters, _$identity);

  /// Serializes this PropertyMeters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PropertyMeters;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyMeters&&const DeepCollectionEquality().equals(other.categories, _this.categories)&&const DeepCollectionEquality().equals(other.leases, _this.leases)&&const DeepCollectionEquality().equals(other.readings, _this.readings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PropertyMeters;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.categories),const DeepCollectionEquality().hash(_this.leases),const DeepCollectionEquality().hash(_this.readings));
}

@override
String toString() {
  final _this = this as PropertyMeters;
  return 'PropertyMeters(categories: ${_this.categories}, leases: ${_this.leases}, readings: ${_this.readings})';
}


}

/// @nodoc
abstract mixin class $PropertyMetersCopyWith<$Res>  {
  factory $PropertyMetersCopyWith(PropertyMeters value, $Res Function(PropertyMeters) _then) = _$PropertyMetersCopyWithImpl;
@useResult
$Res call({
 List<MeteredUtility> categories, List<PropertyLease> leases, List<MeterReadingEntry> readings
});




}
/// @nodoc
class _$PropertyMetersCopyWithImpl<$Res>
    implements $PropertyMetersCopyWith<$Res> {
  _$PropertyMetersCopyWithImpl(this._self, this._then);

  final PropertyMeters _self;
  final $Res Function(PropertyMeters) _then;

/// Create a copy of PropertyMeters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,Object? leases = null,Object? readings = null,}) {
  return _then(PropertyMeters(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<MeteredUtility>,leases: null == leases ? _self.leases : leases // ignore: cast_nullable_to_non_nullable
as List<PropertyLease>,readings: null == readings ? _self.readings : readings // ignore: cast_nullable_to_non_nullable
as List<MeterReadingEntry>,
  ));
}

}


/// Adds pattern-matching-related methods to [PropertyMeters].
extension PropertyMetersPatterns on PropertyMeters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PropertyMeters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PropertyMeters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PropertyMeters value)  $default,){
final _that = this;
switch (_that) {
case _PropertyMeters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PropertyMeters value)?  $default,){
final _that = this;
switch (_that) {
case _PropertyMeters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MeteredUtility> categories,  List<PropertyLease> leases,  List<MeterReadingEntry> readings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PropertyMeters() when $default != null:
return $default(_that.categories,_that.leases,_that.readings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MeteredUtility> categories,  List<PropertyLease> leases,  List<MeterReadingEntry> readings)  $default,) {final _that = this;
switch (_that) {
case _PropertyMeters():
return $default(_that.categories,_that.leases,_that.readings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MeteredUtility> categories,  List<PropertyLease> leases,  List<MeterReadingEntry> readings)?  $default,) {final _that = this;
switch (_that) {
case _PropertyMeters() when $default != null:
return $default(_that.categories,_that.leases,_that.readings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PropertyMeters implements PropertyMeters {
  const _PropertyMeters({required  List<MeteredUtility> categories, required  List<PropertyLease> leases, required  List<MeterReadingEntry> readings}): _categories = categories,_leases = leases,_readings = readings;
  factory _PropertyMeters.fromJson(Map<String, dynamic> json) => _$PropertyMetersFromJson(json);

 final  List<MeteredUtility> _categories;
@override List<MeteredUtility> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<PropertyLease> _leases;
@override List<PropertyLease> get leases {
  if (_leases is EqualUnmodifiableListView) return _leases;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_leases);
}

 final  List<MeterReadingEntry> _readings;
@override List<MeterReadingEntry> get readings {
  if (_readings is EqualUnmodifiableListView) return _readings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_readings);
}


/// Create a copy of PropertyMeters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PropertyMetersCopyWith<_PropertyMeters> get copyWith => __$PropertyMetersCopyWithImpl<_PropertyMeters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PropertyMetersToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PropertyMeters&&const DeepCollectionEquality().equals(other.categories, _categories)&&const DeepCollectionEquality().equals(other.leases, _leases)&&const DeepCollectionEquality().equals(other.readings, _readings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_leases),const DeepCollectionEquality().hash(_readings));
}

@override
String toString() {
    return 'PropertyMeters(categories: $categories, leases: $leases, readings: $readings)';
}


}

/// @nodoc
abstract mixin class _$PropertyMetersCopyWith<$Res> implements $PropertyMetersCopyWith<$Res> {
  factory _$PropertyMetersCopyWith(_PropertyMeters value, $Res Function(_PropertyMeters) _then) = __$PropertyMetersCopyWithImpl;
@override @useResult
$Res call({
 List<MeteredUtility> categories, List<PropertyLease> leases, List<MeterReadingEntry> readings
});




}
/// @nodoc
class __$PropertyMetersCopyWithImpl<$Res>
    implements _$PropertyMetersCopyWith<$Res> {
  __$PropertyMetersCopyWithImpl(this._self, this._then);

  final _PropertyMeters _self;
  final $Res Function(_PropertyMeters) _then;

/// Create a copy of PropertyMeters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? leases = null,Object? readings = null,}) {
  return _then(_PropertyMeters(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<MeteredUtility>,leases: null == leases ? _self._leases : leases // ignore: cast_nullable_to_non_nullable
as List<PropertyLease>,readings: null == readings ? _self._readings : readings // ignore: cast_nullable_to_non_nullable
as List<MeterReadingEntry>,
  ));
}


}


/// @nodoc
mixin _$MeteredUtility {

@JsonKey(name: '_id') String get id; String get name; String get unit;
/// Create a copy of MeteredUtility
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeteredUtilityCopyWith<MeteredUtility> get copyWith => _$MeteredUtilityCopyWithImpl<MeteredUtility>(this as MeteredUtility, _$identity);

  /// Serializes this MeteredUtility to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MeteredUtility;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeteredUtility&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.unit, _this.unit) || other.unit == _this.unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MeteredUtility;
  return Object.hash(runtimeType,_this.id,_this.name,_this.unit);
}

@override
String toString() {
  final _this = this as MeteredUtility;
  return 'MeteredUtility(id: ${_this.id}, name: ${_this.name}, unit: ${_this.unit})';
}


}

/// @nodoc
abstract mixin class $MeteredUtilityCopyWith<$Res>  {
  factory $MeteredUtilityCopyWith(MeteredUtility value, $Res Function(MeteredUtility) _then) = _$MeteredUtilityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String name, String unit
});




}
/// @nodoc
class _$MeteredUtilityCopyWithImpl<$Res>
    implements $MeteredUtilityCopyWith<$Res> {
  _$MeteredUtilityCopyWithImpl(this._self, this._then);

  final MeteredUtility _self;
  final $Res Function(MeteredUtility) _then;

/// Create a copy of MeteredUtility
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? unit = null,}) {
  return _then(MeteredUtility(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MeteredUtility].
extension MeteredUtilityPatterns on MeteredUtility {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MeteredUtility value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MeteredUtility() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MeteredUtility value)  $default,){
final _that = this;
switch (_that) {
case _MeteredUtility():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MeteredUtility value)?  $default,){
final _that = this;
switch (_that) {
case _MeteredUtility() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String name,  String unit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MeteredUtility() when $default != null:
return $default(_that.id,_that.name,_that.unit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String name,  String unit)  $default,) {final _that = this;
switch (_that) {
case _MeteredUtility():
return $default(_that.id,_that.name,_that.unit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String name,  String unit)?  $default,) {final _that = this;
switch (_that) {
case _MeteredUtility() when $default != null:
return $default(_that.id,_that.name,_that.unit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MeteredUtility implements MeteredUtility {
  const _MeteredUtility({@JsonKey(name: '_id') required this.id, required this.name, required this.unit});
  factory _MeteredUtility.fromJson(Map<String, dynamic> json) => _$MeteredUtilityFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String name;
@override final  String unit;

/// Create a copy of MeteredUtility
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeteredUtilityCopyWith<_MeteredUtility> get copyWith => __$MeteredUtilityCopyWithImpl<_MeteredUtility>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeteredUtilityToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeteredUtility&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,unit);
}

@override
String toString() {
    return 'MeteredUtility(id: $id, name: $name, unit: $unit)';
}


}

/// @nodoc
abstract mixin class _$MeteredUtilityCopyWith<$Res> implements $MeteredUtilityCopyWith<$Res> {
  factory _$MeteredUtilityCopyWith(_MeteredUtility value, $Res Function(_MeteredUtility) _then) = __$MeteredUtilityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String name, String unit
});




}
/// @nodoc
class __$MeteredUtilityCopyWithImpl<$Res>
    implements _$MeteredUtilityCopyWith<$Res> {
  __$MeteredUtilityCopyWithImpl(this._self, this._then);

  final _MeteredUtility _self;
  final $Res Function(_MeteredUtility) _then;

/// Create a copy of MeteredUtility
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? unit = null,}) {
  return _then(_MeteredUtility(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PropertyLease {

@JsonKey(name: '_id') String get id; String get tenantName; String get unitName;
/// Create a copy of PropertyLease
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyLeaseCopyWith<PropertyLease> get copyWith => _$PropertyLeaseCopyWithImpl<PropertyLease>(this as PropertyLease, _$identity);

  /// Serializes this PropertyLease to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PropertyLease;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyLease&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.tenantName, _this.tenantName) || other.tenantName == _this.tenantName)&&(identical(other.unitName, _this.unitName) || other.unitName == _this.unitName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PropertyLease;
  return Object.hash(runtimeType,_this.id,_this.tenantName,_this.unitName);
}

@override
String toString() {
  final _this = this as PropertyLease;
  return 'PropertyLease(id: ${_this.id}, tenantName: ${_this.tenantName}, unitName: ${_this.unitName})';
}


}

/// @nodoc
abstract mixin class $PropertyLeaseCopyWith<$Res>  {
  factory $PropertyLeaseCopyWith(PropertyLease value, $Res Function(PropertyLease) _then) = _$PropertyLeaseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String tenantName, String unitName
});




}
/// @nodoc
class _$PropertyLeaseCopyWithImpl<$Res>
    implements $PropertyLeaseCopyWith<$Res> {
  _$PropertyLeaseCopyWithImpl(this._self, this._then);

  final PropertyLease _self;
  final $Res Function(PropertyLease) _then;

/// Create a copy of PropertyLease
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? tenantName = null,Object? unitName = null,}) {
  return _then(PropertyLease(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,tenantName: null == tenantName ? _self.tenantName : tenantName // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PropertyLease].
extension PropertyLeasePatterns on PropertyLease {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PropertyLease value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PropertyLease() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PropertyLease value)  $default,){
final _that = this;
switch (_that) {
case _PropertyLease():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PropertyLease value)?  $default,){
final _that = this;
switch (_that) {
case _PropertyLease() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String tenantName,  String unitName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PropertyLease() when $default != null:
return $default(_that.id,_that.tenantName,_that.unitName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String tenantName,  String unitName)  $default,) {final _that = this;
switch (_that) {
case _PropertyLease():
return $default(_that.id,_that.tenantName,_that.unitName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String tenantName,  String unitName)?  $default,) {final _that = this;
switch (_that) {
case _PropertyLease() when $default != null:
return $default(_that.id,_that.tenantName,_that.unitName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PropertyLease implements PropertyLease {
  const _PropertyLease({@JsonKey(name: '_id') required this.id, required this.tenantName, required this.unitName});
  factory _PropertyLease.fromJson(Map<String, dynamic> json) => _$PropertyLeaseFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String tenantName;
@override final  String unitName;

/// Create a copy of PropertyLease
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PropertyLeaseCopyWith<_PropertyLease> get copyWith => __$PropertyLeaseCopyWithImpl<_PropertyLease>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PropertyLeaseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PropertyLease&&(identical(other.id, id) || other.id == id)&&(identical(other.tenantName, tenantName) || other.tenantName == tenantName)&&(identical(other.unitName, unitName) || other.unitName == unitName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,tenantName,unitName);
}

@override
String toString() {
    return 'PropertyLease(id: $id, tenantName: $tenantName, unitName: $unitName)';
}


}

/// @nodoc
abstract mixin class _$PropertyLeaseCopyWith<$Res> implements $PropertyLeaseCopyWith<$Res> {
  factory _$PropertyLeaseCopyWith(_PropertyLease value, $Res Function(_PropertyLease) _then) = __$PropertyLeaseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String tenantName, String unitName
});




}
/// @nodoc
class __$PropertyLeaseCopyWithImpl<$Res>
    implements _$PropertyLeaseCopyWith<$Res> {
  __$PropertyLeaseCopyWithImpl(this._self, this._then);

  final _PropertyLease _self;
  final $Res Function(_PropertyLease) _then;

/// Create a copy of PropertyLease
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? tenantName = null,Object? unitName = null,}) {
  return _then(_PropertyLease(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,tenantName: null == tenantName ? _self.tenantName : tenantName // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MeterReadingEntry {

 String get categoryId; String get consumptionMonth; ReadingScope get scope; String? get leaseId; double get reading; double? get previousReading; double? get calculatedUsage;
/// Create a copy of MeterReadingEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeterReadingEntryCopyWith<MeterReadingEntry> get copyWith => _$MeterReadingEntryCopyWithImpl<MeterReadingEntry>(this as MeterReadingEntry, _$identity);

  /// Serializes this MeterReadingEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MeterReadingEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeterReadingEntry&&(identical(other.categoryId, _this.categoryId) || other.categoryId == _this.categoryId)&&(identical(other.consumptionMonth, _this.consumptionMonth) || other.consumptionMonth == _this.consumptionMonth)&&(identical(other.scope, _this.scope) || other.scope == _this.scope)&&(identical(other.leaseId, _this.leaseId) || other.leaseId == _this.leaseId)&&(identical(other.reading, _this.reading) || other.reading == _this.reading)&&(identical(other.previousReading, _this.previousReading) || other.previousReading == _this.previousReading)&&(identical(other.calculatedUsage, _this.calculatedUsage) || other.calculatedUsage == _this.calculatedUsage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MeterReadingEntry;
  return Object.hash(runtimeType,_this.categoryId,_this.consumptionMonth,_this.scope,_this.leaseId,_this.reading,_this.previousReading,_this.calculatedUsage);
}

@override
String toString() {
  final _this = this as MeterReadingEntry;
  return 'MeterReadingEntry(categoryId: ${_this.categoryId}, consumptionMonth: ${_this.consumptionMonth}, scope: ${_this.scope}, leaseId: ${_this.leaseId}, reading: ${_this.reading}, previousReading: ${_this.previousReading}, calculatedUsage: ${_this.calculatedUsage})';
}


}

/// @nodoc
abstract mixin class $MeterReadingEntryCopyWith<$Res>  {
  factory $MeterReadingEntryCopyWith(MeterReadingEntry value, $Res Function(MeterReadingEntry) _then) = _$MeterReadingEntryCopyWithImpl;
@useResult
$Res call({
 String categoryId, String consumptionMonth, ReadingScope scope, String? leaseId, double reading, double? previousReading, double? calculatedUsage
});




}
/// @nodoc
class _$MeterReadingEntryCopyWithImpl<$Res>
    implements $MeterReadingEntryCopyWith<$Res> {
  _$MeterReadingEntryCopyWithImpl(this._self, this._then);

  final MeterReadingEntry _self;
  final $Res Function(MeterReadingEntry) _then;

/// Create a copy of MeterReadingEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryId = null,Object? consumptionMonth = null,Object? scope = null,Object? leaseId = freezed,Object? reading = null,Object? previousReading = freezed,Object? calculatedUsage = freezed,}) {
  return _then(MeterReadingEntry(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,consumptionMonth: null == consumptionMonth ? _self.consumptionMonth : consumptionMonth // ignore: cast_nullable_to_non_nullable
as String,scope: null == scope ? _self.scope : scope // ignore: cast_nullable_to_non_nullable
as ReadingScope,leaseId: freezed == leaseId ? _self.leaseId : leaseId // ignore: cast_nullable_to_non_nullable
as String?,reading: null == reading ? _self.reading : reading // ignore: cast_nullable_to_non_nullable
as double,previousReading: freezed == previousReading ? _self.previousReading : previousReading // ignore: cast_nullable_to_non_nullable
as double?,calculatedUsage: freezed == calculatedUsage ? _self.calculatedUsage : calculatedUsage // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [MeterReadingEntry].
extension MeterReadingEntryPatterns on MeterReadingEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MeterReadingEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MeterReadingEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MeterReadingEntry value)  $default,){
final _that = this;
switch (_that) {
case _MeterReadingEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MeterReadingEntry value)?  $default,){
final _that = this;
switch (_that) {
case _MeterReadingEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String categoryId,  String consumptionMonth,  ReadingScope scope,  String? leaseId,  double reading,  double? previousReading,  double? calculatedUsage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MeterReadingEntry() when $default != null:
return $default(_that.categoryId,_that.consumptionMonth,_that.scope,_that.leaseId,_that.reading,_that.previousReading,_that.calculatedUsage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String categoryId,  String consumptionMonth,  ReadingScope scope,  String? leaseId,  double reading,  double? previousReading,  double? calculatedUsage)  $default,) {final _that = this;
switch (_that) {
case _MeterReadingEntry():
return $default(_that.categoryId,_that.consumptionMonth,_that.scope,_that.leaseId,_that.reading,_that.previousReading,_that.calculatedUsage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String categoryId,  String consumptionMonth,  ReadingScope scope,  String? leaseId,  double reading,  double? previousReading,  double? calculatedUsage)?  $default,) {final _that = this;
switch (_that) {
case _MeterReadingEntry() when $default != null:
return $default(_that.categoryId,_that.consumptionMonth,_that.scope,_that.leaseId,_that.reading,_that.previousReading,_that.calculatedUsage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MeterReadingEntry implements MeterReadingEntry {
  const _MeterReadingEntry({required this.categoryId, required this.consumptionMonth, required this.scope, this.leaseId, required this.reading, this.previousReading, this.calculatedUsage});
  factory _MeterReadingEntry.fromJson(Map<String, dynamic> json) => _$MeterReadingEntryFromJson(json);

@override final  String categoryId;
@override final  String consumptionMonth;
@override final  ReadingScope scope;
@override final  String? leaseId;
@override final  double reading;
@override final  double? previousReading;
@override final  double? calculatedUsage;

/// Create a copy of MeterReadingEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeterReadingEntryCopyWith<_MeterReadingEntry> get copyWith => __$MeterReadingEntryCopyWithImpl<_MeterReadingEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeterReadingEntryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeterReadingEntry&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.consumptionMonth, consumptionMonth) || other.consumptionMonth == consumptionMonth)&&(identical(other.scope, scope) || other.scope == scope)&&(identical(other.leaseId, leaseId) || other.leaseId == leaseId)&&(identical(other.reading, reading) || other.reading == reading)&&(identical(other.previousReading, previousReading) || other.previousReading == previousReading)&&(identical(other.calculatedUsage, calculatedUsage) || other.calculatedUsage == calculatedUsage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,categoryId,consumptionMonth,scope,leaseId,reading,previousReading,calculatedUsage);
}

@override
String toString() {
    return 'MeterReadingEntry(categoryId: $categoryId, consumptionMonth: $consumptionMonth, scope: $scope, leaseId: $leaseId, reading: $reading, previousReading: $previousReading, calculatedUsage: $calculatedUsage)';
}


}

/// @nodoc
abstract mixin class _$MeterReadingEntryCopyWith<$Res> implements $MeterReadingEntryCopyWith<$Res> {
  factory _$MeterReadingEntryCopyWith(_MeterReadingEntry value, $Res Function(_MeterReadingEntry) _then) = __$MeterReadingEntryCopyWithImpl;
@override @useResult
$Res call({
 String categoryId, String consumptionMonth, ReadingScope scope, String? leaseId, double reading, double? previousReading, double? calculatedUsage
});




}
/// @nodoc
class __$MeterReadingEntryCopyWithImpl<$Res>
    implements _$MeterReadingEntryCopyWith<$Res> {
  __$MeterReadingEntryCopyWithImpl(this._self, this._then);

  final _MeterReadingEntry _self;
  final $Res Function(_MeterReadingEntry) _then;

/// Create a copy of MeterReadingEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryId = null,Object? consumptionMonth = null,Object? scope = null,Object? leaseId = freezed,Object? reading = null,Object? previousReading = freezed,Object? calculatedUsage = freezed,}) {
  return _then(_MeterReadingEntry(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,consumptionMonth: null == consumptionMonth ? _self.consumptionMonth : consumptionMonth // ignore: cast_nullable_to_non_nullable
as String,scope: null == scope ? _self.scope : scope // ignore: cast_nullable_to_non_nullable
as ReadingScope,leaseId: freezed == leaseId ? _self.leaseId : leaseId // ignore: cast_nullable_to_non_nullable
as String?,reading: null == reading ? _self.reading : reading // ignore: cast_nullable_to_non_nullable
as double,previousReading: freezed == previousReading ? _self.previousReading : previousReading // ignore: cast_nullable_to_non_nullable
as double?,calculatedUsage: freezed == calculatedUsage ? _self.calculatedUsage : calculatedUsage // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
