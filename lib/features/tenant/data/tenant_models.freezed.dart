// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tenant_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TenantOverview {

 String get leaseId; String get tenantName; String get leaseStart; int get rentAmountCents; int? get depositAmountCents; int get utilityDueOffsetMonths;@UtilityDueDayConverter() Object get utilityDueDay; List<TenantMonth> get months;
/// Create a copy of TenantOverview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TenantOverviewCopyWith<TenantOverview> get copyWith => _$TenantOverviewCopyWithImpl<TenantOverview>(this as TenantOverview, _$identity);

  /// Serializes this TenantOverview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TenantOverview;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TenantOverview&&(identical(other.leaseId, _this.leaseId) || other.leaseId == _this.leaseId)&&(identical(other.tenantName, _this.tenantName) || other.tenantName == _this.tenantName)&&(identical(other.leaseStart, _this.leaseStart) || other.leaseStart == _this.leaseStart)&&(identical(other.rentAmountCents, _this.rentAmountCents) || other.rentAmountCents == _this.rentAmountCents)&&(identical(other.depositAmountCents, _this.depositAmountCents) || other.depositAmountCents == _this.depositAmountCents)&&(identical(other.utilityDueOffsetMonths, _this.utilityDueOffsetMonths) || other.utilityDueOffsetMonths == _this.utilityDueOffsetMonths)&&const DeepCollectionEquality().equals(other.utilityDueDay, _this.utilityDueDay)&&const DeepCollectionEquality().equals(other.months, _this.months));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TenantOverview;
  return Object.hash(runtimeType,_this.leaseId,_this.tenantName,_this.leaseStart,_this.rentAmountCents,_this.depositAmountCents,_this.utilityDueOffsetMonths,const DeepCollectionEquality().hash(_this.utilityDueDay),const DeepCollectionEquality().hash(_this.months));
}

@override
String toString() {
  final _this = this as TenantOverview;
  return 'TenantOverview(leaseId: ${_this.leaseId}, tenantName: ${_this.tenantName}, leaseStart: ${_this.leaseStart}, rentAmountCents: ${_this.rentAmountCents}, depositAmountCents: ${_this.depositAmountCents}, utilityDueOffsetMonths: ${_this.utilityDueOffsetMonths}, utilityDueDay: ${_this.utilityDueDay}, months: ${_this.months})';
}


}

/// @nodoc
abstract mixin class $TenantOverviewCopyWith<$Res>  {
  factory $TenantOverviewCopyWith(TenantOverview value, $Res Function(TenantOverview) _then) = _$TenantOverviewCopyWithImpl;
@useResult
$Res call({
 String leaseId, String tenantName, String leaseStart, int rentAmountCents, int? depositAmountCents, int utilityDueOffsetMonths,@UtilityDueDayConverter() Object utilityDueDay, List<TenantMonth> months
});




}
/// @nodoc
class _$TenantOverviewCopyWithImpl<$Res>
    implements $TenantOverviewCopyWith<$Res> {
  _$TenantOverviewCopyWithImpl(this._self, this._then);

  final TenantOverview _self;
  final $Res Function(TenantOverview) _then;

/// Create a copy of TenantOverview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? leaseId = null,Object? tenantName = null,Object? leaseStart = null,Object? rentAmountCents = null,Object? depositAmountCents = freezed,Object? utilityDueOffsetMonths = null,Object? utilityDueDay = null,Object? months = null,}) {
  return _then(TenantOverview(
leaseId: null == leaseId ? _self.leaseId : leaseId // ignore: cast_nullable_to_non_nullable
as String,tenantName: null == tenantName ? _self.tenantName : tenantName // ignore: cast_nullable_to_non_nullable
as String,leaseStart: null == leaseStart ? _self.leaseStart : leaseStart // ignore: cast_nullable_to_non_nullable
as String,rentAmountCents: null == rentAmountCents ? _self.rentAmountCents : rentAmountCents // ignore: cast_nullable_to_non_nullable
as int,depositAmountCents: freezed == depositAmountCents ? _self.depositAmountCents : depositAmountCents // ignore: cast_nullable_to_non_nullable
as int?,utilityDueOffsetMonths: null == utilityDueOffsetMonths ? _self.utilityDueOffsetMonths : utilityDueOffsetMonths // ignore: cast_nullable_to_non_nullable
as int,utilityDueDay: null == utilityDueDay ? _self.utilityDueDay : utilityDueDay ,months: null == months ? _self.months : months // ignore: cast_nullable_to_non_nullable
as List<TenantMonth>,
  ));
}

}


/// Adds pattern-matching-related methods to [TenantOverview].
extension TenantOverviewPatterns on TenantOverview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TenantOverview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TenantOverview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TenantOverview value)  $default,){
final _that = this;
switch (_that) {
case _TenantOverview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TenantOverview value)?  $default,){
final _that = this;
switch (_that) {
case _TenantOverview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String leaseId,  String tenantName,  String leaseStart,  int rentAmountCents,  int? depositAmountCents,  int utilityDueOffsetMonths, @UtilityDueDayConverter()  Object utilityDueDay,  List<TenantMonth> months)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TenantOverview() when $default != null:
return $default(_that.leaseId,_that.tenantName,_that.leaseStart,_that.rentAmountCents,_that.depositAmountCents,_that.utilityDueOffsetMonths,_that.utilityDueDay,_that.months);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String leaseId,  String tenantName,  String leaseStart,  int rentAmountCents,  int? depositAmountCents,  int utilityDueOffsetMonths, @UtilityDueDayConverter()  Object utilityDueDay,  List<TenantMonth> months)  $default,) {final _that = this;
switch (_that) {
case _TenantOverview():
return $default(_that.leaseId,_that.tenantName,_that.leaseStart,_that.rentAmountCents,_that.depositAmountCents,_that.utilityDueOffsetMonths,_that.utilityDueDay,_that.months);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String leaseId,  String tenantName,  String leaseStart,  int rentAmountCents,  int? depositAmountCents,  int utilityDueOffsetMonths, @UtilityDueDayConverter()  Object utilityDueDay,  List<TenantMonth> months)?  $default,) {final _that = this;
switch (_that) {
case _TenantOverview() when $default != null:
return $default(_that.leaseId,_that.tenantName,_that.leaseStart,_that.rentAmountCents,_that.depositAmountCents,_that.utilityDueOffsetMonths,_that.utilityDueDay,_that.months);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TenantOverview implements TenantOverview {
  const _TenantOverview({required this.leaseId, required this.tenantName, required this.leaseStart, required this.rentAmountCents, this.depositAmountCents, required this.utilityDueOffsetMonths, @UtilityDueDayConverter() required this.utilityDueDay, required  List<TenantMonth> months}): _months = months;
  factory _TenantOverview.fromJson(Map<String, dynamic> json) => _$TenantOverviewFromJson(json);

@override final  String leaseId;
@override final  String tenantName;
@override final  String leaseStart;
@override final  int rentAmountCents;
@override final  int? depositAmountCents;
@override final  int utilityDueOffsetMonths;
@override@UtilityDueDayConverter() final  Object utilityDueDay;
 final  List<TenantMonth> _months;
@override List<TenantMonth> get months {
  if (_months is EqualUnmodifiableListView) return _months;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_months);
}


/// Create a copy of TenantOverview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TenantOverviewCopyWith<_TenantOverview> get copyWith => __$TenantOverviewCopyWithImpl<_TenantOverview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TenantOverviewToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TenantOverview&&(identical(other.leaseId, leaseId) || other.leaseId == leaseId)&&(identical(other.tenantName, tenantName) || other.tenantName == tenantName)&&(identical(other.leaseStart, leaseStart) || other.leaseStart == leaseStart)&&(identical(other.rentAmountCents, rentAmountCents) || other.rentAmountCents == rentAmountCents)&&(identical(other.depositAmountCents, depositAmountCents) || other.depositAmountCents == depositAmountCents)&&(identical(other.utilityDueOffsetMonths, utilityDueOffsetMonths) || other.utilityDueOffsetMonths == utilityDueOffsetMonths)&&const DeepCollectionEquality().equals(other.utilityDueDay, utilityDueDay)&&const DeepCollectionEquality().equals(other.months, _months));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,leaseId,tenantName,leaseStart,rentAmountCents,depositAmountCents,utilityDueOffsetMonths,const DeepCollectionEquality().hash(utilityDueDay),const DeepCollectionEquality().hash(_months));
}

@override
String toString() {
    return 'TenantOverview(leaseId: $leaseId, tenantName: $tenantName, leaseStart: $leaseStart, rentAmountCents: $rentAmountCents, depositAmountCents: $depositAmountCents, utilityDueOffsetMonths: $utilityDueOffsetMonths, utilityDueDay: $utilityDueDay, months: $months)';
}


}

/// @nodoc
abstract mixin class _$TenantOverviewCopyWith<$Res> implements $TenantOverviewCopyWith<$Res> {
  factory _$TenantOverviewCopyWith(_TenantOverview value, $Res Function(_TenantOverview) _then) = __$TenantOverviewCopyWithImpl;
@override @useResult
$Res call({
 String leaseId, String tenantName, String leaseStart, int rentAmountCents, int? depositAmountCents, int utilityDueOffsetMonths,@UtilityDueDayConverter() Object utilityDueDay, List<TenantMonth> months
});




}
/// @nodoc
class __$TenantOverviewCopyWithImpl<$Res>
    implements _$TenantOverviewCopyWith<$Res> {
  __$TenantOverviewCopyWithImpl(this._self, this._then);

  final _TenantOverview _self;
  final $Res Function(_TenantOverview) _then;

/// Create a copy of TenantOverview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leaseId = null,Object? tenantName = null,Object? leaseStart = null,Object? rentAmountCents = null,Object? depositAmountCents = freezed,Object? utilityDueOffsetMonths = null,Object? utilityDueDay = null,Object? months = null,}) {
  return _then(_TenantOverview(
leaseId: null == leaseId ? _self.leaseId : leaseId // ignore: cast_nullable_to_non_nullable
as String,tenantName: null == tenantName ? _self.tenantName : tenantName // ignore: cast_nullable_to_non_nullable
as String,leaseStart: null == leaseStart ? _self.leaseStart : leaseStart // ignore: cast_nullable_to_non_nullable
as String,rentAmountCents: null == rentAmountCents ? _self.rentAmountCents : rentAmountCents // ignore: cast_nullable_to_non_nullable
as int,depositAmountCents: freezed == depositAmountCents ? _self.depositAmountCents : depositAmountCents // ignore: cast_nullable_to_non_nullable
as int?,utilityDueOffsetMonths: null == utilityDueOffsetMonths ? _self.utilityDueOffsetMonths : utilityDueOffsetMonths // ignore: cast_nullable_to_non_nullable
as int,utilityDueDay: null == utilityDueDay ? _self.utilityDueDay : utilityDueDay ,months: null == months ? _self._months : months // ignore: cast_nullable_to_non_nullable
as List<TenantMonth>,
  ));
}


}


/// @nodoc
mixin _$TenantMonth {

 String get month; int get totalCents;/// Rounding carried in from earlier utilities: positive = credit.
 int get utilityCreditCents; int get payableCents; TenantCharge? get rent; List<TenantCharge> get utilities;
/// Create a copy of TenantMonth
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TenantMonthCopyWith<TenantMonth> get copyWith => _$TenantMonthCopyWithImpl<TenantMonth>(this as TenantMonth, _$identity);

  /// Serializes this TenantMonth to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TenantMonth;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TenantMonth&&(identical(other.month, _this.month) || other.month == _this.month)&&(identical(other.totalCents, _this.totalCents) || other.totalCents == _this.totalCents)&&(identical(other.utilityCreditCents, _this.utilityCreditCents) || other.utilityCreditCents == _this.utilityCreditCents)&&(identical(other.payableCents, _this.payableCents) || other.payableCents == _this.payableCents)&&(identical(other.rent, _this.rent) || other.rent == _this.rent)&&const DeepCollectionEquality().equals(other.utilities, _this.utilities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TenantMonth;
  return Object.hash(runtimeType,_this.month,_this.totalCents,_this.utilityCreditCents,_this.payableCents,_this.rent,const DeepCollectionEquality().hash(_this.utilities));
}

@override
String toString() {
  final _this = this as TenantMonth;
  return 'TenantMonth(month: ${_this.month}, totalCents: ${_this.totalCents}, utilityCreditCents: ${_this.utilityCreditCents}, payableCents: ${_this.payableCents}, rent: ${_this.rent}, utilities: ${_this.utilities})';
}


}

/// @nodoc
abstract mixin class $TenantMonthCopyWith<$Res>  {
  factory $TenantMonthCopyWith(TenantMonth value, $Res Function(TenantMonth) _then) = _$TenantMonthCopyWithImpl;
@useResult
$Res call({
 String month, int totalCents, int utilityCreditCents, int payableCents, TenantCharge? rent, List<TenantCharge> utilities
});


$TenantChargeCopyWith<$Res>? get rent;

}
/// @nodoc
class _$TenantMonthCopyWithImpl<$Res>
    implements $TenantMonthCopyWith<$Res> {
  _$TenantMonthCopyWithImpl(this._self, this._then);

  final TenantMonth _self;
  final $Res Function(TenantMonth) _then;

/// Create a copy of TenantMonth
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? month = null,Object? totalCents = null,Object? utilityCreditCents = null,Object? payableCents = null,Object? rent = freezed,Object? utilities = null,}) {
  return _then(TenantMonth(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,totalCents: null == totalCents ? _self.totalCents : totalCents // ignore: cast_nullable_to_non_nullable
as int,utilityCreditCents: null == utilityCreditCents ? _self.utilityCreditCents : utilityCreditCents // ignore: cast_nullable_to_non_nullable
as int,payableCents: null == payableCents ? _self.payableCents : payableCents // ignore: cast_nullable_to_non_nullable
as int,rent: freezed == rent ? _self.rent : rent // ignore: cast_nullable_to_non_nullable
as TenantCharge?,utilities: null == utilities ? _self.utilities : utilities // ignore: cast_nullable_to_non_nullable
as List<TenantCharge>,
  ));
}
/// Create a copy of TenantMonth
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantChargeCopyWith<$Res>? get rent {
    if (_self.rent == null) {
    return null;
  }

  return $TenantChargeCopyWith<$Res>(_self.rent!, (value) {
    return _then(_self.copyWith(rent: value));
  });
}
}


/// Adds pattern-matching-related methods to [TenantMonth].
extension TenantMonthPatterns on TenantMonth {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TenantMonth value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TenantMonth() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TenantMonth value)  $default,){
final _that = this;
switch (_that) {
case _TenantMonth():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TenantMonth value)?  $default,){
final _that = this;
switch (_that) {
case _TenantMonth() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String month,  int totalCents,  int utilityCreditCents,  int payableCents,  TenantCharge? rent,  List<TenantCharge> utilities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TenantMonth() when $default != null:
return $default(_that.month,_that.totalCents,_that.utilityCreditCents,_that.payableCents,_that.rent,_that.utilities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String month,  int totalCents,  int utilityCreditCents,  int payableCents,  TenantCharge? rent,  List<TenantCharge> utilities)  $default,) {final _that = this;
switch (_that) {
case _TenantMonth():
return $default(_that.month,_that.totalCents,_that.utilityCreditCents,_that.payableCents,_that.rent,_that.utilities);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String month,  int totalCents,  int utilityCreditCents,  int payableCents,  TenantCharge? rent,  List<TenantCharge> utilities)?  $default,) {final _that = this;
switch (_that) {
case _TenantMonth() when $default != null:
return $default(_that.month,_that.totalCents,_that.utilityCreditCents,_that.payableCents,_that.rent,_that.utilities);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TenantMonth implements TenantMonth {
  const _TenantMonth({required this.month, required this.totalCents, required this.utilityCreditCents, required this.payableCents, this.rent, required  List<TenantCharge> utilities}): _utilities = utilities;
  factory _TenantMonth.fromJson(Map<String, dynamic> json) => _$TenantMonthFromJson(json);

@override final  String month;
@override final  int totalCents;
/// Rounding carried in from earlier utilities: positive = credit.
@override final  int utilityCreditCents;
@override final  int payableCents;
@override final  TenantCharge? rent;
 final  List<TenantCharge> _utilities;
@override List<TenantCharge> get utilities {
  if (_utilities is EqualUnmodifiableListView) return _utilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_utilities);
}


/// Create a copy of TenantMonth
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TenantMonthCopyWith<_TenantMonth> get copyWith => __$TenantMonthCopyWithImpl<_TenantMonth>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TenantMonthToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TenantMonth&&(identical(other.month, month) || other.month == month)&&(identical(other.totalCents, totalCents) || other.totalCents == totalCents)&&(identical(other.utilityCreditCents, utilityCreditCents) || other.utilityCreditCents == utilityCreditCents)&&(identical(other.payableCents, payableCents) || other.payableCents == payableCents)&&(identical(other.rent, rent) || other.rent == rent)&&const DeepCollectionEquality().equals(other.utilities, _utilities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,month,totalCents,utilityCreditCents,payableCents,rent,const DeepCollectionEquality().hash(_utilities));
}

@override
String toString() {
    return 'TenantMonth(month: $month, totalCents: $totalCents, utilityCreditCents: $utilityCreditCents, payableCents: $payableCents, rent: $rent, utilities: $utilities)';
}


}

/// @nodoc
abstract mixin class _$TenantMonthCopyWith<$Res> implements $TenantMonthCopyWith<$Res> {
  factory _$TenantMonthCopyWith(_TenantMonth value, $Res Function(_TenantMonth) _then) = __$TenantMonthCopyWithImpl;
@override @useResult
$Res call({
 String month, int totalCents, int utilityCreditCents, int payableCents, TenantCharge? rent, List<TenantCharge> utilities
});


@override $TenantChargeCopyWith<$Res>? get rent;

}
/// @nodoc
class __$TenantMonthCopyWithImpl<$Res>
    implements _$TenantMonthCopyWith<$Res> {
  __$TenantMonthCopyWithImpl(this._self, this._then);

  final _TenantMonth _self;
  final $Res Function(_TenantMonth) _then;

/// Create a copy of TenantMonth
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = null,Object? totalCents = null,Object? utilityCreditCents = null,Object? payableCents = null,Object? rent = freezed,Object? utilities = null,}) {
  return _then(_TenantMonth(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,totalCents: null == totalCents ? _self.totalCents : totalCents // ignore: cast_nullable_to_non_nullable
as int,utilityCreditCents: null == utilityCreditCents ? _self.utilityCreditCents : utilityCreditCents // ignore: cast_nullable_to_non_nullable
as int,payableCents: null == payableCents ? _self.payableCents : payableCents // ignore: cast_nullable_to_non_nullable
as int,rent: freezed == rent ? _self.rent : rent // ignore: cast_nullable_to_non_nullable
as TenantCharge?,utilities: null == utilities ? _self._utilities : utilities // ignore: cast_nullable_to_non_nullable
as List<TenantCharge>,
  ));
}

/// Create a copy of TenantMonth
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantChargeCopyWith<$Res>? get rent {
    if (_self.rent == null) {
    return null;
  }

  return $TenantChargeCopyWith<$Res>(_self.rent!, (value) {
    return _then(_self.copyWith(rent: value));
  });
}
}


/// @nodoc
mixin _$TenantCharge {

@JsonKey(name: '_id') String get id; String get description; int get amountCents; String get dueDate; String? get paidAt; String get periodMonth; ChargeStatus get status; ChargeType get type; ChargeBreakdown? get breakdown;
/// Create a copy of TenantCharge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TenantChargeCopyWith<TenantCharge> get copyWith => _$TenantChargeCopyWithImpl<TenantCharge>(this as TenantCharge, _$identity);

  /// Serializes this TenantCharge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TenantCharge;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TenantCharge&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.amountCents, _this.amountCents) || other.amountCents == _this.amountCents)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.paidAt, _this.paidAt) || other.paidAt == _this.paidAt)&&(identical(other.periodMonth, _this.periodMonth) || other.periodMonth == _this.periodMonth)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.breakdown, _this.breakdown) || other.breakdown == _this.breakdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TenantCharge;
  return Object.hash(runtimeType,_this.id,_this.description,_this.amountCents,_this.dueDate,_this.paidAt,_this.periodMonth,_this.status,_this.type,_this.breakdown);
}

@override
String toString() {
  final _this = this as TenantCharge;
  return 'TenantCharge(id: ${_this.id}, description: ${_this.description}, amountCents: ${_this.amountCents}, dueDate: ${_this.dueDate}, paidAt: ${_this.paidAt}, periodMonth: ${_this.periodMonth}, status: ${_this.status}, type: ${_this.type}, breakdown: ${_this.breakdown})';
}


}

/// @nodoc
abstract mixin class $TenantChargeCopyWith<$Res>  {
  factory $TenantChargeCopyWith(TenantCharge value, $Res Function(TenantCharge) _then) = _$TenantChargeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String description, int amountCents, String dueDate, String? paidAt, String periodMonth, ChargeStatus status, ChargeType type, ChargeBreakdown? breakdown
});


$ChargeBreakdownCopyWith<$Res>? get breakdown;

}
/// @nodoc
class _$TenantChargeCopyWithImpl<$Res>
    implements $TenantChargeCopyWith<$Res> {
  _$TenantChargeCopyWithImpl(this._self, this._then);

  final TenantCharge _self;
  final $Res Function(TenantCharge) _then;

/// Create a copy of TenantCharge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? description = null,Object? amountCents = null,Object? dueDate = null,Object? paidAt = freezed,Object? periodMonth = null,Object? status = null,Object? type = null,Object? breakdown = freezed,}) {
  return _then(TenantCharge(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,amountCents: null == amountCents ? _self.amountCents : amountCents // ignore: cast_nullable_to_non_nullable
as int,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as String?,periodMonth: null == periodMonth ? _self.periodMonth : periodMonth // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChargeStatus,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ChargeType,breakdown: freezed == breakdown ? _self.breakdown : breakdown // ignore: cast_nullable_to_non_nullable
as ChargeBreakdown?,
  ));
}
/// Create a copy of TenantCharge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChargeBreakdownCopyWith<$Res>? get breakdown {
    if (_self.breakdown == null) {
    return null;
  }

  return $ChargeBreakdownCopyWith<$Res>(_self.breakdown!, (value) {
    return _then(_self.copyWith(breakdown: value));
  });
}
}


/// Adds pattern-matching-related methods to [TenantCharge].
extension TenantChargePatterns on TenantCharge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TenantCharge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TenantCharge() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TenantCharge value)  $default,){
final _that = this;
switch (_that) {
case _TenantCharge():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TenantCharge value)?  $default,){
final _that = this;
switch (_that) {
case _TenantCharge() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String description,  int amountCents,  String dueDate,  String? paidAt,  String periodMonth,  ChargeStatus status,  ChargeType type,  ChargeBreakdown? breakdown)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TenantCharge() when $default != null:
return $default(_that.id,_that.description,_that.amountCents,_that.dueDate,_that.paidAt,_that.periodMonth,_that.status,_that.type,_that.breakdown);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String description,  int amountCents,  String dueDate,  String? paidAt,  String periodMonth,  ChargeStatus status,  ChargeType type,  ChargeBreakdown? breakdown)  $default,) {final _that = this;
switch (_that) {
case _TenantCharge():
return $default(_that.id,_that.description,_that.amountCents,_that.dueDate,_that.paidAt,_that.periodMonth,_that.status,_that.type,_that.breakdown);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String description,  int amountCents,  String dueDate,  String? paidAt,  String periodMonth,  ChargeStatus status,  ChargeType type,  ChargeBreakdown? breakdown)?  $default,) {final _that = this;
switch (_that) {
case _TenantCharge() when $default != null:
return $default(_that.id,_that.description,_that.amountCents,_that.dueDate,_that.paidAt,_that.periodMonth,_that.status,_that.type,_that.breakdown);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TenantCharge implements TenantCharge {
  const _TenantCharge({@JsonKey(name: '_id') required this.id, required this.description, required this.amountCents, required this.dueDate, this.paidAt, required this.periodMonth, required this.status, required this.type, this.breakdown});
  factory _TenantCharge.fromJson(Map<String, dynamic> json) => _$TenantChargeFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String description;
@override final  int amountCents;
@override final  String dueDate;
@override final  String? paidAt;
@override final  String periodMonth;
@override final  ChargeStatus status;
@override final  ChargeType type;
@override final  ChargeBreakdown? breakdown;

/// Create a copy of TenantCharge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TenantChargeCopyWith<_TenantCharge> get copyWith => __$TenantChargeCopyWithImpl<_TenantCharge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TenantChargeToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TenantCharge&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&(identical(other.amountCents, amountCents) || other.amountCents == amountCents)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.periodMonth, periodMonth) || other.periodMonth == periodMonth)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.breakdown, breakdown) || other.breakdown == breakdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,description,amountCents,dueDate,paidAt,periodMonth,status,type,breakdown);
}

@override
String toString() {
    return 'TenantCharge(id: $id, description: $description, amountCents: $amountCents, dueDate: $dueDate, paidAt: $paidAt, periodMonth: $periodMonth, status: $status, type: $type, breakdown: $breakdown)';
}


}

/// @nodoc
abstract mixin class _$TenantChargeCopyWith<$Res> implements $TenantChargeCopyWith<$Res> {
  factory _$TenantChargeCopyWith(_TenantCharge value, $Res Function(_TenantCharge) _then) = __$TenantChargeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String description, int amountCents, String dueDate, String? paidAt, String periodMonth, ChargeStatus status, ChargeType type, ChargeBreakdown? breakdown
});


@override $ChargeBreakdownCopyWith<$Res>? get breakdown;

}
/// @nodoc
class __$TenantChargeCopyWithImpl<$Res>
    implements _$TenantChargeCopyWith<$Res> {
  __$TenantChargeCopyWithImpl(this._self, this._then);

  final _TenantCharge _self;
  final $Res Function(_TenantCharge) _then;

/// Create a copy of TenantCharge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? description = null,Object? amountCents = null,Object? dueDate = null,Object? paidAt = freezed,Object? periodMonth = null,Object? status = null,Object? type = null,Object? breakdown = freezed,}) {
  return _then(_TenantCharge(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,amountCents: null == amountCents ? _self.amountCents : amountCents // ignore: cast_nullable_to_non_nullable
as int,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as String?,periodMonth: null == periodMonth ? _self.periodMonth : periodMonth // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChargeStatus,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ChargeType,breakdown: freezed == breakdown ? _self.breakdown : breakdown // ignore: cast_nullable_to_non_nullable
as ChargeBreakdown?,
  ));
}

/// Create a copy of TenantCharge
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChargeBreakdownCopyWith<$Res>? get breakdown {
    if (_self.breakdown == null) {
    return null;
  }

  return $ChargeBreakdownCopyWith<$Res>(_self.breakdown!, (value) {
    return _then(_self.copyWith(breakdown: value));
  });
}
}


/// @nodoc
mixin _$TenantLease {

 String get leaseId; String get tenantName; String get propertyName; String get unitName; LeaseStatus get status;
/// Create a copy of TenantLease
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TenantLeaseCopyWith<TenantLease> get copyWith => _$TenantLeaseCopyWithImpl<TenantLease>(this as TenantLease, _$identity);

  /// Serializes this TenantLease to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TenantLease;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TenantLease&&(identical(other.leaseId, _this.leaseId) || other.leaseId == _this.leaseId)&&(identical(other.tenantName, _this.tenantName) || other.tenantName == _this.tenantName)&&(identical(other.propertyName, _this.propertyName) || other.propertyName == _this.propertyName)&&(identical(other.unitName, _this.unitName) || other.unitName == _this.unitName)&&(identical(other.status, _this.status) || other.status == _this.status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TenantLease;
  return Object.hash(runtimeType,_this.leaseId,_this.tenantName,_this.propertyName,_this.unitName,_this.status);
}

@override
String toString() {
  final _this = this as TenantLease;
  return 'TenantLease(leaseId: ${_this.leaseId}, tenantName: ${_this.tenantName}, propertyName: ${_this.propertyName}, unitName: ${_this.unitName}, status: ${_this.status})';
}


}

/// @nodoc
abstract mixin class $TenantLeaseCopyWith<$Res>  {
  factory $TenantLeaseCopyWith(TenantLease value, $Res Function(TenantLease) _then) = _$TenantLeaseCopyWithImpl;
@useResult
$Res call({
 String leaseId, String tenantName, String propertyName, String unitName, LeaseStatus status
});




}
/// @nodoc
class _$TenantLeaseCopyWithImpl<$Res>
    implements $TenantLeaseCopyWith<$Res> {
  _$TenantLeaseCopyWithImpl(this._self, this._then);

  final TenantLease _self;
  final $Res Function(TenantLease) _then;

/// Create a copy of TenantLease
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? leaseId = null,Object? tenantName = null,Object? propertyName = null,Object? unitName = null,Object? status = null,}) {
  return _then(TenantLease(
leaseId: null == leaseId ? _self.leaseId : leaseId // ignore: cast_nullable_to_non_nullable
as String,tenantName: null == tenantName ? _self.tenantName : tenantName // ignore: cast_nullable_to_non_nullable
as String,propertyName: null == propertyName ? _self.propertyName : propertyName // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LeaseStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [TenantLease].
extension TenantLeasePatterns on TenantLease {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TenantLease value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TenantLease() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TenantLease value)  $default,){
final _that = this;
switch (_that) {
case _TenantLease():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TenantLease value)?  $default,){
final _that = this;
switch (_that) {
case _TenantLease() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String leaseId,  String tenantName,  String propertyName,  String unitName,  LeaseStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TenantLease() when $default != null:
return $default(_that.leaseId,_that.tenantName,_that.propertyName,_that.unitName,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String leaseId,  String tenantName,  String propertyName,  String unitName,  LeaseStatus status)  $default,) {final _that = this;
switch (_that) {
case _TenantLease():
return $default(_that.leaseId,_that.tenantName,_that.propertyName,_that.unitName,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String leaseId,  String tenantName,  String propertyName,  String unitName,  LeaseStatus status)?  $default,) {final _that = this;
switch (_that) {
case _TenantLease() when $default != null:
return $default(_that.leaseId,_that.tenantName,_that.propertyName,_that.unitName,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TenantLease implements TenantLease {
  const _TenantLease({required this.leaseId, required this.tenantName, required this.propertyName, required this.unitName, required this.status});
  factory _TenantLease.fromJson(Map<String, dynamic> json) => _$TenantLeaseFromJson(json);

@override final  String leaseId;
@override final  String tenantName;
@override final  String propertyName;
@override final  String unitName;
@override final  LeaseStatus status;

/// Create a copy of TenantLease
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TenantLeaseCopyWith<_TenantLease> get copyWith => __$TenantLeaseCopyWithImpl<_TenantLease>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TenantLeaseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TenantLease&&(identical(other.leaseId, leaseId) || other.leaseId == leaseId)&&(identical(other.tenantName, tenantName) || other.tenantName == tenantName)&&(identical(other.propertyName, propertyName) || other.propertyName == propertyName)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,leaseId,tenantName,propertyName,unitName,status);
}

@override
String toString() {
    return 'TenantLease(leaseId: $leaseId, tenantName: $tenantName, propertyName: $propertyName, unitName: $unitName, status: $status)';
}


}

/// @nodoc
abstract mixin class _$TenantLeaseCopyWith<$Res> implements $TenantLeaseCopyWith<$Res> {
  factory _$TenantLeaseCopyWith(_TenantLease value, $Res Function(_TenantLease) _then) = __$TenantLeaseCopyWithImpl;
@override @useResult
$Res call({
 String leaseId, String tenantName, String propertyName, String unitName, LeaseStatus status
});




}
/// @nodoc
class __$TenantLeaseCopyWithImpl<$Res>
    implements _$TenantLeaseCopyWith<$Res> {
  __$TenantLeaseCopyWithImpl(this._self, this._then);

  final _TenantLease _self;
  final $Res Function(_TenantLease) _then;

/// Create a copy of TenantLease
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leaseId = null,Object? tenantName = null,Object? propertyName = null,Object? unitName = null,Object? status = null,}) {
  return _then(_TenantLease(
leaseId: null == leaseId ? _self.leaseId : leaseId // ignore: cast_nullable_to_non_nullable
as String,tenantName: null == tenantName ? _self.tenantName : tenantName // ignore: cast_nullable_to_non_nullable
as String,propertyName: null == propertyName ? _self.propertyName : propertyName // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LeaseStatus,
  ));
}


}


/// @nodoc
mixin _$TenantDocument {

@JsonKey(name: '_id') String get id; String get title; int get createdAt; bool get available; String? get utilityBillEntryId;
/// Create a copy of TenantDocument
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TenantDocumentCopyWith<TenantDocument> get copyWith => _$TenantDocumentCopyWithImpl<TenantDocument>(this as TenantDocument, _$identity);

  /// Serializes this TenantDocument to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TenantDocument;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TenantDocument&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.available, _this.available) || other.available == _this.available)&&(identical(other.utilityBillEntryId, _this.utilityBillEntryId) || other.utilityBillEntryId == _this.utilityBillEntryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TenantDocument;
  return Object.hash(runtimeType,_this.id,_this.title,_this.createdAt,_this.available,_this.utilityBillEntryId);
}

@override
String toString() {
  final _this = this as TenantDocument;
  return 'TenantDocument(id: ${_this.id}, title: ${_this.title}, createdAt: ${_this.createdAt}, available: ${_this.available}, utilityBillEntryId: ${_this.utilityBillEntryId})';
}


}

/// @nodoc
abstract mixin class $TenantDocumentCopyWith<$Res>  {
  factory $TenantDocumentCopyWith(TenantDocument value, $Res Function(TenantDocument) _then) = _$TenantDocumentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String title, int createdAt, bool available, String? utilityBillEntryId
});




}
/// @nodoc
class _$TenantDocumentCopyWithImpl<$Res>
    implements $TenantDocumentCopyWith<$Res> {
  _$TenantDocumentCopyWithImpl(this._self, this._then);

  final TenantDocument _self;
  final $Res Function(TenantDocument) _then;

/// Create a copy of TenantDocument
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? createdAt = null,Object? available = null,Object? utilityBillEntryId = freezed,}) {
  return _then(TenantDocument(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,utilityBillEntryId: freezed == utilityBillEntryId ? _self.utilityBillEntryId : utilityBillEntryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TenantDocument].
extension TenantDocumentPatterns on TenantDocument {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TenantDocument value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TenantDocument() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TenantDocument value)  $default,){
final _that = this;
switch (_that) {
case _TenantDocument():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TenantDocument value)?  $default,){
final _that = this;
switch (_that) {
case _TenantDocument() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String title,  int createdAt,  bool available,  String? utilityBillEntryId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TenantDocument() when $default != null:
return $default(_that.id,_that.title,_that.createdAt,_that.available,_that.utilityBillEntryId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String title,  int createdAt,  bool available,  String? utilityBillEntryId)  $default,) {final _that = this;
switch (_that) {
case _TenantDocument():
return $default(_that.id,_that.title,_that.createdAt,_that.available,_that.utilityBillEntryId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String title,  int createdAt,  bool available,  String? utilityBillEntryId)?  $default,) {final _that = this;
switch (_that) {
case _TenantDocument() when $default != null:
return $default(_that.id,_that.title,_that.createdAt,_that.available,_that.utilityBillEntryId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TenantDocument implements TenantDocument {
  const _TenantDocument({@JsonKey(name: '_id') required this.id, required this.title, required this.createdAt, required this.available, this.utilityBillEntryId});
  factory _TenantDocument.fromJson(Map<String, dynamic> json) => _$TenantDocumentFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String title;
@override final  int createdAt;
@override final  bool available;
@override final  String? utilityBillEntryId;

/// Create a copy of TenantDocument
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TenantDocumentCopyWith<_TenantDocument> get copyWith => __$TenantDocumentCopyWithImpl<_TenantDocument>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TenantDocumentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TenantDocument&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.available, available) || other.available == available)&&(identical(other.utilityBillEntryId, utilityBillEntryId) || other.utilityBillEntryId == utilityBillEntryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,title,createdAt,available,utilityBillEntryId);
}

@override
String toString() {
    return 'TenantDocument(id: $id, title: $title, createdAt: $createdAt, available: $available, utilityBillEntryId: $utilityBillEntryId)';
}


}

/// @nodoc
abstract mixin class _$TenantDocumentCopyWith<$Res> implements $TenantDocumentCopyWith<$Res> {
  factory _$TenantDocumentCopyWith(_TenantDocument value, $Res Function(_TenantDocument) _then) = __$TenantDocumentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String title, int createdAt, bool available, String? utilityBillEntryId
});




}
/// @nodoc
class __$TenantDocumentCopyWithImpl<$Res>
    implements _$TenantDocumentCopyWith<$Res> {
  __$TenantDocumentCopyWithImpl(this._self, this._then);

  final _TenantDocument _self;
  final $Res Function(_TenantDocument) _then;

/// Create a copy of TenantDocument
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? createdAt = null,Object? available = null,Object? utilityBillEntryId = freezed,}) {
  return _then(_TenantDocument(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int,available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,utilityBillEntryId: freezed == utilityBillEntryId ? _self.utilityBillEntryId : utilityBillEntryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TenantMeters {

 List<MeterCategory> get categories; List<MeterReading> get readings;
/// Create a copy of TenantMeters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TenantMetersCopyWith<TenantMeters> get copyWith => _$TenantMetersCopyWithImpl<TenantMeters>(this as TenantMeters, _$identity);

  /// Serializes this TenantMeters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TenantMeters;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TenantMeters&&const DeepCollectionEquality().equals(other.categories, _this.categories)&&const DeepCollectionEquality().equals(other.readings, _this.readings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TenantMeters;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.categories),const DeepCollectionEquality().hash(_this.readings));
}

@override
String toString() {
  final _this = this as TenantMeters;
  return 'TenantMeters(categories: ${_this.categories}, readings: ${_this.readings})';
}


}

/// @nodoc
abstract mixin class $TenantMetersCopyWith<$Res>  {
  factory $TenantMetersCopyWith(TenantMeters value, $Res Function(TenantMeters) _then) = _$TenantMetersCopyWithImpl;
@useResult
$Res call({
 List<MeterCategory> categories, List<MeterReading> readings
});




}
/// @nodoc
class _$TenantMetersCopyWithImpl<$Res>
    implements $TenantMetersCopyWith<$Res> {
  _$TenantMetersCopyWithImpl(this._self, this._then);

  final TenantMeters _self;
  final $Res Function(TenantMeters) _then;

/// Create a copy of TenantMeters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,Object? readings = null,}) {
  return _then(TenantMeters(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<MeterCategory>,readings: null == readings ? _self.readings : readings // ignore: cast_nullable_to_non_nullable
as List<MeterReading>,
  ));
}

}


/// Adds pattern-matching-related methods to [TenantMeters].
extension TenantMetersPatterns on TenantMeters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TenantMeters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TenantMeters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TenantMeters value)  $default,){
final _that = this;
switch (_that) {
case _TenantMeters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TenantMeters value)?  $default,){
final _that = this;
switch (_that) {
case _TenantMeters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MeterCategory> categories,  List<MeterReading> readings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TenantMeters() when $default != null:
return $default(_that.categories,_that.readings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MeterCategory> categories,  List<MeterReading> readings)  $default,) {final _that = this;
switch (_that) {
case _TenantMeters():
return $default(_that.categories,_that.readings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MeterCategory> categories,  List<MeterReading> readings)?  $default,) {final _that = this;
switch (_that) {
case _TenantMeters() when $default != null:
return $default(_that.categories,_that.readings);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TenantMeters implements TenantMeters {
  const _TenantMeters({required  List<MeterCategory> categories, required  List<MeterReading> readings}): _categories = categories,_readings = readings;
  factory _TenantMeters.fromJson(Map<String, dynamic> json) => _$TenantMetersFromJson(json);

 final  List<MeterCategory> _categories;
@override List<MeterCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<MeterReading> _readings;
@override List<MeterReading> get readings {
  if (_readings is EqualUnmodifiableListView) return _readings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_readings);
}


/// Create a copy of TenantMeters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TenantMetersCopyWith<_TenantMeters> get copyWith => __$TenantMetersCopyWithImpl<_TenantMeters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TenantMetersToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TenantMeters&&const DeepCollectionEquality().equals(other.categories, _categories)&&const DeepCollectionEquality().equals(other.readings, _readings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_readings));
}

@override
String toString() {
    return 'TenantMeters(categories: $categories, readings: $readings)';
}


}

/// @nodoc
abstract mixin class _$TenantMetersCopyWith<$Res> implements $TenantMetersCopyWith<$Res> {
  factory _$TenantMetersCopyWith(_TenantMeters value, $Res Function(_TenantMeters) _then) = __$TenantMetersCopyWithImpl;
@override @useResult
$Res call({
 List<MeterCategory> categories, List<MeterReading> readings
});




}
/// @nodoc
class __$TenantMetersCopyWithImpl<$Res>
    implements _$TenantMetersCopyWith<$Res> {
  __$TenantMetersCopyWithImpl(this._self, this._then);

  final _TenantMeters _self;
  final $Res Function(_TenantMeters) _then;

/// Create a copy of TenantMeters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? readings = null,}) {
  return _then(_TenantMeters(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<MeterCategory>,readings: null == readings ? _self._readings : readings // ignore: cast_nullable_to_non_nullable
as List<MeterReading>,
  ));
}


}


/// @nodoc
mixin _$MeterCategory {

@JsonKey(name: '_id') String get id; String get name; String get unit;
/// Create a copy of MeterCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeterCategoryCopyWith<MeterCategory> get copyWith => _$MeterCategoryCopyWithImpl<MeterCategory>(this as MeterCategory, _$identity);

  /// Serializes this MeterCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MeterCategory;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeterCategory&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.unit, _this.unit) || other.unit == _this.unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MeterCategory;
  return Object.hash(runtimeType,_this.id,_this.name,_this.unit);
}

@override
String toString() {
  final _this = this as MeterCategory;
  return 'MeterCategory(id: ${_this.id}, name: ${_this.name}, unit: ${_this.unit})';
}


}

/// @nodoc
abstract mixin class $MeterCategoryCopyWith<$Res>  {
  factory $MeterCategoryCopyWith(MeterCategory value, $Res Function(MeterCategory) _then) = _$MeterCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String name, String unit
});




}
/// @nodoc
class _$MeterCategoryCopyWithImpl<$Res>
    implements $MeterCategoryCopyWith<$Res> {
  _$MeterCategoryCopyWithImpl(this._self, this._then);

  final MeterCategory _self;
  final $Res Function(MeterCategory) _then;

/// Create a copy of MeterCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? unit = null,}) {
  return _then(MeterCategory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MeterCategory].
extension MeterCategoryPatterns on MeterCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MeterCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MeterCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MeterCategory value)  $default,){
final _that = this;
switch (_that) {
case _MeterCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MeterCategory value)?  $default,){
final _that = this;
switch (_that) {
case _MeterCategory() when $default != null:
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
case _MeterCategory() when $default != null:
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
case _MeterCategory():
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
case _MeterCategory() when $default != null:
return $default(_that.id,_that.name,_that.unit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MeterCategory implements MeterCategory {
  const _MeterCategory({@JsonKey(name: '_id') required this.id, required this.name, required this.unit});
  factory _MeterCategory.fromJson(Map<String, dynamic> json) => _$MeterCategoryFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String name;
@override final  String unit;

/// Create a copy of MeterCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeterCategoryCopyWith<_MeterCategory> get copyWith => __$MeterCategoryCopyWithImpl<_MeterCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeterCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeterCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,unit);
}

@override
String toString() {
    return 'MeterCategory(id: $id, name: $name, unit: $unit)';
}


}

/// @nodoc
abstract mixin class _$MeterCategoryCopyWith<$Res> implements $MeterCategoryCopyWith<$Res> {
  factory _$MeterCategoryCopyWith(_MeterCategory value, $Res Function(_MeterCategory) _then) = __$MeterCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String name, String unit
});




}
/// @nodoc
class __$MeterCategoryCopyWithImpl<$Res>
    implements _$MeterCategoryCopyWith<$Res> {
  __$MeterCategoryCopyWithImpl(this._self, this._then);

  final _MeterCategory _self;
  final $Res Function(_MeterCategory) _then;

/// Create a copy of MeterCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? unit = null,}) {
  return _then(_MeterCategory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MeterReading {

 String get categoryId; String get consumptionMonth; double get reading; double? get previousReading; double? get calculatedUsage;
/// Create a copy of MeterReading
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeterReadingCopyWith<MeterReading> get copyWith => _$MeterReadingCopyWithImpl<MeterReading>(this as MeterReading, _$identity);

  /// Serializes this MeterReading to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MeterReading;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeterReading&&(identical(other.categoryId, _this.categoryId) || other.categoryId == _this.categoryId)&&(identical(other.consumptionMonth, _this.consumptionMonth) || other.consumptionMonth == _this.consumptionMonth)&&(identical(other.reading, _this.reading) || other.reading == _this.reading)&&(identical(other.previousReading, _this.previousReading) || other.previousReading == _this.previousReading)&&(identical(other.calculatedUsage, _this.calculatedUsage) || other.calculatedUsage == _this.calculatedUsage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MeterReading;
  return Object.hash(runtimeType,_this.categoryId,_this.consumptionMonth,_this.reading,_this.previousReading,_this.calculatedUsage);
}

@override
String toString() {
  final _this = this as MeterReading;
  return 'MeterReading(categoryId: ${_this.categoryId}, consumptionMonth: ${_this.consumptionMonth}, reading: ${_this.reading}, previousReading: ${_this.previousReading}, calculatedUsage: ${_this.calculatedUsage})';
}


}

/// @nodoc
abstract mixin class $MeterReadingCopyWith<$Res>  {
  factory $MeterReadingCopyWith(MeterReading value, $Res Function(MeterReading) _then) = _$MeterReadingCopyWithImpl;
@useResult
$Res call({
 String categoryId, String consumptionMonth, double reading, double? previousReading, double? calculatedUsage
});




}
/// @nodoc
class _$MeterReadingCopyWithImpl<$Res>
    implements $MeterReadingCopyWith<$Res> {
  _$MeterReadingCopyWithImpl(this._self, this._then);

  final MeterReading _self;
  final $Res Function(MeterReading) _then;

/// Create a copy of MeterReading
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryId = null,Object? consumptionMonth = null,Object? reading = null,Object? previousReading = freezed,Object? calculatedUsage = freezed,}) {
  return _then(MeterReading(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,consumptionMonth: null == consumptionMonth ? _self.consumptionMonth : consumptionMonth // ignore: cast_nullable_to_non_nullable
as String,reading: null == reading ? _self.reading : reading // ignore: cast_nullable_to_non_nullable
as double,previousReading: freezed == previousReading ? _self.previousReading : previousReading // ignore: cast_nullable_to_non_nullable
as double?,calculatedUsage: freezed == calculatedUsage ? _self.calculatedUsage : calculatedUsage // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [MeterReading].
extension MeterReadingPatterns on MeterReading {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MeterReading value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MeterReading() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MeterReading value)  $default,){
final _that = this;
switch (_that) {
case _MeterReading():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MeterReading value)?  $default,){
final _that = this;
switch (_that) {
case _MeterReading() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String categoryId,  String consumptionMonth,  double reading,  double? previousReading,  double? calculatedUsage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MeterReading() when $default != null:
return $default(_that.categoryId,_that.consumptionMonth,_that.reading,_that.previousReading,_that.calculatedUsage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String categoryId,  String consumptionMonth,  double reading,  double? previousReading,  double? calculatedUsage)  $default,) {final _that = this;
switch (_that) {
case _MeterReading():
return $default(_that.categoryId,_that.consumptionMonth,_that.reading,_that.previousReading,_that.calculatedUsage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String categoryId,  String consumptionMonth,  double reading,  double? previousReading,  double? calculatedUsage)?  $default,) {final _that = this;
switch (_that) {
case _MeterReading() when $default != null:
return $default(_that.categoryId,_that.consumptionMonth,_that.reading,_that.previousReading,_that.calculatedUsage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MeterReading implements MeterReading {
  const _MeterReading({required this.categoryId, required this.consumptionMonth, required this.reading, this.previousReading, this.calculatedUsage});
  factory _MeterReading.fromJson(Map<String, dynamic> json) => _$MeterReadingFromJson(json);

@override final  String categoryId;
@override final  String consumptionMonth;
@override final  double reading;
@override final  double? previousReading;
@override final  double? calculatedUsage;

/// Create a copy of MeterReading
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeterReadingCopyWith<_MeterReading> get copyWith => __$MeterReadingCopyWithImpl<_MeterReading>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeterReadingToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeterReading&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.consumptionMonth, consumptionMonth) || other.consumptionMonth == consumptionMonth)&&(identical(other.reading, reading) || other.reading == reading)&&(identical(other.previousReading, previousReading) || other.previousReading == previousReading)&&(identical(other.calculatedUsage, calculatedUsage) || other.calculatedUsage == calculatedUsage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,categoryId,consumptionMonth,reading,previousReading,calculatedUsage);
}

@override
String toString() {
    return 'MeterReading(categoryId: $categoryId, consumptionMonth: $consumptionMonth, reading: $reading, previousReading: $previousReading, calculatedUsage: $calculatedUsage)';
}


}

/// @nodoc
abstract mixin class _$MeterReadingCopyWith<$Res> implements $MeterReadingCopyWith<$Res> {
  factory _$MeterReadingCopyWith(_MeterReading value, $Res Function(_MeterReading) _then) = __$MeterReadingCopyWithImpl;
@override @useResult
$Res call({
 String categoryId, String consumptionMonth, double reading, double? previousReading, double? calculatedUsage
});




}
/// @nodoc
class __$MeterReadingCopyWithImpl<$Res>
    implements _$MeterReadingCopyWith<$Res> {
  __$MeterReadingCopyWithImpl(this._self, this._then);

  final _MeterReading _self;
  final $Res Function(_MeterReading) _then;

/// Create a copy of MeterReading
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryId = null,Object? consumptionMonth = null,Object? reading = null,Object? previousReading = freezed,Object? calculatedUsage = freezed,}) {
  return _then(_MeterReading(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,consumptionMonth: null == consumptionMonth ? _self.consumptionMonth : consumptionMonth // ignore: cast_nullable_to_non_nullable
as String,reading: null == reading ? _self.reading : reading // ignore: cast_nullable_to_non_nullable
as double,previousReading: freezed == previousReading ? _self.previousReading : previousReading // ignore: cast_nullable_to_non_nullable
as double?,calculatedUsage: freezed == calculatedUsage ? _self.calculatedUsage : calculatedUsage // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
