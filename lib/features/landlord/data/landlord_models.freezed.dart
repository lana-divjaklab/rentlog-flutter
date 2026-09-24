// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'landlord_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardOverview {

 String get month; int get year; DashboardMoney get money; List<AttentionItem> get attention; List<DashboardLease> get leases;
/// Create a copy of DashboardOverview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardOverviewCopyWith<DashboardOverview> get copyWith => _$DashboardOverviewCopyWithImpl<DashboardOverview>(this as DashboardOverview, _$identity);

  /// Serializes this DashboardOverview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardOverview;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardOverview&&(identical(other.month, _this.month) || other.month == _this.month)&&(identical(other.year, _this.year) || other.year == _this.year)&&(identical(other.money, _this.money) || other.money == _this.money)&&const DeepCollectionEquality().equals(other.attention, _this.attention)&&const DeepCollectionEquality().equals(other.leases, _this.leases));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardOverview;
  return Object.hash(runtimeType,_this.month,_this.year,_this.money,const DeepCollectionEquality().hash(_this.attention),const DeepCollectionEquality().hash(_this.leases));
}

@override
String toString() {
  final _this = this as DashboardOverview;
  return 'DashboardOverview(month: ${_this.month}, year: ${_this.year}, money: ${_this.money}, attention: ${_this.attention}, leases: ${_this.leases})';
}


}

/// @nodoc
abstract mixin class $DashboardOverviewCopyWith<$Res>  {
  factory $DashboardOverviewCopyWith(DashboardOverview value, $Res Function(DashboardOverview) _then) = _$DashboardOverviewCopyWithImpl;
@useResult
$Res call({
 String month, int year, DashboardMoney money, List<AttentionItem> attention, List<DashboardLease> leases
});


$DashboardMoneyCopyWith<$Res> get money;

}
/// @nodoc
class _$DashboardOverviewCopyWithImpl<$Res>
    implements $DashboardOverviewCopyWith<$Res> {
  _$DashboardOverviewCopyWithImpl(this._self, this._then);

  final DashboardOverview _self;
  final $Res Function(DashboardOverview) _then;

/// Create a copy of DashboardOverview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? month = null,Object? year = null,Object? money = null,Object? attention = null,Object? leases = null,}) {
  return _then(DashboardOverview(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,money: null == money ? _self.money : money // ignore: cast_nullable_to_non_nullable
as DashboardMoney,attention: null == attention ? _self.attention : attention // ignore: cast_nullable_to_non_nullable
as List<AttentionItem>,leases: null == leases ? _self.leases : leases // ignore: cast_nullable_to_non_nullable
as List<DashboardLease>,
  ));
}
/// Create a copy of DashboardOverview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardMoneyCopyWith<$Res> get money {
  
  return $DashboardMoneyCopyWith<$Res>(_self.money, (value) {
    return _then(_self.copyWith(money: value));
  });
}
}


/// Adds pattern-matching-related methods to [DashboardOverview].
extension DashboardOverviewPatterns on DashboardOverview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardOverview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardOverview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardOverview value)  $default,){
final _that = this;
switch (_that) {
case _DashboardOverview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardOverview value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardOverview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String month,  int year,  DashboardMoney money,  List<AttentionItem> attention,  List<DashboardLease> leases)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardOverview() when $default != null:
return $default(_that.month,_that.year,_that.money,_that.attention,_that.leases);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String month,  int year,  DashboardMoney money,  List<AttentionItem> attention,  List<DashboardLease> leases)  $default,) {final _that = this;
switch (_that) {
case _DashboardOverview():
return $default(_that.month,_that.year,_that.money,_that.attention,_that.leases);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String month,  int year,  DashboardMoney money,  List<AttentionItem> attention,  List<DashboardLease> leases)?  $default,) {final _that = this;
switch (_that) {
case _DashboardOverview() when $default != null:
return $default(_that.month,_that.year,_that.money,_that.attention,_that.leases);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardOverview implements DashboardOverview {
  const _DashboardOverview({required this.month, required this.year, required this.money, required  List<AttentionItem> attention, required  List<DashboardLease> leases}): _attention = attention,_leases = leases;
  factory _DashboardOverview.fromJson(Map<String, dynamic> json) => _$DashboardOverviewFromJson(json);

@override final  String month;
@override final  int year;
@override final  DashboardMoney money;
 final  List<AttentionItem> _attention;
@override List<AttentionItem> get attention {
  if (_attention is EqualUnmodifiableListView) return _attention;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attention);
}

 final  List<DashboardLease> _leases;
@override List<DashboardLease> get leases {
  if (_leases is EqualUnmodifiableListView) return _leases;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_leases);
}


/// Create a copy of DashboardOverview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardOverviewCopyWith<_DashboardOverview> get copyWith => __$DashboardOverviewCopyWithImpl<_DashboardOverview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardOverviewToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardOverview&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year)&&(identical(other.money, money) || other.money == money)&&const DeepCollectionEquality().equals(other.attention, _attention)&&const DeepCollectionEquality().equals(other.leases, _leases));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,month,year,money,const DeepCollectionEquality().hash(_attention),const DeepCollectionEquality().hash(_leases));
}

@override
String toString() {
    return 'DashboardOverview(month: $month, year: $year, money: $money, attention: $attention, leases: $leases)';
}


}

/// @nodoc
abstract mixin class _$DashboardOverviewCopyWith<$Res> implements $DashboardOverviewCopyWith<$Res> {
  factory _$DashboardOverviewCopyWith(_DashboardOverview value, $Res Function(_DashboardOverview) _then) = __$DashboardOverviewCopyWithImpl;
@override @useResult
$Res call({
 String month, int year, DashboardMoney money, List<AttentionItem> attention, List<DashboardLease> leases
});


@override $DashboardMoneyCopyWith<$Res> get money;

}
/// @nodoc
class __$DashboardOverviewCopyWithImpl<$Res>
    implements _$DashboardOverviewCopyWith<$Res> {
  __$DashboardOverviewCopyWithImpl(this._self, this._then);

  final _DashboardOverview _self;
  final $Res Function(_DashboardOverview) _then;

/// Create a copy of DashboardOverview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = null,Object? year = null,Object? money = null,Object? attention = null,Object? leases = null,}) {
  return _then(_DashboardOverview(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,money: null == money ? _self.money : money // ignore: cast_nullable_to_non_nullable
as DashboardMoney,attention: null == attention ? _self._attention : attention // ignore: cast_nullable_to_non_nullable
as List<AttentionItem>,leases: null == leases ? _self._leases : leases // ignore: cast_nullable_to_non_nullable
as List<DashboardLease>,
  ));
}

/// Create a copy of DashboardOverview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardMoneyCopyWith<$Res> get money {
  
  return $DashboardMoneyCopyWith<$Res>(_self.money, (value) {
    return _then(_self.copyWith(money: value));
  });
}
}


/// @nodoc
mixin _$DashboardMoney {

 int get rentCollectedThisMonthCents; int get utilitiesCollectedThisMonthCents; int get rentCollectedYearCents; int get utilitiesCollectedYearCents; int get overdueAmountCents; int get overdueCount; int get dueAmountCents; int get dueCount; int get expectedMonthlyRentCents;
/// Create a copy of DashboardMoney
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardMoneyCopyWith<DashboardMoney> get copyWith => _$DashboardMoneyCopyWithImpl<DashboardMoney>(this as DashboardMoney, _$identity);

  /// Serializes this DashboardMoney to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardMoney;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardMoney&&(identical(other.rentCollectedThisMonthCents, _this.rentCollectedThisMonthCents) || other.rentCollectedThisMonthCents == _this.rentCollectedThisMonthCents)&&(identical(other.utilitiesCollectedThisMonthCents, _this.utilitiesCollectedThisMonthCents) || other.utilitiesCollectedThisMonthCents == _this.utilitiesCollectedThisMonthCents)&&(identical(other.rentCollectedYearCents, _this.rentCollectedYearCents) || other.rentCollectedYearCents == _this.rentCollectedYearCents)&&(identical(other.utilitiesCollectedYearCents, _this.utilitiesCollectedYearCents) || other.utilitiesCollectedYearCents == _this.utilitiesCollectedYearCents)&&(identical(other.overdueAmountCents, _this.overdueAmountCents) || other.overdueAmountCents == _this.overdueAmountCents)&&(identical(other.overdueCount, _this.overdueCount) || other.overdueCount == _this.overdueCount)&&(identical(other.dueAmountCents, _this.dueAmountCents) || other.dueAmountCents == _this.dueAmountCents)&&(identical(other.dueCount, _this.dueCount) || other.dueCount == _this.dueCount)&&(identical(other.expectedMonthlyRentCents, _this.expectedMonthlyRentCents) || other.expectedMonthlyRentCents == _this.expectedMonthlyRentCents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardMoney;
  return Object.hash(runtimeType,_this.rentCollectedThisMonthCents,_this.utilitiesCollectedThisMonthCents,_this.rentCollectedYearCents,_this.utilitiesCollectedYearCents,_this.overdueAmountCents,_this.overdueCount,_this.dueAmountCents,_this.dueCount,_this.expectedMonthlyRentCents);
}

@override
String toString() {
  final _this = this as DashboardMoney;
  return 'DashboardMoney(rentCollectedThisMonthCents: ${_this.rentCollectedThisMonthCents}, utilitiesCollectedThisMonthCents: ${_this.utilitiesCollectedThisMonthCents}, rentCollectedYearCents: ${_this.rentCollectedYearCents}, utilitiesCollectedYearCents: ${_this.utilitiesCollectedYearCents}, overdueAmountCents: ${_this.overdueAmountCents}, overdueCount: ${_this.overdueCount}, dueAmountCents: ${_this.dueAmountCents}, dueCount: ${_this.dueCount}, expectedMonthlyRentCents: ${_this.expectedMonthlyRentCents})';
}


}

/// @nodoc
abstract mixin class $DashboardMoneyCopyWith<$Res>  {
  factory $DashboardMoneyCopyWith(DashboardMoney value, $Res Function(DashboardMoney) _then) = _$DashboardMoneyCopyWithImpl;
@useResult
$Res call({
 int rentCollectedThisMonthCents, int utilitiesCollectedThisMonthCents, int rentCollectedYearCents, int utilitiesCollectedYearCents, int overdueAmountCents, int overdueCount, int dueAmountCents, int dueCount, int expectedMonthlyRentCents
});




}
/// @nodoc
class _$DashboardMoneyCopyWithImpl<$Res>
    implements $DashboardMoneyCopyWith<$Res> {
  _$DashboardMoneyCopyWithImpl(this._self, this._then);

  final DashboardMoney _self;
  final $Res Function(DashboardMoney) _then;

/// Create a copy of DashboardMoney
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rentCollectedThisMonthCents = null,Object? utilitiesCollectedThisMonthCents = null,Object? rentCollectedYearCents = null,Object? utilitiesCollectedYearCents = null,Object? overdueAmountCents = null,Object? overdueCount = null,Object? dueAmountCents = null,Object? dueCount = null,Object? expectedMonthlyRentCents = null,}) {
  return _then(DashboardMoney(
rentCollectedThisMonthCents: null == rentCollectedThisMonthCents ? _self.rentCollectedThisMonthCents : rentCollectedThisMonthCents // ignore: cast_nullable_to_non_nullable
as int,utilitiesCollectedThisMonthCents: null == utilitiesCollectedThisMonthCents ? _self.utilitiesCollectedThisMonthCents : utilitiesCollectedThisMonthCents // ignore: cast_nullable_to_non_nullable
as int,rentCollectedYearCents: null == rentCollectedYearCents ? _self.rentCollectedYearCents : rentCollectedYearCents // ignore: cast_nullable_to_non_nullable
as int,utilitiesCollectedYearCents: null == utilitiesCollectedYearCents ? _self.utilitiesCollectedYearCents : utilitiesCollectedYearCents // ignore: cast_nullable_to_non_nullable
as int,overdueAmountCents: null == overdueAmountCents ? _self.overdueAmountCents : overdueAmountCents // ignore: cast_nullable_to_non_nullable
as int,overdueCount: null == overdueCount ? _self.overdueCount : overdueCount // ignore: cast_nullable_to_non_nullable
as int,dueAmountCents: null == dueAmountCents ? _self.dueAmountCents : dueAmountCents // ignore: cast_nullable_to_non_nullable
as int,dueCount: null == dueCount ? _self.dueCount : dueCount // ignore: cast_nullable_to_non_nullable
as int,expectedMonthlyRentCents: null == expectedMonthlyRentCents ? _self.expectedMonthlyRentCents : expectedMonthlyRentCents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardMoney].
extension DashboardMoneyPatterns on DashboardMoney {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardMoney value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardMoney() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardMoney value)  $default,){
final _that = this;
switch (_that) {
case _DashboardMoney():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardMoney value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardMoney() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int rentCollectedThisMonthCents,  int utilitiesCollectedThisMonthCents,  int rentCollectedYearCents,  int utilitiesCollectedYearCents,  int overdueAmountCents,  int overdueCount,  int dueAmountCents,  int dueCount,  int expectedMonthlyRentCents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardMoney() when $default != null:
return $default(_that.rentCollectedThisMonthCents,_that.utilitiesCollectedThisMonthCents,_that.rentCollectedYearCents,_that.utilitiesCollectedYearCents,_that.overdueAmountCents,_that.overdueCount,_that.dueAmountCents,_that.dueCount,_that.expectedMonthlyRentCents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int rentCollectedThisMonthCents,  int utilitiesCollectedThisMonthCents,  int rentCollectedYearCents,  int utilitiesCollectedYearCents,  int overdueAmountCents,  int overdueCount,  int dueAmountCents,  int dueCount,  int expectedMonthlyRentCents)  $default,) {final _that = this;
switch (_that) {
case _DashboardMoney():
return $default(_that.rentCollectedThisMonthCents,_that.utilitiesCollectedThisMonthCents,_that.rentCollectedYearCents,_that.utilitiesCollectedYearCents,_that.overdueAmountCents,_that.overdueCount,_that.dueAmountCents,_that.dueCount,_that.expectedMonthlyRentCents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int rentCollectedThisMonthCents,  int utilitiesCollectedThisMonthCents,  int rentCollectedYearCents,  int utilitiesCollectedYearCents,  int overdueAmountCents,  int overdueCount,  int dueAmountCents,  int dueCount,  int expectedMonthlyRentCents)?  $default,) {final _that = this;
switch (_that) {
case _DashboardMoney() when $default != null:
return $default(_that.rentCollectedThisMonthCents,_that.utilitiesCollectedThisMonthCents,_that.rentCollectedYearCents,_that.utilitiesCollectedYearCents,_that.overdueAmountCents,_that.overdueCount,_that.dueAmountCents,_that.dueCount,_that.expectedMonthlyRentCents);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardMoney implements DashboardMoney {
  const _DashboardMoney({required this.rentCollectedThisMonthCents, required this.utilitiesCollectedThisMonthCents, required this.rentCollectedYearCents, required this.utilitiesCollectedYearCents, required this.overdueAmountCents, required this.overdueCount, required this.dueAmountCents, required this.dueCount, required this.expectedMonthlyRentCents});
  factory _DashboardMoney.fromJson(Map<String, dynamic> json) => _$DashboardMoneyFromJson(json);

@override final  int rentCollectedThisMonthCents;
@override final  int utilitiesCollectedThisMonthCents;
@override final  int rentCollectedYearCents;
@override final  int utilitiesCollectedYearCents;
@override final  int overdueAmountCents;
@override final  int overdueCount;
@override final  int dueAmountCents;
@override final  int dueCount;
@override final  int expectedMonthlyRentCents;

/// Create a copy of DashboardMoney
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardMoneyCopyWith<_DashboardMoney> get copyWith => __$DashboardMoneyCopyWithImpl<_DashboardMoney>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardMoneyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardMoney&&(identical(other.rentCollectedThisMonthCents, rentCollectedThisMonthCents) || other.rentCollectedThisMonthCents == rentCollectedThisMonthCents)&&(identical(other.utilitiesCollectedThisMonthCents, utilitiesCollectedThisMonthCents) || other.utilitiesCollectedThisMonthCents == utilitiesCollectedThisMonthCents)&&(identical(other.rentCollectedYearCents, rentCollectedYearCents) || other.rentCollectedYearCents == rentCollectedYearCents)&&(identical(other.utilitiesCollectedYearCents, utilitiesCollectedYearCents) || other.utilitiesCollectedYearCents == utilitiesCollectedYearCents)&&(identical(other.overdueAmountCents, overdueAmountCents) || other.overdueAmountCents == overdueAmountCents)&&(identical(other.overdueCount, overdueCount) || other.overdueCount == overdueCount)&&(identical(other.dueAmountCents, dueAmountCents) || other.dueAmountCents == dueAmountCents)&&(identical(other.dueCount, dueCount) || other.dueCount == dueCount)&&(identical(other.expectedMonthlyRentCents, expectedMonthlyRentCents) || other.expectedMonthlyRentCents == expectedMonthlyRentCents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,rentCollectedThisMonthCents,utilitiesCollectedThisMonthCents,rentCollectedYearCents,utilitiesCollectedYearCents,overdueAmountCents,overdueCount,dueAmountCents,dueCount,expectedMonthlyRentCents);
}

@override
String toString() {
    return 'DashboardMoney(rentCollectedThisMonthCents: $rentCollectedThisMonthCents, utilitiesCollectedThisMonthCents: $utilitiesCollectedThisMonthCents, rentCollectedYearCents: $rentCollectedYearCents, utilitiesCollectedYearCents: $utilitiesCollectedYearCents, overdueAmountCents: $overdueAmountCents, overdueCount: $overdueCount, dueAmountCents: $dueAmountCents, dueCount: $dueCount, expectedMonthlyRentCents: $expectedMonthlyRentCents)';
}


}

/// @nodoc
abstract mixin class _$DashboardMoneyCopyWith<$Res> implements $DashboardMoneyCopyWith<$Res> {
  factory _$DashboardMoneyCopyWith(_DashboardMoney value, $Res Function(_DashboardMoney) _then) = __$DashboardMoneyCopyWithImpl;
@override @useResult
$Res call({
 int rentCollectedThisMonthCents, int utilitiesCollectedThisMonthCents, int rentCollectedYearCents, int utilitiesCollectedYearCents, int overdueAmountCents, int overdueCount, int dueAmountCents, int dueCount, int expectedMonthlyRentCents
});




}
/// @nodoc
class __$DashboardMoneyCopyWithImpl<$Res>
    implements _$DashboardMoneyCopyWith<$Res> {
  __$DashboardMoneyCopyWithImpl(this._self, this._then);

  final _DashboardMoney _self;
  final $Res Function(_DashboardMoney) _then;

/// Create a copy of DashboardMoney
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rentCollectedThisMonthCents = null,Object? utilitiesCollectedThisMonthCents = null,Object? rentCollectedYearCents = null,Object? utilitiesCollectedYearCents = null,Object? overdueAmountCents = null,Object? overdueCount = null,Object? dueAmountCents = null,Object? dueCount = null,Object? expectedMonthlyRentCents = null,}) {
  return _then(_DashboardMoney(
rentCollectedThisMonthCents: null == rentCollectedThisMonthCents ? _self.rentCollectedThisMonthCents : rentCollectedThisMonthCents // ignore: cast_nullable_to_non_nullable
as int,utilitiesCollectedThisMonthCents: null == utilitiesCollectedThisMonthCents ? _self.utilitiesCollectedThisMonthCents : utilitiesCollectedThisMonthCents // ignore: cast_nullable_to_non_nullable
as int,rentCollectedYearCents: null == rentCollectedYearCents ? _self.rentCollectedYearCents : rentCollectedYearCents // ignore: cast_nullable_to_non_nullable
as int,utilitiesCollectedYearCents: null == utilitiesCollectedYearCents ? _self.utilitiesCollectedYearCents : utilitiesCollectedYearCents // ignore: cast_nullable_to_non_nullable
as int,overdueAmountCents: null == overdueAmountCents ? _self.overdueAmountCents : overdueAmountCents // ignore: cast_nullable_to_non_nullable
as int,overdueCount: null == overdueCount ? _self.overdueCount : overdueCount // ignore: cast_nullable_to_non_nullable
as int,dueAmountCents: null == dueAmountCents ? _self.dueAmountCents : dueAmountCents // ignore: cast_nullable_to_non_nullable
as int,dueCount: null == dueCount ? _self.dueCount : dueCount // ignore: cast_nullable_to_non_nullable
as int,expectedMonthlyRentCents: null == expectedMonthlyRentCents ? _self.expectedMonthlyRentCents : expectedMonthlyRentCents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$AttentionItem {

 String get chargeId; String get leaseId; String get tenantName; String get description; int get amountCents; String get dueDate; ChargeStatus get status; ChargeType get type;
/// Create a copy of AttentionItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttentionItemCopyWith<AttentionItem> get copyWith => _$AttentionItemCopyWithImpl<AttentionItem>(this as AttentionItem, _$identity);

  /// Serializes this AttentionItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AttentionItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttentionItem&&(identical(other.chargeId, _this.chargeId) || other.chargeId == _this.chargeId)&&(identical(other.leaseId, _this.leaseId) || other.leaseId == _this.leaseId)&&(identical(other.tenantName, _this.tenantName) || other.tenantName == _this.tenantName)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.amountCents, _this.amountCents) || other.amountCents == _this.amountCents)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.type, _this.type) || other.type == _this.type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AttentionItem;
  return Object.hash(runtimeType,_this.chargeId,_this.leaseId,_this.tenantName,_this.description,_this.amountCents,_this.dueDate,_this.status,_this.type);
}

@override
String toString() {
  final _this = this as AttentionItem;
  return 'AttentionItem(chargeId: ${_this.chargeId}, leaseId: ${_this.leaseId}, tenantName: ${_this.tenantName}, description: ${_this.description}, amountCents: ${_this.amountCents}, dueDate: ${_this.dueDate}, status: ${_this.status}, type: ${_this.type})';
}


}

/// @nodoc
abstract mixin class $AttentionItemCopyWith<$Res>  {
  factory $AttentionItemCopyWith(AttentionItem value, $Res Function(AttentionItem) _then) = _$AttentionItemCopyWithImpl;
@useResult
$Res call({
 String chargeId, String leaseId, String tenantName, String description, int amountCents, String dueDate, ChargeStatus status, ChargeType type
});




}
/// @nodoc
class _$AttentionItemCopyWithImpl<$Res>
    implements $AttentionItemCopyWith<$Res> {
  _$AttentionItemCopyWithImpl(this._self, this._then);

  final AttentionItem _self;
  final $Res Function(AttentionItem) _then;

/// Create a copy of AttentionItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chargeId = null,Object? leaseId = null,Object? tenantName = null,Object? description = null,Object? amountCents = null,Object? dueDate = null,Object? status = null,Object? type = null,}) {
  return _then(AttentionItem(
chargeId: null == chargeId ? _self.chargeId : chargeId // ignore: cast_nullable_to_non_nullable
as String,leaseId: null == leaseId ? _self.leaseId : leaseId // ignore: cast_nullable_to_non_nullable
as String,tenantName: null == tenantName ? _self.tenantName : tenantName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,amountCents: null == amountCents ? _self.amountCents : amountCents // ignore: cast_nullable_to_non_nullable
as int,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChargeStatus,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ChargeType,
  ));
}

}


/// Adds pattern-matching-related methods to [AttentionItem].
extension AttentionItemPatterns on AttentionItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttentionItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttentionItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttentionItem value)  $default,){
final _that = this;
switch (_that) {
case _AttentionItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttentionItem value)?  $default,){
final _that = this;
switch (_that) {
case _AttentionItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String chargeId,  String leaseId,  String tenantName,  String description,  int amountCents,  String dueDate,  ChargeStatus status,  ChargeType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttentionItem() when $default != null:
return $default(_that.chargeId,_that.leaseId,_that.tenantName,_that.description,_that.amountCents,_that.dueDate,_that.status,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String chargeId,  String leaseId,  String tenantName,  String description,  int amountCents,  String dueDate,  ChargeStatus status,  ChargeType type)  $default,) {final _that = this;
switch (_that) {
case _AttentionItem():
return $default(_that.chargeId,_that.leaseId,_that.tenantName,_that.description,_that.amountCents,_that.dueDate,_that.status,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String chargeId,  String leaseId,  String tenantName,  String description,  int amountCents,  String dueDate,  ChargeStatus status,  ChargeType type)?  $default,) {final _that = this;
switch (_that) {
case _AttentionItem() when $default != null:
return $default(_that.chargeId,_that.leaseId,_that.tenantName,_that.description,_that.amountCents,_that.dueDate,_that.status,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttentionItem implements AttentionItem {
  const _AttentionItem({required this.chargeId, required this.leaseId, required this.tenantName, required this.description, required this.amountCents, required this.dueDate, required this.status, required this.type});
  factory _AttentionItem.fromJson(Map<String, dynamic> json) => _$AttentionItemFromJson(json);

@override final  String chargeId;
@override final  String leaseId;
@override final  String tenantName;
@override final  String description;
@override final  int amountCents;
@override final  String dueDate;
@override final  ChargeStatus status;
@override final  ChargeType type;

/// Create a copy of AttentionItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttentionItemCopyWith<_AttentionItem> get copyWith => __$AttentionItemCopyWithImpl<_AttentionItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttentionItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttentionItem&&(identical(other.chargeId, chargeId) || other.chargeId == chargeId)&&(identical(other.leaseId, leaseId) || other.leaseId == leaseId)&&(identical(other.tenantName, tenantName) || other.tenantName == tenantName)&&(identical(other.description, description) || other.description == description)&&(identical(other.amountCents, amountCents) || other.amountCents == amountCents)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,chargeId,leaseId,tenantName,description,amountCents,dueDate,status,type);
}

@override
String toString() {
    return 'AttentionItem(chargeId: $chargeId, leaseId: $leaseId, tenantName: $tenantName, description: $description, amountCents: $amountCents, dueDate: $dueDate, status: $status, type: $type)';
}


}

/// @nodoc
abstract mixin class _$AttentionItemCopyWith<$Res> implements $AttentionItemCopyWith<$Res> {
  factory _$AttentionItemCopyWith(_AttentionItem value, $Res Function(_AttentionItem) _then) = __$AttentionItemCopyWithImpl;
@override @useResult
$Res call({
 String chargeId, String leaseId, String tenantName, String description, int amountCents, String dueDate, ChargeStatus status, ChargeType type
});




}
/// @nodoc
class __$AttentionItemCopyWithImpl<$Res>
    implements _$AttentionItemCopyWith<$Res> {
  __$AttentionItemCopyWithImpl(this._self, this._then);

  final _AttentionItem _self;
  final $Res Function(_AttentionItem) _then;

/// Create a copy of AttentionItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chargeId = null,Object? leaseId = null,Object? tenantName = null,Object? description = null,Object? amountCents = null,Object? dueDate = null,Object? status = null,Object? type = null,}) {
  return _then(_AttentionItem(
chargeId: null == chargeId ? _self.chargeId : chargeId // ignore: cast_nullable_to_non_nullable
as String,leaseId: null == leaseId ? _self.leaseId : leaseId // ignore: cast_nullable_to_non_nullable
as String,tenantName: null == tenantName ? _self.tenantName : tenantName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,amountCents: null == amountCents ? _self.amountCents : amountCents // ignore: cast_nullable_to_non_nullable
as int,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChargeStatus,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ChargeType,
  ));
}


}


/// @nodoc
mixin _$DashboardLease {

 String get leaseId; String get tenantName; String get propertyName; String get unitName; int get rentAmountCents; int get overdueCount; int get overdueAmountCents;
/// Create a copy of DashboardLease
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardLeaseCopyWith<DashboardLease> get copyWith => _$DashboardLeaseCopyWithImpl<DashboardLease>(this as DashboardLease, _$identity);

  /// Serializes this DashboardLease to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardLease;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardLease&&(identical(other.leaseId, _this.leaseId) || other.leaseId == _this.leaseId)&&(identical(other.tenantName, _this.tenantName) || other.tenantName == _this.tenantName)&&(identical(other.propertyName, _this.propertyName) || other.propertyName == _this.propertyName)&&(identical(other.unitName, _this.unitName) || other.unitName == _this.unitName)&&(identical(other.rentAmountCents, _this.rentAmountCents) || other.rentAmountCents == _this.rentAmountCents)&&(identical(other.overdueCount, _this.overdueCount) || other.overdueCount == _this.overdueCount)&&(identical(other.overdueAmountCents, _this.overdueAmountCents) || other.overdueAmountCents == _this.overdueAmountCents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardLease;
  return Object.hash(runtimeType,_this.leaseId,_this.tenantName,_this.propertyName,_this.unitName,_this.rentAmountCents,_this.overdueCount,_this.overdueAmountCents);
}

@override
String toString() {
  final _this = this as DashboardLease;
  return 'DashboardLease(leaseId: ${_this.leaseId}, tenantName: ${_this.tenantName}, propertyName: ${_this.propertyName}, unitName: ${_this.unitName}, rentAmountCents: ${_this.rentAmountCents}, overdueCount: ${_this.overdueCount}, overdueAmountCents: ${_this.overdueAmountCents})';
}


}

/// @nodoc
abstract mixin class $DashboardLeaseCopyWith<$Res>  {
  factory $DashboardLeaseCopyWith(DashboardLease value, $Res Function(DashboardLease) _then) = _$DashboardLeaseCopyWithImpl;
@useResult
$Res call({
 String leaseId, String tenantName, String propertyName, String unitName, int rentAmountCents, int overdueCount, int overdueAmountCents
});




}
/// @nodoc
class _$DashboardLeaseCopyWithImpl<$Res>
    implements $DashboardLeaseCopyWith<$Res> {
  _$DashboardLeaseCopyWithImpl(this._self, this._then);

  final DashboardLease _self;
  final $Res Function(DashboardLease) _then;

/// Create a copy of DashboardLease
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? leaseId = null,Object? tenantName = null,Object? propertyName = null,Object? unitName = null,Object? rentAmountCents = null,Object? overdueCount = null,Object? overdueAmountCents = null,}) {
  return _then(DashboardLease(
leaseId: null == leaseId ? _self.leaseId : leaseId // ignore: cast_nullable_to_non_nullable
as String,tenantName: null == tenantName ? _self.tenantName : tenantName // ignore: cast_nullable_to_non_nullable
as String,propertyName: null == propertyName ? _self.propertyName : propertyName // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,rentAmountCents: null == rentAmountCents ? _self.rentAmountCents : rentAmountCents // ignore: cast_nullable_to_non_nullable
as int,overdueCount: null == overdueCount ? _self.overdueCount : overdueCount // ignore: cast_nullable_to_non_nullable
as int,overdueAmountCents: null == overdueAmountCents ? _self.overdueAmountCents : overdueAmountCents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardLease].
extension DashboardLeasePatterns on DashboardLease {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardLease value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardLease() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardLease value)  $default,){
final _that = this;
switch (_that) {
case _DashboardLease():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardLease value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardLease() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String leaseId,  String tenantName,  String propertyName,  String unitName,  int rentAmountCents,  int overdueCount,  int overdueAmountCents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardLease() when $default != null:
return $default(_that.leaseId,_that.tenantName,_that.propertyName,_that.unitName,_that.rentAmountCents,_that.overdueCount,_that.overdueAmountCents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String leaseId,  String tenantName,  String propertyName,  String unitName,  int rentAmountCents,  int overdueCount,  int overdueAmountCents)  $default,) {final _that = this;
switch (_that) {
case _DashboardLease():
return $default(_that.leaseId,_that.tenantName,_that.propertyName,_that.unitName,_that.rentAmountCents,_that.overdueCount,_that.overdueAmountCents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String leaseId,  String tenantName,  String propertyName,  String unitName,  int rentAmountCents,  int overdueCount,  int overdueAmountCents)?  $default,) {final _that = this;
switch (_that) {
case _DashboardLease() when $default != null:
return $default(_that.leaseId,_that.tenantName,_that.propertyName,_that.unitName,_that.rentAmountCents,_that.overdueCount,_that.overdueAmountCents);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardLease implements DashboardLease {
  const _DashboardLease({required this.leaseId, required this.tenantName, required this.propertyName, required this.unitName, required this.rentAmountCents, required this.overdueCount, required this.overdueAmountCents});
  factory _DashboardLease.fromJson(Map<String, dynamic> json) => _$DashboardLeaseFromJson(json);

@override final  String leaseId;
@override final  String tenantName;
@override final  String propertyName;
@override final  String unitName;
@override final  int rentAmountCents;
@override final  int overdueCount;
@override final  int overdueAmountCents;

/// Create a copy of DashboardLease
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardLeaseCopyWith<_DashboardLease> get copyWith => __$DashboardLeaseCopyWithImpl<_DashboardLease>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardLeaseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardLease&&(identical(other.leaseId, leaseId) || other.leaseId == leaseId)&&(identical(other.tenantName, tenantName) || other.tenantName == tenantName)&&(identical(other.propertyName, propertyName) || other.propertyName == propertyName)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.rentAmountCents, rentAmountCents) || other.rentAmountCents == rentAmountCents)&&(identical(other.overdueCount, overdueCount) || other.overdueCount == overdueCount)&&(identical(other.overdueAmountCents, overdueAmountCents) || other.overdueAmountCents == overdueAmountCents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,leaseId,tenantName,propertyName,unitName,rentAmountCents,overdueCount,overdueAmountCents);
}

@override
String toString() {
    return 'DashboardLease(leaseId: $leaseId, tenantName: $tenantName, propertyName: $propertyName, unitName: $unitName, rentAmountCents: $rentAmountCents, overdueCount: $overdueCount, overdueAmountCents: $overdueAmountCents)';
}


}

/// @nodoc
abstract mixin class _$DashboardLeaseCopyWith<$Res> implements $DashboardLeaseCopyWith<$Res> {
  factory _$DashboardLeaseCopyWith(_DashboardLease value, $Res Function(_DashboardLease) _then) = __$DashboardLeaseCopyWithImpl;
@override @useResult
$Res call({
 String leaseId, String tenantName, String propertyName, String unitName, int rentAmountCents, int overdueCount, int overdueAmountCents
});




}
/// @nodoc
class __$DashboardLeaseCopyWithImpl<$Res>
    implements _$DashboardLeaseCopyWith<$Res> {
  __$DashboardLeaseCopyWithImpl(this._self, this._then);

  final _DashboardLease _self;
  final $Res Function(_DashboardLease) _then;

/// Create a copy of DashboardLease
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leaseId = null,Object? tenantName = null,Object? propertyName = null,Object? unitName = null,Object? rentAmountCents = null,Object? overdueCount = null,Object? overdueAmountCents = null,}) {
  return _then(_DashboardLease(
leaseId: null == leaseId ? _self.leaseId : leaseId // ignore: cast_nullable_to_non_nullable
as String,tenantName: null == tenantName ? _self.tenantName : tenantName // ignore: cast_nullable_to_non_nullable
as String,propertyName: null == propertyName ? _self.propertyName : propertyName // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,rentAmountCents: null == rentAmountCents ? _self.rentAmountCents : rentAmountCents // ignore: cast_nullable_to_non_nullable
as int,overdueCount: null == overdueCount ? _self.overdueCount : overdueCount // ignore: cast_nullable_to_non_nullable
as int,overdueAmountCents: null == overdueAmountCents ? _self.overdueAmountCents : overdueAmountCents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$LeaseSummary {

@JsonKey(name: '_id') String get id; String get unitName; String get propertyName; String get tenantName; String get startDate; String? get endDate; LeaseStatus get status; int get rentAmountCents; int get unpaidTotalCents; int get overdueCount;
/// Create a copy of LeaseSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaseSummaryCopyWith<LeaseSummary> get copyWith => _$LeaseSummaryCopyWithImpl<LeaseSummary>(this as LeaseSummary, _$identity);

  /// Serializes this LeaseSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LeaseSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaseSummary&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.unitName, _this.unitName) || other.unitName == _this.unitName)&&(identical(other.propertyName, _this.propertyName) || other.propertyName == _this.propertyName)&&(identical(other.tenantName, _this.tenantName) || other.tenantName == _this.tenantName)&&(identical(other.startDate, _this.startDate) || other.startDate == _this.startDate)&&(identical(other.endDate, _this.endDate) || other.endDate == _this.endDate)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.rentAmountCents, _this.rentAmountCents) || other.rentAmountCents == _this.rentAmountCents)&&(identical(other.unpaidTotalCents, _this.unpaidTotalCents) || other.unpaidTotalCents == _this.unpaidTotalCents)&&(identical(other.overdueCount, _this.overdueCount) || other.overdueCount == _this.overdueCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LeaseSummary;
  return Object.hash(runtimeType,_this.id,_this.unitName,_this.propertyName,_this.tenantName,_this.startDate,_this.endDate,_this.status,_this.rentAmountCents,_this.unpaidTotalCents,_this.overdueCount);
}

@override
String toString() {
  final _this = this as LeaseSummary;
  return 'LeaseSummary(id: ${_this.id}, unitName: ${_this.unitName}, propertyName: ${_this.propertyName}, tenantName: ${_this.tenantName}, startDate: ${_this.startDate}, endDate: ${_this.endDate}, status: ${_this.status}, rentAmountCents: ${_this.rentAmountCents}, unpaidTotalCents: ${_this.unpaidTotalCents}, overdueCount: ${_this.overdueCount})';
}


}

/// @nodoc
abstract mixin class $LeaseSummaryCopyWith<$Res>  {
  factory $LeaseSummaryCopyWith(LeaseSummary value, $Res Function(LeaseSummary) _then) = _$LeaseSummaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String unitName, String propertyName, String tenantName, String startDate, String? endDate, LeaseStatus status, int rentAmountCents, int unpaidTotalCents, int overdueCount
});




}
/// @nodoc
class _$LeaseSummaryCopyWithImpl<$Res>
    implements $LeaseSummaryCopyWith<$Res> {
  _$LeaseSummaryCopyWithImpl(this._self, this._then);

  final LeaseSummary _self;
  final $Res Function(LeaseSummary) _then;

/// Create a copy of LeaseSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? unitName = null,Object? propertyName = null,Object? tenantName = null,Object? startDate = null,Object? endDate = freezed,Object? status = null,Object? rentAmountCents = null,Object? unpaidTotalCents = null,Object? overdueCount = null,}) {
  return _then(LeaseSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,propertyName: null == propertyName ? _self.propertyName : propertyName // ignore: cast_nullable_to_non_nullable
as String,tenantName: null == tenantName ? _self.tenantName : tenantName // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LeaseStatus,rentAmountCents: null == rentAmountCents ? _self.rentAmountCents : rentAmountCents // ignore: cast_nullable_to_non_nullable
as int,unpaidTotalCents: null == unpaidTotalCents ? _self.unpaidTotalCents : unpaidTotalCents // ignore: cast_nullable_to_non_nullable
as int,overdueCount: null == overdueCount ? _self.overdueCount : overdueCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaseSummary].
extension LeaseSummaryPatterns on LeaseSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaseSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaseSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaseSummary value)  $default,){
final _that = this;
switch (_that) {
case _LeaseSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaseSummary value)?  $default,){
final _that = this;
switch (_that) {
case _LeaseSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String unitName,  String propertyName,  String tenantName,  String startDate,  String? endDate,  LeaseStatus status,  int rentAmountCents,  int unpaidTotalCents,  int overdueCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaseSummary() when $default != null:
return $default(_that.id,_that.unitName,_that.propertyName,_that.tenantName,_that.startDate,_that.endDate,_that.status,_that.rentAmountCents,_that.unpaidTotalCents,_that.overdueCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String unitName,  String propertyName,  String tenantName,  String startDate,  String? endDate,  LeaseStatus status,  int rentAmountCents,  int unpaidTotalCents,  int overdueCount)  $default,) {final _that = this;
switch (_that) {
case _LeaseSummary():
return $default(_that.id,_that.unitName,_that.propertyName,_that.tenantName,_that.startDate,_that.endDate,_that.status,_that.rentAmountCents,_that.unpaidTotalCents,_that.overdueCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String unitName,  String propertyName,  String tenantName,  String startDate,  String? endDate,  LeaseStatus status,  int rentAmountCents,  int unpaidTotalCents,  int overdueCount)?  $default,) {final _that = this;
switch (_that) {
case _LeaseSummary() when $default != null:
return $default(_that.id,_that.unitName,_that.propertyName,_that.tenantName,_that.startDate,_that.endDate,_that.status,_that.rentAmountCents,_that.unpaidTotalCents,_that.overdueCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaseSummary implements LeaseSummary {
  const _LeaseSummary({@JsonKey(name: '_id') required this.id, required this.unitName, required this.propertyName, required this.tenantName, required this.startDate, this.endDate, required this.status, required this.rentAmountCents, required this.unpaidTotalCents, required this.overdueCount});
  factory _LeaseSummary.fromJson(Map<String, dynamic> json) => _$LeaseSummaryFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String unitName;
@override final  String propertyName;
@override final  String tenantName;
@override final  String startDate;
@override final  String? endDate;
@override final  LeaseStatus status;
@override final  int rentAmountCents;
@override final  int unpaidTotalCents;
@override final  int overdueCount;

/// Create a copy of LeaseSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaseSummaryCopyWith<_LeaseSummary> get copyWith => __$LeaseSummaryCopyWithImpl<_LeaseSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaseSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaseSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.propertyName, propertyName) || other.propertyName == propertyName)&&(identical(other.tenantName, tenantName) || other.tenantName == tenantName)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.rentAmountCents, rentAmountCents) || other.rentAmountCents == rentAmountCents)&&(identical(other.unpaidTotalCents, unpaidTotalCents) || other.unpaidTotalCents == unpaidTotalCents)&&(identical(other.overdueCount, overdueCount) || other.overdueCount == overdueCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,unitName,propertyName,tenantName,startDate,endDate,status,rentAmountCents,unpaidTotalCents,overdueCount);
}

@override
String toString() {
    return 'LeaseSummary(id: $id, unitName: $unitName, propertyName: $propertyName, tenantName: $tenantName, startDate: $startDate, endDate: $endDate, status: $status, rentAmountCents: $rentAmountCents, unpaidTotalCents: $unpaidTotalCents, overdueCount: $overdueCount)';
}


}

/// @nodoc
abstract mixin class _$LeaseSummaryCopyWith<$Res> implements $LeaseSummaryCopyWith<$Res> {
  factory _$LeaseSummaryCopyWith(_LeaseSummary value, $Res Function(_LeaseSummary) _then) = __$LeaseSummaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String unitName, String propertyName, String tenantName, String startDate, String? endDate, LeaseStatus status, int rentAmountCents, int unpaidTotalCents, int overdueCount
});




}
/// @nodoc
class __$LeaseSummaryCopyWithImpl<$Res>
    implements _$LeaseSummaryCopyWith<$Res> {
  __$LeaseSummaryCopyWithImpl(this._self, this._then);

  final _LeaseSummary _self;
  final $Res Function(_LeaseSummary) _then;

/// Create a copy of LeaseSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? unitName = null,Object? propertyName = null,Object? tenantName = null,Object? startDate = null,Object? endDate = freezed,Object? status = null,Object? rentAmountCents = null,Object? unpaidTotalCents = null,Object? overdueCount = null,}) {
  return _then(_LeaseSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,propertyName: null == propertyName ? _self.propertyName : propertyName // ignore: cast_nullable_to_non_nullable
as String,tenantName: null == tenantName ? _self.tenantName : tenantName // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LeaseStatus,rentAmountCents: null == rentAmountCents ? _self.rentAmountCents : rentAmountCents // ignore: cast_nullable_to_non_nullable
as int,unpaidTotalCents: null == unpaidTotalCents ? _self.unpaidTotalCents : unpaidTotalCents // ignore: cast_nullable_to_non_nullable
as int,overdueCount: null == overdueCount ? _self.overdueCount : overdueCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PropertyItem {

@JsonKey(name: '_id') String get id; String get name; String get address; String? get notes; List<UnitItem> get units;
/// Create a copy of PropertyItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyItemCopyWith<PropertyItem> get copyWith => _$PropertyItemCopyWithImpl<PropertyItem>(this as PropertyItem, _$identity);

  /// Serializes this PropertyItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PropertyItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyItem&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&const DeepCollectionEquality().equals(other.units, _this.units));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PropertyItem;
  return Object.hash(runtimeType,_this.id,_this.name,_this.address,_this.notes,const DeepCollectionEquality().hash(_this.units));
}

@override
String toString() {
  final _this = this as PropertyItem;
  return 'PropertyItem(id: ${_this.id}, name: ${_this.name}, address: ${_this.address}, notes: ${_this.notes}, units: ${_this.units})';
}


}

/// @nodoc
abstract mixin class $PropertyItemCopyWith<$Res>  {
  factory $PropertyItemCopyWith(PropertyItem value, $Res Function(PropertyItem) _then) = _$PropertyItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String name, String address, String? notes, List<UnitItem> units
});




}
/// @nodoc
class _$PropertyItemCopyWithImpl<$Res>
    implements $PropertyItemCopyWith<$Res> {
  _$PropertyItemCopyWithImpl(this._self, this._then);

  final PropertyItem _self;
  final $Res Function(PropertyItem) _then;

/// Create a copy of PropertyItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? address = null,Object? notes = freezed,Object? units = null,}) {
  return _then(PropertyItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,units: null == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as List<UnitItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [PropertyItem].
extension PropertyItemPatterns on PropertyItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PropertyItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PropertyItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PropertyItem value)  $default,){
final _that = this;
switch (_that) {
case _PropertyItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PropertyItem value)?  $default,){
final _that = this;
switch (_that) {
case _PropertyItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String name,  String address,  String? notes,  List<UnitItem> units)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PropertyItem() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.notes,_that.units);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String name,  String address,  String? notes,  List<UnitItem> units)  $default,) {final _that = this;
switch (_that) {
case _PropertyItem():
return $default(_that.id,_that.name,_that.address,_that.notes,_that.units);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String name,  String address,  String? notes,  List<UnitItem> units)?  $default,) {final _that = this;
switch (_that) {
case _PropertyItem() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.notes,_that.units);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PropertyItem implements PropertyItem {
  const _PropertyItem({@JsonKey(name: '_id') required this.id, required this.name, required this.address, this.notes, required  List<UnitItem> units}): _units = units;
  factory _PropertyItem.fromJson(Map<String, dynamic> json) => _$PropertyItemFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String name;
@override final  String address;
@override final  String? notes;
 final  List<UnitItem> _units;
@override List<UnitItem> get units {
  if (_units is EqualUnmodifiableListView) return _units;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_units);
}


/// Create a copy of PropertyItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PropertyItemCopyWith<_PropertyItem> get copyWith => __$PropertyItemCopyWithImpl<_PropertyItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PropertyItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PropertyItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.units, _units));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,address,notes,const DeepCollectionEquality().hash(_units));
}

@override
String toString() {
    return 'PropertyItem(id: $id, name: $name, address: $address, notes: $notes, units: $units)';
}


}

/// @nodoc
abstract mixin class _$PropertyItemCopyWith<$Res> implements $PropertyItemCopyWith<$Res> {
  factory _$PropertyItemCopyWith(_PropertyItem value, $Res Function(_PropertyItem) _then) = __$PropertyItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String name, String address, String? notes, List<UnitItem> units
});




}
/// @nodoc
class __$PropertyItemCopyWithImpl<$Res>
    implements _$PropertyItemCopyWith<$Res> {
  __$PropertyItemCopyWithImpl(this._self, this._then);

  final _PropertyItem _self;
  final $Res Function(_PropertyItem) _then;

/// Create a copy of PropertyItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? address = null,Object? notes = freezed,Object? units = null,}) {
  return _then(_PropertyItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,units: null == units ? _self._units : units // ignore: cast_nullable_to_non_nullable
as List<UnitItem>,
  ));
}


}


/// @nodoc
mixin _$UnitItem {

@JsonKey(name: '_id') String get id; String get name; String? get floor; bool? get isOwnerOccupied;
/// Create a copy of UnitItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnitItemCopyWith<UnitItem> get copyWith => _$UnitItemCopyWithImpl<UnitItem>(this as UnitItem, _$identity);

  /// Serializes this UnitItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UnitItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnitItem&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.floor, _this.floor) || other.floor == _this.floor)&&(identical(other.isOwnerOccupied, _this.isOwnerOccupied) || other.isOwnerOccupied == _this.isOwnerOccupied));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UnitItem;
  return Object.hash(runtimeType,_this.id,_this.name,_this.floor,_this.isOwnerOccupied);
}

@override
String toString() {
  final _this = this as UnitItem;
  return 'UnitItem(id: ${_this.id}, name: ${_this.name}, floor: ${_this.floor}, isOwnerOccupied: ${_this.isOwnerOccupied})';
}


}

/// @nodoc
abstract mixin class $UnitItemCopyWith<$Res>  {
  factory $UnitItemCopyWith(UnitItem value, $Res Function(UnitItem) _then) = _$UnitItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String name, String? floor, bool? isOwnerOccupied
});




}
/// @nodoc
class _$UnitItemCopyWithImpl<$Res>
    implements $UnitItemCopyWith<$Res> {
  _$UnitItemCopyWithImpl(this._self, this._then);

  final UnitItem _self;
  final $Res Function(UnitItem) _then;

/// Create a copy of UnitItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? floor = freezed,Object? isOwnerOccupied = freezed,}) {
  return _then(UnitItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,floor: freezed == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as String?,isOwnerOccupied: freezed == isOwnerOccupied ? _self.isOwnerOccupied : isOwnerOccupied // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UnitItem].
extension UnitItemPatterns on UnitItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnitItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnitItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnitItem value)  $default,){
final _that = this;
switch (_that) {
case _UnitItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnitItem value)?  $default,){
final _that = this;
switch (_that) {
case _UnitItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String name,  String? floor,  bool? isOwnerOccupied)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnitItem() when $default != null:
return $default(_that.id,_that.name,_that.floor,_that.isOwnerOccupied);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String name,  String? floor,  bool? isOwnerOccupied)  $default,) {final _that = this;
switch (_that) {
case _UnitItem():
return $default(_that.id,_that.name,_that.floor,_that.isOwnerOccupied);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String name,  String? floor,  bool? isOwnerOccupied)?  $default,) {final _that = this;
switch (_that) {
case _UnitItem() when $default != null:
return $default(_that.id,_that.name,_that.floor,_that.isOwnerOccupied);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UnitItem implements UnitItem {
  const _UnitItem({@JsonKey(name: '_id') required this.id, required this.name, this.floor, this.isOwnerOccupied});
  factory _UnitItem.fromJson(Map<String, dynamic> json) => _$UnitItemFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String name;
@override final  String? floor;
@override final  bool? isOwnerOccupied;

/// Create a copy of UnitItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnitItemCopyWith<_UnitItem> get copyWith => __$UnitItemCopyWithImpl<_UnitItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnitItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnitItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.floor, floor) || other.floor == floor)&&(identical(other.isOwnerOccupied, isOwnerOccupied) || other.isOwnerOccupied == isOwnerOccupied));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,floor,isOwnerOccupied);
}

@override
String toString() {
    return 'UnitItem(id: $id, name: $name, floor: $floor, isOwnerOccupied: $isOwnerOccupied)';
}


}

/// @nodoc
abstract mixin class _$UnitItemCopyWith<$Res> implements $UnitItemCopyWith<$Res> {
  factory _$UnitItemCopyWith(_UnitItem value, $Res Function(_UnitItem) _then) = __$UnitItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String name, String? floor, bool? isOwnerOccupied
});




}
/// @nodoc
class __$UnitItemCopyWithImpl<$Res>
    implements _$UnitItemCopyWith<$Res> {
  __$UnitItemCopyWithImpl(this._self, this._then);

  final _UnitItem _self;
  final $Res Function(_UnitItem) _then;

/// Create a copy of UnitItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? floor = freezed,Object? isOwnerOccupied = freezed,}) {
  return _then(_UnitItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,floor: freezed == floor ? _self.floor : floor // ignore: cast_nullable_to_non_nullable
as String?,isOwnerOccupied: freezed == isOwnerOccupied ? _self.isOwnerOccupied : isOwnerOccupied // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$LeaseYear {

 int get rentDefaultCents; int get rentDueDay; List<LeaseMonth> get months;
/// Create a copy of LeaseYear
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaseYearCopyWith<LeaseYear> get copyWith => _$LeaseYearCopyWithImpl<LeaseYear>(this as LeaseYear, _$identity);

  /// Serializes this LeaseYear to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LeaseYear;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaseYear&&(identical(other.rentDefaultCents, _this.rentDefaultCents) || other.rentDefaultCents == _this.rentDefaultCents)&&(identical(other.rentDueDay, _this.rentDueDay) || other.rentDueDay == _this.rentDueDay)&&const DeepCollectionEquality().equals(other.months, _this.months));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LeaseYear;
  return Object.hash(runtimeType,_this.rentDefaultCents,_this.rentDueDay,const DeepCollectionEquality().hash(_this.months));
}

@override
String toString() {
  final _this = this as LeaseYear;
  return 'LeaseYear(rentDefaultCents: ${_this.rentDefaultCents}, rentDueDay: ${_this.rentDueDay}, months: ${_this.months})';
}


}

/// @nodoc
abstract mixin class $LeaseYearCopyWith<$Res>  {
  factory $LeaseYearCopyWith(LeaseYear value, $Res Function(LeaseYear) _then) = _$LeaseYearCopyWithImpl;
@useResult
$Res call({
 int rentDefaultCents, int rentDueDay, List<LeaseMonth> months
});




}
/// @nodoc
class _$LeaseYearCopyWithImpl<$Res>
    implements $LeaseYearCopyWith<$Res> {
  _$LeaseYearCopyWithImpl(this._self, this._then);

  final LeaseYear _self;
  final $Res Function(LeaseYear) _then;

/// Create a copy of LeaseYear
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rentDefaultCents = null,Object? rentDueDay = null,Object? months = null,}) {
  return _then(LeaseYear(
rentDefaultCents: null == rentDefaultCents ? _self.rentDefaultCents : rentDefaultCents // ignore: cast_nullable_to_non_nullable
as int,rentDueDay: null == rentDueDay ? _self.rentDueDay : rentDueDay // ignore: cast_nullable_to_non_nullable
as int,months: null == months ? _self.months : months // ignore: cast_nullable_to_non_nullable
as List<LeaseMonth>,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaseYear].
extension LeaseYearPatterns on LeaseYear {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaseYear value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaseYear() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaseYear value)  $default,){
final _that = this;
switch (_that) {
case _LeaseYear():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaseYear value)?  $default,){
final _that = this;
switch (_that) {
case _LeaseYear() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int rentDefaultCents,  int rentDueDay,  List<LeaseMonth> months)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaseYear() when $default != null:
return $default(_that.rentDefaultCents,_that.rentDueDay,_that.months);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int rentDefaultCents,  int rentDueDay,  List<LeaseMonth> months)  $default,) {final _that = this;
switch (_that) {
case _LeaseYear():
return $default(_that.rentDefaultCents,_that.rentDueDay,_that.months);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int rentDefaultCents,  int rentDueDay,  List<LeaseMonth> months)?  $default,) {final _that = this;
switch (_that) {
case _LeaseYear() when $default != null:
return $default(_that.rentDefaultCents,_that.rentDueDay,_that.months);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaseYear implements LeaseYear {
  const _LeaseYear({required this.rentDefaultCents, required this.rentDueDay, required  List<LeaseMonth> months}): _months = months;
  factory _LeaseYear.fromJson(Map<String, dynamic> json) => _$LeaseYearFromJson(json);

@override final  int rentDefaultCents;
@override final  int rentDueDay;
 final  List<LeaseMonth> _months;
@override List<LeaseMonth> get months {
  if (_months is EqualUnmodifiableListView) return _months;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_months);
}


/// Create a copy of LeaseYear
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaseYearCopyWith<_LeaseYear> get copyWith => __$LeaseYearCopyWithImpl<_LeaseYear>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaseYearToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaseYear&&(identical(other.rentDefaultCents, rentDefaultCents) || other.rentDefaultCents == rentDefaultCents)&&(identical(other.rentDueDay, rentDueDay) || other.rentDueDay == rentDueDay)&&const DeepCollectionEquality().equals(other.months, _months));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,rentDefaultCents,rentDueDay,const DeepCollectionEquality().hash(_months));
}

@override
String toString() {
    return 'LeaseYear(rentDefaultCents: $rentDefaultCents, rentDueDay: $rentDueDay, months: $months)';
}


}

/// @nodoc
abstract mixin class _$LeaseYearCopyWith<$Res> implements $LeaseYearCopyWith<$Res> {
  factory _$LeaseYearCopyWith(_LeaseYear value, $Res Function(_LeaseYear) _then) = __$LeaseYearCopyWithImpl;
@override @useResult
$Res call({
 int rentDefaultCents, int rentDueDay, List<LeaseMonth> months
});




}
/// @nodoc
class __$LeaseYearCopyWithImpl<$Res>
    implements _$LeaseYearCopyWith<$Res> {
  __$LeaseYearCopyWithImpl(this._self, this._then);

  final _LeaseYear _self;
  final $Res Function(_LeaseYear) _then;

/// Create a copy of LeaseYear
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rentDefaultCents = null,Object? rentDueDay = null,Object? months = null,}) {
  return _then(_LeaseYear(
rentDefaultCents: null == rentDefaultCents ? _self.rentDefaultCents : rentDefaultCents // ignore: cast_nullable_to_non_nullable
as int,rentDueDay: null == rentDueDay ? _self.rentDueDay : rentDueDay // ignore: cast_nullable_to_non_nullable
as int,months: null == months ? _self._months : months // ignore: cast_nullable_to_non_nullable
as List<LeaseMonth>,
  ));
}


}


/// @nodoc
mixin _$LeaseMonth {

 String get month; UtilityBalance get utilityBalance; RentRow get rent; List<UtilityRow> get utilities;
/// Create a copy of LeaseMonth
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaseMonthCopyWith<LeaseMonth> get copyWith => _$LeaseMonthCopyWithImpl<LeaseMonth>(this as LeaseMonth, _$identity);

  /// Serializes this LeaseMonth to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LeaseMonth;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaseMonth&&(identical(other.month, _this.month) || other.month == _this.month)&&(identical(other.utilityBalance, _this.utilityBalance) || other.utilityBalance == _this.utilityBalance)&&(identical(other.rent, _this.rent) || other.rent == _this.rent)&&const DeepCollectionEquality().equals(other.utilities, _this.utilities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LeaseMonth;
  return Object.hash(runtimeType,_this.month,_this.utilityBalance,_this.rent,const DeepCollectionEquality().hash(_this.utilities));
}

@override
String toString() {
  final _this = this as LeaseMonth;
  return 'LeaseMonth(month: ${_this.month}, utilityBalance: ${_this.utilityBalance}, rent: ${_this.rent}, utilities: ${_this.utilities})';
}


}

/// @nodoc
abstract mixin class $LeaseMonthCopyWith<$Res>  {
  factory $LeaseMonthCopyWith(LeaseMonth value, $Res Function(LeaseMonth) _then) = _$LeaseMonthCopyWithImpl;
@useResult
$Res call({
 String month, UtilityBalance utilityBalance, RentRow rent, List<UtilityRow> utilities
});


$UtilityBalanceCopyWith<$Res> get utilityBalance;$RentRowCopyWith<$Res> get rent;

}
/// @nodoc
class _$LeaseMonthCopyWithImpl<$Res>
    implements $LeaseMonthCopyWith<$Res> {
  _$LeaseMonthCopyWithImpl(this._self, this._then);

  final LeaseMonth _self;
  final $Res Function(LeaseMonth) _then;

/// Create a copy of LeaseMonth
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? month = null,Object? utilityBalance = null,Object? rent = null,Object? utilities = null,}) {
  return _then(LeaseMonth(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,utilityBalance: null == utilityBalance ? _self.utilityBalance : utilityBalance // ignore: cast_nullable_to_non_nullable
as UtilityBalance,rent: null == rent ? _self.rent : rent // ignore: cast_nullable_to_non_nullable
as RentRow,utilities: null == utilities ? _self.utilities : utilities // ignore: cast_nullable_to_non_nullable
as List<UtilityRow>,
  ));
}
/// Create a copy of LeaseMonth
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UtilityBalanceCopyWith<$Res> get utilityBalance {
  
  return $UtilityBalanceCopyWith<$Res>(_self.utilityBalance, (value) {
    return _then(_self.copyWith(utilityBalance: value));
  });
}/// Create a copy of LeaseMonth
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RentRowCopyWith<$Res> get rent {
  
  return $RentRowCopyWith<$Res>(_self.rent, (value) {
    return _then(_self.copyWith(rent: value));
  });
}
}


/// Adds pattern-matching-related methods to [LeaseMonth].
extension LeaseMonthPatterns on LeaseMonth {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaseMonth value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaseMonth() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaseMonth value)  $default,){
final _that = this;
switch (_that) {
case _LeaseMonth():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaseMonth value)?  $default,){
final _that = this;
switch (_that) {
case _LeaseMonth() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String month,  UtilityBalance utilityBalance,  RentRow rent,  List<UtilityRow> utilities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaseMonth() when $default != null:
return $default(_that.month,_that.utilityBalance,_that.rent,_that.utilities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String month,  UtilityBalance utilityBalance,  RentRow rent,  List<UtilityRow> utilities)  $default,) {final _that = this;
switch (_that) {
case _LeaseMonth():
return $default(_that.month,_that.utilityBalance,_that.rent,_that.utilities);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String month,  UtilityBalance utilityBalance,  RentRow rent,  List<UtilityRow> utilities)?  $default,) {final _that = this;
switch (_that) {
case _LeaseMonth() when $default != null:
return $default(_that.month,_that.utilityBalance,_that.rent,_that.utilities);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaseMonth implements LeaseMonth {
  const _LeaseMonth({required this.month, required this.utilityBalance, required this.rent, required  List<UtilityRow> utilities}): _utilities = utilities;
  factory _LeaseMonth.fromJson(Map<String, dynamic> json) => _$LeaseMonthFromJson(json);

@override final  String month;
@override final  UtilityBalance utilityBalance;
@override final  RentRow rent;
 final  List<UtilityRow> _utilities;
@override List<UtilityRow> get utilities {
  if (_utilities is EqualUnmodifiableListView) return _utilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_utilities);
}


/// Create a copy of LeaseMonth
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaseMonthCopyWith<_LeaseMonth> get copyWith => __$LeaseMonthCopyWithImpl<_LeaseMonth>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaseMonthToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaseMonth&&(identical(other.month, month) || other.month == month)&&(identical(other.utilityBalance, utilityBalance) || other.utilityBalance == utilityBalance)&&(identical(other.rent, rent) || other.rent == rent)&&const DeepCollectionEquality().equals(other.utilities, _utilities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,month,utilityBalance,rent,const DeepCollectionEquality().hash(_utilities));
}

@override
String toString() {
    return 'LeaseMonth(month: $month, utilityBalance: $utilityBalance, rent: $rent, utilities: $utilities)';
}


}

/// @nodoc
abstract mixin class _$LeaseMonthCopyWith<$Res> implements $LeaseMonthCopyWith<$Res> {
  factory _$LeaseMonthCopyWith(_LeaseMonth value, $Res Function(_LeaseMonth) _then) = __$LeaseMonthCopyWithImpl;
@override @useResult
$Res call({
 String month, UtilityBalance utilityBalance, RentRow rent, List<UtilityRow> utilities
});


@override $UtilityBalanceCopyWith<$Res> get utilityBalance;@override $RentRowCopyWith<$Res> get rent;

}
/// @nodoc
class __$LeaseMonthCopyWithImpl<$Res>
    implements _$LeaseMonthCopyWith<$Res> {
  __$LeaseMonthCopyWithImpl(this._self, this._then);

  final _LeaseMonth _self;
  final $Res Function(_LeaseMonth) _then;

/// Create a copy of LeaseMonth
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = null,Object? utilityBalance = null,Object? rent = null,Object? utilities = null,}) {
  return _then(_LeaseMonth(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,utilityBalance: null == utilityBalance ? _self.utilityBalance : utilityBalance // ignore: cast_nullable_to_non_nullable
as UtilityBalance,rent: null == rent ? _self.rent : rent // ignore: cast_nullable_to_non_nullable
as RentRow,utilities: null == utilities ? _self._utilities : utilities // ignore: cast_nullable_to_non_nullable
as List<UtilityRow>,
  ));
}

/// Create a copy of LeaseMonth
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UtilityBalanceCopyWith<$Res> get utilityBalance {
  
  return $UtilityBalanceCopyWith<$Res>(_self.utilityBalance, (value) {
    return _then(_self.copyWith(utilityBalance: value));
  });
}/// Create a copy of LeaseMonth
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RentRowCopyWith<$Res> get rent {
  
  return $RentRowCopyWith<$Res>(_self.rent, (value) {
    return _then(_self.copyWith(rent: value));
  });
}
}


/// @nodoc
mixin _$UtilityBalance {

 int get grossCents; int get openingBalanceCents; int get appliedCreditCents; int get netCents; int? get paidCents; int get closingBalanceCents;
/// Create a copy of UtilityBalance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UtilityBalanceCopyWith<UtilityBalance> get copyWith => _$UtilityBalanceCopyWithImpl<UtilityBalance>(this as UtilityBalance, _$identity);

  /// Serializes this UtilityBalance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UtilityBalance;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UtilityBalance&&(identical(other.grossCents, _this.grossCents) || other.grossCents == _this.grossCents)&&(identical(other.openingBalanceCents, _this.openingBalanceCents) || other.openingBalanceCents == _this.openingBalanceCents)&&(identical(other.appliedCreditCents, _this.appliedCreditCents) || other.appliedCreditCents == _this.appliedCreditCents)&&(identical(other.netCents, _this.netCents) || other.netCents == _this.netCents)&&(identical(other.paidCents, _this.paidCents) || other.paidCents == _this.paidCents)&&(identical(other.closingBalanceCents, _this.closingBalanceCents) || other.closingBalanceCents == _this.closingBalanceCents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UtilityBalance;
  return Object.hash(runtimeType,_this.grossCents,_this.openingBalanceCents,_this.appliedCreditCents,_this.netCents,_this.paidCents,_this.closingBalanceCents);
}

@override
String toString() {
  final _this = this as UtilityBalance;
  return 'UtilityBalance(grossCents: ${_this.grossCents}, openingBalanceCents: ${_this.openingBalanceCents}, appliedCreditCents: ${_this.appliedCreditCents}, netCents: ${_this.netCents}, paidCents: ${_this.paidCents}, closingBalanceCents: ${_this.closingBalanceCents})';
}


}

/// @nodoc
abstract mixin class $UtilityBalanceCopyWith<$Res>  {
  factory $UtilityBalanceCopyWith(UtilityBalance value, $Res Function(UtilityBalance) _then) = _$UtilityBalanceCopyWithImpl;
@useResult
$Res call({
 int grossCents, int openingBalanceCents, int appliedCreditCents, int netCents, int? paidCents, int closingBalanceCents
});




}
/// @nodoc
class _$UtilityBalanceCopyWithImpl<$Res>
    implements $UtilityBalanceCopyWith<$Res> {
  _$UtilityBalanceCopyWithImpl(this._self, this._then);

  final UtilityBalance _self;
  final $Res Function(UtilityBalance) _then;

/// Create a copy of UtilityBalance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? grossCents = null,Object? openingBalanceCents = null,Object? appliedCreditCents = null,Object? netCents = null,Object? paidCents = freezed,Object? closingBalanceCents = null,}) {
  return _then(UtilityBalance(
grossCents: null == grossCents ? _self.grossCents : grossCents // ignore: cast_nullable_to_non_nullable
as int,openingBalanceCents: null == openingBalanceCents ? _self.openingBalanceCents : openingBalanceCents // ignore: cast_nullable_to_non_nullable
as int,appliedCreditCents: null == appliedCreditCents ? _self.appliedCreditCents : appliedCreditCents // ignore: cast_nullable_to_non_nullable
as int,netCents: null == netCents ? _self.netCents : netCents // ignore: cast_nullable_to_non_nullable
as int,paidCents: freezed == paidCents ? _self.paidCents : paidCents // ignore: cast_nullable_to_non_nullable
as int?,closingBalanceCents: null == closingBalanceCents ? _self.closingBalanceCents : closingBalanceCents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UtilityBalance].
extension UtilityBalancePatterns on UtilityBalance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UtilityBalance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UtilityBalance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UtilityBalance value)  $default,){
final _that = this;
switch (_that) {
case _UtilityBalance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UtilityBalance value)?  $default,){
final _that = this;
switch (_that) {
case _UtilityBalance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int grossCents,  int openingBalanceCents,  int appliedCreditCents,  int netCents,  int? paidCents,  int closingBalanceCents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UtilityBalance() when $default != null:
return $default(_that.grossCents,_that.openingBalanceCents,_that.appliedCreditCents,_that.netCents,_that.paidCents,_that.closingBalanceCents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int grossCents,  int openingBalanceCents,  int appliedCreditCents,  int netCents,  int? paidCents,  int closingBalanceCents)  $default,) {final _that = this;
switch (_that) {
case _UtilityBalance():
return $default(_that.grossCents,_that.openingBalanceCents,_that.appliedCreditCents,_that.netCents,_that.paidCents,_that.closingBalanceCents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int grossCents,  int openingBalanceCents,  int appliedCreditCents,  int netCents,  int? paidCents,  int closingBalanceCents)?  $default,) {final _that = this;
switch (_that) {
case _UtilityBalance() when $default != null:
return $default(_that.grossCents,_that.openingBalanceCents,_that.appliedCreditCents,_that.netCents,_that.paidCents,_that.closingBalanceCents);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UtilityBalance implements UtilityBalance {
  const _UtilityBalance({required this.grossCents, required this.openingBalanceCents, required this.appliedCreditCents, required this.netCents, this.paidCents, required this.closingBalanceCents});
  factory _UtilityBalance.fromJson(Map<String, dynamic> json) => _$UtilityBalanceFromJson(json);

@override final  int grossCents;
@override final  int openingBalanceCents;
@override final  int appliedCreditCents;
@override final  int netCents;
@override final  int? paidCents;
@override final  int closingBalanceCents;

/// Create a copy of UtilityBalance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UtilityBalanceCopyWith<_UtilityBalance> get copyWith => __$UtilityBalanceCopyWithImpl<_UtilityBalance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UtilityBalanceToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UtilityBalance&&(identical(other.grossCents, grossCents) || other.grossCents == grossCents)&&(identical(other.openingBalanceCents, openingBalanceCents) || other.openingBalanceCents == openingBalanceCents)&&(identical(other.appliedCreditCents, appliedCreditCents) || other.appliedCreditCents == appliedCreditCents)&&(identical(other.netCents, netCents) || other.netCents == netCents)&&(identical(other.paidCents, paidCents) || other.paidCents == paidCents)&&(identical(other.closingBalanceCents, closingBalanceCents) || other.closingBalanceCents == closingBalanceCents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,grossCents,openingBalanceCents,appliedCreditCents,netCents,paidCents,closingBalanceCents);
}

@override
String toString() {
    return 'UtilityBalance(grossCents: $grossCents, openingBalanceCents: $openingBalanceCents, appliedCreditCents: $appliedCreditCents, netCents: $netCents, paidCents: $paidCents, closingBalanceCents: $closingBalanceCents)';
}


}

/// @nodoc
abstract mixin class _$UtilityBalanceCopyWith<$Res> implements $UtilityBalanceCopyWith<$Res> {
  factory _$UtilityBalanceCopyWith(_UtilityBalance value, $Res Function(_UtilityBalance) _then) = __$UtilityBalanceCopyWithImpl;
@override @useResult
$Res call({
 int grossCents, int openingBalanceCents, int appliedCreditCents, int netCents, int? paidCents, int closingBalanceCents
});




}
/// @nodoc
class __$UtilityBalanceCopyWithImpl<$Res>
    implements _$UtilityBalanceCopyWith<$Res> {
  __$UtilityBalanceCopyWithImpl(this._self, this._then);

  final _UtilityBalance _self;
  final $Res Function(_UtilityBalance) _then;

/// Create a copy of UtilityBalance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? grossCents = null,Object? openingBalanceCents = null,Object? appliedCreditCents = null,Object? netCents = null,Object? paidCents = freezed,Object? closingBalanceCents = null,}) {
  return _then(_UtilityBalance(
grossCents: null == grossCents ? _self.grossCents : grossCents // ignore: cast_nullable_to_non_nullable
as int,openingBalanceCents: null == openingBalanceCents ? _self.openingBalanceCents : openingBalanceCents // ignore: cast_nullable_to_non_nullable
as int,appliedCreditCents: null == appliedCreditCents ? _self.appliedCreditCents : appliedCreditCents // ignore: cast_nullable_to_non_nullable
as int,netCents: null == netCents ? _self.netCents : netCents // ignore: cast_nullable_to_non_nullable
as int,paidCents: freezed == paidCents ? _self.paidCents : paidCents // ignore: cast_nullable_to_non_nullable
as int?,closingBalanceCents: null == closingBalanceCents ? _self.closingBalanceCents : closingBalanceCents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$RentRow {

 String? get chargeId; int get amountCents; String get dueDate; ChargeStatus? get status; String? get paidAt; int? get publishedAt;
/// Create a copy of RentRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RentRowCopyWith<RentRow> get copyWith => _$RentRowCopyWithImpl<RentRow>(this as RentRow, _$identity);

  /// Serializes this RentRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RentRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RentRow&&(identical(other.chargeId, _this.chargeId) || other.chargeId == _this.chargeId)&&(identical(other.amountCents, _this.amountCents) || other.amountCents == _this.amountCents)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.paidAt, _this.paidAt) || other.paidAt == _this.paidAt)&&(identical(other.publishedAt, _this.publishedAt) || other.publishedAt == _this.publishedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RentRow;
  return Object.hash(runtimeType,_this.chargeId,_this.amountCents,_this.dueDate,_this.status,_this.paidAt,_this.publishedAt);
}

@override
String toString() {
  final _this = this as RentRow;
  return 'RentRow(chargeId: ${_this.chargeId}, amountCents: ${_this.amountCents}, dueDate: ${_this.dueDate}, status: ${_this.status}, paidAt: ${_this.paidAt}, publishedAt: ${_this.publishedAt})';
}


}

/// @nodoc
abstract mixin class $RentRowCopyWith<$Res>  {
  factory $RentRowCopyWith(RentRow value, $Res Function(RentRow) _then) = _$RentRowCopyWithImpl;
@useResult
$Res call({
 String? chargeId, int amountCents, String dueDate, ChargeStatus? status, String? paidAt, int? publishedAt
});




}
/// @nodoc
class _$RentRowCopyWithImpl<$Res>
    implements $RentRowCopyWith<$Res> {
  _$RentRowCopyWithImpl(this._self, this._then);

  final RentRow _self;
  final $Res Function(RentRow) _then;

/// Create a copy of RentRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chargeId = freezed,Object? amountCents = null,Object? dueDate = null,Object? status = freezed,Object? paidAt = freezed,Object? publishedAt = freezed,}) {
  return _then(RentRow(
chargeId: freezed == chargeId ? _self.chargeId : chargeId // ignore: cast_nullable_to_non_nullable
as String?,amountCents: null == amountCents ? _self.amountCents : amountCents // ignore: cast_nullable_to_non_nullable
as int,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChargeStatus?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as String?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [RentRow].
extension RentRowPatterns on RentRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RentRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RentRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RentRow value)  $default,){
final _that = this;
switch (_that) {
case _RentRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RentRow value)?  $default,){
final _that = this;
switch (_that) {
case _RentRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? chargeId,  int amountCents,  String dueDate,  ChargeStatus? status,  String? paidAt,  int? publishedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RentRow() when $default != null:
return $default(_that.chargeId,_that.amountCents,_that.dueDate,_that.status,_that.paidAt,_that.publishedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? chargeId,  int amountCents,  String dueDate,  ChargeStatus? status,  String? paidAt,  int? publishedAt)  $default,) {final _that = this;
switch (_that) {
case _RentRow():
return $default(_that.chargeId,_that.amountCents,_that.dueDate,_that.status,_that.paidAt,_that.publishedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? chargeId,  int amountCents,  String dueDate,  ChargeStatus? status,  String? paidAt,  int? publishedAt)?  $default,) {final _that = this;
switch (_that) {
case _RentRow() when $default != null:
return $default(_that.chargeId,_that.amountCents,_that.dueDate,_that.status,_that.paidAt,_that.publishedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RentRow implements RentRow {
  const _RentRow({this.chargeId, required this.amountCents, required this.dueDate, this.status, this.paidAt, this.publishedAt});
  factory _RentRow.fromJson(Map<String, dynamic> json) => _$RentRowFromJson(json);

@override final  String? chargeId;
@override final  int amountCents;
@override final  String dueDate;
@override final  ChargeStatus? status;
@override final  String? paidAt;
@override final  int? publishedAt;

/// Create a copy of RentRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RentRowCopyWith<_RentRow> get copyWith => __$RentRowCopyWithImpl<_RentRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RentRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RentRow&&(identical(other.chargeId, chargeId) || other.chargeId == chargeId)&&(identical(other.amountCents, amountCents) || other.amountCents == amountCents)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,chargeId,amountCents,dueDate,status,paidAt,publishedAt);
}

@override
String toString() {
    return 'RentRow(chargeId: $chargeId, amountCents: $amountCents, dueDate: $dueDate, status: $status, paidAt: $paidAt, publishedAt: $publishedAt)';
}


}

/// @nodoc
abstract mixin class _$RentRowCopyWith<$Res> implements $RentRowCopyWith<$Res> {
  factory _$RentRowCopyWith(_RentRow value, $Res Function(_RentRow) _then) = __$RentRowCopyWithImpl;
@override @useResult
$Res call({
 String? chargeId, int amountCents, String dueDate, ChargeStatus? status, String? paidAt, int? publishedAt
});




}
/// @nodoc
class __$RentRowCopyWithImpl<$Res>
    implements _$RentRowCopyWith<$Res> {
  __$RentRowCopyWithImpl(this._self, this._then);

  final _RentRow _self;
  final $Res Function(_RentRow) _then;

/// Create a copy of RentRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chargeId = freezed,Object? amountCents = null,Object? dueDate = null,Object? status = freezed,Object? paidAt = freezed,Object? publishedAt = freezed,}) {
  return _then(_RentRow(
chargeId: freezed == chargeId ? _self.chargeId : chargeId // ignore: cast_nullable_to_non_nullable
as String?,amountCents: null == amountCents ? _self.amountCents : amountCents // ignore: cast_nullable_to_non_nullable
as int,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChargeStatus?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as String?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$UtilityRow {

 String get categoryId; String get categoryName; String get unit; bool get usesMeter; AllocationType get allocationType; int? get ruleFixedAmountCents; double? get rulePercentage; int? get ruleDeductionCents; int? get totalBillCents; double? get totalUsage; double? get meterReading; double? get previousMeterReading; double? get tenantUsage; double? get tenantMeterReading; double? get previousTenantMeterReading; int? get amountCents; String? get chargeId; String get dueDate; ChargeStatus? get status; String? get paidAt; int? get publishedAt;
/// Create a copy of UtilityRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UtilityRowCopyWith<UtilityRow> get copyWith => _$UtilityRowCopyWithImpl<UtilityRow>(this as UtilityRow, _$identity);

  /// Serializes this UtilityRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UtilityRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UtilityRow&&(identical(other.categoryId, _this.categoryId) || other.categoryId == _this.categoryId)&&(identical(other.categoryName, _this.categoryName) || other.categoryName == _this.categoryName)&&(identical(other.unit, _this.unit) || other.unit == _this.unit)&&(identical(other.usesMeter, _this.usesMeter) || other.usesMeter == _this.usesMeter)&&(identical(other.allocationType, _this.allocationType) || other.allocationType == _this.allocationType)&&(identical(other.ruleFixedAmountCents, _this.ruleFixedAmountCents) || other.ruleFixedAmountCents == _this.ruleFixedAmountCents)&&(identical(other.rulePercentage, _this.rulePercentage) || other.rulePercentage == _this.rulePercentage)&&(identical(other.ruleDeductionCents, _this.ruleDeductionCents) || other.ruleDeductionCents == _this.ruleDeductionCents)&&(identical(other.totalBillCents, _this.totalBillCents) || other.totalBillCents == _this.totalBillCents)&&(identical(other.totalUsage, _this.totalUsage) || other.totalUsage == _this.totalUsage)&&(identical(other.meterReading, _this.meterReading) || other.meterReading == _this.meterReading)&&(identical(other.previousMeterReading, _this.previousMeterReading) || other.previousMeterReading == _this.previousMeterReading)&&(identical(other.tenantUsage, _this.tenantUsage) || other.tenantUsage == _this.tenantUsage)&&(identical(other.tenantMeterReading, _this.tenantMeterReading) || other.tenantMeterReading == _this.tenantMeterReading)&&(identical(other.previousTenantMeterReading, _this.previousTenantMeterReading) || other.previousTenantMeterReading == _this.previousTenantMeterReading)&&(identical(other.amountCents, _this.amountCents) || other.amountCents == _this.amountCents)&&(identical(other.chargeId, _this.chargeId) || other.chargeId == _this.chargeId)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.paidAt, _this.paidAt) || other.paidAt == _this.paidAt)&&(identical(other.publishedAt, _this.publishedAt) || other.publishedAt == _this.publishedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UtilityRow;
  return Object.hashAll([runtimeType,_this.categoryId,_this.categoryName,_this.unit,_this.usesMeter,_this.allocationType,_this.ruleFixedAmountCents,_this.rulePercentage,_this.ruleDeductionCents,_this.totalBillCents,_this.totalUsage,_this.meterReading,_this.previousMeterReading,_this.tenantUsage,_this.tenantMeterReading,_this.previousTenantMeterReading,_this.amountCents,_this.chargeId,_this.dueDate,_this.status,_this.paidAt,_this.publishedAt]);
}

@override
String toString() {
  final _this = this as UtilityRow;
  return 'UtilityRow(categoryId: ${_this.categoryId}, categoryName: ${_this.categoryName}, unit: ${_this.unit}, usesMeter: ${_this.usesMeter}, allocationType: ${_this.allocationType}, ruleFixedAmountCents: ${_this.ruleFixedAmountCents}, rulePercentage: ${_this.rulePercentage}, ruleDeductionCents: ${_this.ruleDeductionCents}, totalBillCents: ${_this.totalBillCents}, totalUsage: ${_this.totalUsage}, meterReading: ${_this.meterReading}, previousMeterReading: ${_this.previousMeterReading}, tenantUsage: ${_this.tenantUsage}, tenantMeterReading: ${_this.tenantMeterReading}, previousTenantMeterReading: ${_this.previousTenantMeterReading}, amountCents: ${_this.amountCents}, chargeId: ${_this.chargeId}, dueDate: ${_this.dueDate}, status: ${_this.status}, paidAt: ${_this.paidAt}, publishedAt: ${_this.publishedAt})';
}


}

/// @nodoc
abstract mixin class $UtilityRowCopyWith<$Res>  {
  factory $UtilityRowCopyWith(UtilityRow value, $Res Function(UtilityRow) _then) = _$UtilityRowCopyWithImpl;
@useResult
$Res call({
 String categoryId, String categoryName, String unit, bool usesMeter, AllocationType allocationType, int? ruleFixedAmountCents, double? rulePercentage, int? ruleDeductionCents, int? totalBillCents, double? totalUsage, double? meterReading, double? previousMeterReading, double? tenantUsage, double? tenantMeterReading, double? previousTenantMeterReading, int? amountCents, String? chargeId, String dueDate, ChargeStatus? status, String? paidAt, int? publishedAt
});




}
/// @nodoc
class _$UtilityRowCopyWithImpl<$Res>
    implements $UtilityRowCopyWith<$Res> {
  _$UtilityRowCopyWithImpl(this._self, this._then);

  final UtilityRow _self;
  final $Res Function(UtilityRow) _then;

/// Create a copy of UtilityRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryId = null,Object? categoryName = null,Object? unit = null,Object? usesMeter = null,Object? allocationType = null,Object? ruleFixedAmountCents = freezed,Object? rulePercentage = freezed,Object? ruleDeductionCents = freezed,Object? totalBillCents = freezed,Object? totalUsage = freezed,Object? meterReading = freezed,Object? previousMeterReading = freezed,Object? tenantUsage = freezed,Object? tenantMeterReading = freezed,Object? previousTenantMeterReading = freezed,Object? amountCents = freezed,Object? chargeId = freezed,Object? dueDate = null,Object? status = freezed,Object? paidAt = freezed,Object? publishedAt = freezed,}) {
  return _then(UtilityRow(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,usesMeter: null == usesMeter ? _self.usesMeter : usesMeter // ignore: cast_nullable_to_non_nullable
as bool,allocationType: null == allocationType ? _self.allocationType : allocationType // ignore: cast_nullable_to_non_nullable
as AllocationType,ruleFixedAmountCents: freezed == ruleFixedAmountCents ? _self.ruleFixedAmountCents : ruleFixedAmountCents // ignore: cast_nullable_to_non_nullable
as int?,rulePercentage: freezed == rulePercentage ? _self.rulePercentage : rulePercentage // ignore: cast_nullable_to_non_nullable
as double?,ruleDeductionCents: freezed == ruleDeductionCents ? _self.ruleDeductionCents : ruleDeductionCents // ignore: cast_nullable_to_non_nullable
as int?,totalBillCents: freezed == totalBillCents ? _self.totalBillCents : totalBillCents // ignore: cast_nullable_to_non_nullable
as int?,totalUsage: freezed == totalUsage ? _self.totalUsage : totalUsage // ignore: cast_nullable_to_non_nullable
as double?,meterReading: freezed == meterReading ? _self.meterReading : meterReading // ignore: cast_nullable_to_non_nullable
as double?,previousMeterReading: freezed == previousMeterReading ? _self.previousMeterReading : previousMeterReading // ignore: cast_nullable_to_non_nullable
as double?,tenantUsage: freezed == tenantUsage ? _self.tenantUsage : tenantUsage // ignore: cast_nullable_to_non_nullable
as double?,tenantMeterReading: freezed == tenantMeterReading ? _self.tenantMeterReading : tenantMeterReading // ignore: cast_nullable_to_non_nullable
as double?,previousTenantMeterReading: freezed == previousTenantMeterReading ? _self.previousTenantMeterReading : previousTenantMeterReading // ignore: cast_nullable_to_non_nullable
as double?,amountCents: freezed == amountCents ? _self.amountCents : amountCents // ignore: cast_nullable_to_non_nullable
as int?,chargeId: freezed == chargeId ? _self.chargeId : chargeId // ignore: cast_nullable_to_non_nullable
as String?,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChargeStatus?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as String?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UtilityRow].
extension UtilityRowPatterns on UtilityRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UtilityRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UtilityRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UtilityRow value)  $default,){
final _that = this;
switch (_that) {
case _UtilityRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UtilityRow value)?  $default,){
final _that = this;
switch (_that) {
case _UtilityRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String categoryId,  String categoryName,  String unit,  bool usesMeter,  AllocationType allocationType,  int? ruleFixedAmountCents,  double? rulePercentage,  int? ruleDeductionCents,  int? totalBillCents,  double? totalUsage,  double? meterReading,  double? previousMeterReading,  double? tenantUsage,  double? tenantMeterReading,  double? previousTenantMeterReading,  int? amountCents,  String? chargeId,  String dueDate,  ChargeStatus? status,  String? paidAt,  int? publishedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UtilityRow() when $default != null:
return $default(_that.categoryId,_that.categoryName,_that.unit,_that.usesMeter,_that.allocationType,_that.ruleFixedAmountCents,_that.rulePercentage,_that.ruleDeductionCents,_that.totalBillCents,_that.totalUsage,_that.meterReading,_that.previousMeterReading,_that.tenantUsage,_that.tenantMeterReading,_that.previousTenantMeterReading,_that.amountCents,_that.chargeId,_that.dueDate,_that.status,_that.paidAt,_that.publishedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String categoryId,  String categoryName,  String unit,  bool usesMeter,  AllocationType allocationType,  int? ruleFixedAmountCents,  double? rulePercentage,  int? ruleDeductionCents,  int? totalBillCents,  double? totalUsage,  double? meterReading,  double? previousMeterReading,  double? tenantUsage,  double? tenantMeterReading,  double? previousTenantMeterReading,  int? amountCents,  String? chargeId,  String dueDate,  ChargeStatus? status,  String? paidAt,  int? publishedAt)  $default,) {final _that = this;
switch (_that) {
case _UtilityRow():
return $default(_that.categoryId,_that.categoryName,_that.unit,_that.usesMeter,_that.allocationType,_that.ruleFixedAmountCents,_that.rulePercentage,_that.ruleDeductionCents,_that.totalBillCents,_that.totalUsage,_that.meterReading,_that.previousMeterReading,_that.tenantUsage,_that.tenantMeterReading,_that.previousTenantMeterReading,_that.amountCents,_that.chargeId,_that.dueDate,_that.status,_that.paidAt,_that.publishedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String categoryId,  String categoryName,  String unit,  bool usesMeter,  AllocationType allocationType,  int? ruleFixedAmountCents,  double? rulePercentage,  int? ruleDeductionCents,  int? totalBillCents,  double? totalUsage,  double? meterReading,  double? previousMeterReading,  double? tenantUsage,  double? tenantMeterReading,  double? previousTenantMeterReading,  int? amountCents,  String? chargeId,  String dueDate,  ChargeStatus? status,  String? paidAt,  int? publishedAt)?  $default,) {final _that = this;
switch (_that) {
case _UtilityRow() when $default != null:
return $default(_that.categoryId,_that.categoryName,_that.unit,_that.usesMeter,_that.allocationType,_that.ruleFixedAmountCents,_that.rulePercentage,_that.ruleDeductionCents,_that.totalBillCents,_that.totalUsage,_that.meterReading,_that.previousMeterReading,_that.tenantUsage,_that.tenantMeterReading,_that.previousTenantMeterReading,_that.amountCents,_that.chargeId,_that.dueDate,_that.status,_that.paidAt,_that.publishedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UtilityRow implements UtilityRow {
  const _UtilityRow({required this.categoryId, required this.categoryName, required this.unit, required this.usesMeter, required this.allocationType, this.ruleFixedAmountCents, this.rulePercentage, this.ruleDeductionCents, this.totalBillCents, this.totalUsage, this.meterReading, this.previousMeterReading, this.tenantUsage, this.tenantMeterReading, this.previousTenantMeterReading, this.amountCents, this.chargeId, required this.dueDate, this.status, this.paidAt, this.publishedAt});
  factory _UtilityRow.fromJson(Map<String, dynamic> json) => _$UtilityRowFromJson(json);

@override final  String categoryId;
@override final  String categoryName;
@override final  String unit;
@override final  bool usesMeter;
@override final  AllocationType allocationType;
@override final  int? ruleFixedAmountCents;
@override final  double? rulePercentage;
@override final  int? ruleDeductionCents;
@override final  int? totalBillCents;
@override final  double? totalUsage;
@override final  double? meterReading;
@override final  double? previousMeterReading;
@override final  double? tenantUsage;
@override final  double? tenantMeterReading;
@override final  double? previousTenantMeterReading;
@override final  int? amountCents;
@override final  String? chargeId;
@override final  String dueDate;
@override final  ChargeStatus? status;
@override final  String? paidAt;
@override final  int? publishedAt;

/// Create a copy of UtilityRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UtilityRowCopyWith<_UtilityRow> get copyWith => __$UtilityRowCopyWithImpl<_UtilityRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UtilityRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UtilityRow&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.usesMeter, usesMeter) || other.usesMeter == usesMeter)&&(identical(other.allocationType, allocationType) || other.allocationType == allocationType)&&(identical(other.ruleFixedAmountCents, ruleFixedAmountCents) || other.ruleFixedAmountCents == ruleFixedAmountCents)&&(identical(other.rulePercentage, rulePercentage) || other.rulePercentage == rulePercentage)&&(identical(other.ruleDeductionCents, ruleDeductionCents) || other.ruleDeductionCents == ruleDeductionCents)&&(identical(other.totalBillCents, totalBillCents) || other.totalBillCents == totalBillCents)&&(identical(other.totalUsage, totalUsage) || other.totalUsage == totalUsage)&&(identical(other.meterReading, meterReading) || other.meterReading == meterReading)&&(identical(other.previousMeterReading, previousMeterReading) || other.previousMeterReading == previousMeterReading)&&(identical(other.tenantUsage, tenantUsage) || other.tenantUsage == tenantUsage)&&(identical(other.tenantMeterReading, tenantMeterReading) || other.tenantMeterReading == tenantMeterReading)&&(identical(other.previousTenantMeterReading, previousTenantMeterReading) || other.previousTenantMeterReading == previousTenantMeterReading)&&(identical(other.amountCents, amountCents) || other.amountCents == amountCents)&&(identical(other.chargeId, chargeId) || other.chargeId == chargeId)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,categoryId,categoryName,unit,usesMeter,allocationType,ruleFixedAmountCents,rulePercentage,ruleDeductionCents,totalBillCents,totalUsage,meterReading,previousMeterReading,tenantUsage,tenantMeterReading,previousTenantMeterReading,amountCents,chargeId,dueDate,status,paidAt,publishedAt]);
}

@override
String toString() {
    return 'UtilityRow(categoryId: $categoryId, categoryName: $categoryName, unit: $unit, usesMeter: $usesMeter, allocationType: $allocationType, ruleFixedAmountCents: $ruleFixedAmountCents, rulePercentage: $rulePercentage, ruleDeductionCents: $ruleDeductionCents, totalBillCents: $totalBillCents, totalUsage: $totalUsage, meterReading: $meterReading, previousMeterReading: $previousMeterReading, tenantUsage: $tenantUsage, tenantMeterReading: $tenantMeterReading, previousTenantMeterReading: $previousTenantMeterReading, amountCents: $amountCents, chargeId: $chargeId, dueDate: $dueDate, status: $status, paidAt: $paidAt, publishedAt: $publishedAt)';
}


}

/// @nodoc
abstract mixin class _$UtilityRowCopyWith<$Res> implements $UtilityRowCopyWith<$Res> {
  factory _$UtilityRowCopyWith(_UtilityRow value, $Res Function(_UtilityRow) _then) = __$UtilityRowCopyWithImpl;
@override @useResult
$Res call({
 String categoryId, String categoryName, String unit, bool usesMeter, AllocationType allocationType, int? ruleFixedAmountCents, double? rulePercentage, int? ruleDeductionCents, int? totalBillCents, double? totalUsage, double? meterReading, double? previousMeterReading, double? tenantUsage, double? tenantMeterReading, double? previousTenantMeterReading, int? amountCents, String? chargeId, String dueDate, ChargeStatus? status, String? paidAt, int? publishedAt
});




}
/// @nodoc
class __$UtilityRowCopyWithImpl<$Res>
    implements _$UtilityRowCopyWith<$Res> {
  __$UtilityRowCopyWithImpl(this._self, this._then);

  final _UtilityRow _self;
  final $Res Function(_UtilityRow) _then;

/// Create a copy of UtilityRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryId = null,Object? categoryName = null,Object? unit = null,Object? usesMeter = null,Object? allocationType = null,Object? ruleFixedAmountCents = freezed,Object? rulePercentage = freezed,Object? ruleDeductionCents = freezed,Object? totalBillCents = freezed,Object? totalUsage = freezed,Object? meterReading = freezed,Object? previousMeterReading = freezed,Object? tenantUsage = freezed,Object? tenantMeterReading = freezed,Object? previousTenantMeterReading = freezed,Object? amountCents = freezed,Object? chargeId = freezed,Object? dueDate = null,Object? status = freezed,Object? paidAt = freezed,Object? publishedAt = freezed,}) {
  return _then(_UtilityRow(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,usesMeter: null == usesMeter ? _self.usesMeter : usesMeter // ignore: cast_nullable_to_non_nullable
as bool,allocationType: null == allocationType ? _self.allocationType : allocationType // ignore: cast_nullable_to_non_nullable
as AllocationType,ruleFixedAmountCents: freezed == ruleFixedAmountCents ? _self.ruleFixedAmountCents : ruleFixedAmountCents // ignore: cast_nullable_to_non_nullable
as int?,rulePercentage: freezed == rulePercentage ? _self.rulePercentage : rulePercentage // ignore: cast_nullable_to_non_nullable
as double?,ruleDeductionCents: freezed == ruleDeductionCents ? _self.ruleDeductionCents : ruleDeductionCents // ignore: cast_nullable_to_non_nullable
as int?,totalBillCents: freezed == totalBillCents ? _self.totalBillCents : totalBillCents // ignore: cast_nullable_to_non_nullable
as int?,totalUsage: freezed == totalUsage ? _self.totalUsage : totalUsage // ignore: cast_nullable_to_non_nullable
as double?,meterReading: freezed == meterReading ? _self.meterReading : meterReading // ignore: cast_nullable_to_non_nullable
as double?,previousMeterReading: freezed == previousMeterReading ? _self.previousMeterReading : previousMeterReading // ignore: cast_nullable_to_non_nullable
as double?,tenantUsage: freezed == tenantUsage ? _self.tenantUsage : tenantUsage // ignore: cast_nullable_to_non_nullable
as double?,tenantMeterReading: freezed == tenantMeterReading ? _self.tenantMeterReading : tenantMeterReading // ignore: cast_nullable_to_non_nullable
as double?,previousTenantMeterReading: freezed == previousTenantMeterReading ? _self.previousTenantMeterReading : previousTenantMeterReading // ignore: cast_nullable_to_non_nullable
as double?,amountCents: freezed == amountCents ? _self.amountCents : amountCents // ignore: cast_nullable_to_non_nullable
as int?,chargeId: freezed == chargeId ? _self.chargeId : chargeId // ignore: cast_nullable_to_non_nullable
as String?,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChargeStatus?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as String?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$BillingInfo {

 Plan get plan; String? get subscriptionStatus; int? get currentPeriodEnd; bool get legacyFullAccess; int get propertyCount; int get leaseCount; PlanLimits get limits;
/// Create a copy of BillingInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillingInfoCopyWith<BillingInfo> get copyWith => _$BillingInfoCopyWithImpl<BillingInfo>(this as BillingInfo, _$identity);

  /// Serializes this BillingInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BillingInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillingInfo&&(identical(other.plan, _this.plan) || other.plan == _this.plan)&&(identical(other.subscriptionStatus, _this.subscriptionStatus) || other.subscriptionStatus == _this.subscriptionStatus)&&(identical(other.currentPeriodEnd, _this.currentPeriodEnd) || other.currentPeriodEnd == _this.currentPeriodEnd)&&(identical(other.legacyFullAccess, _this.legacyFullAccess) || other.legacyFullAccess == _this.legacyFullAccess)&&(identical(other.propertyCount, _this.propertyCount) || other.propertyCount == _this.propertyCount)&&(identical(other.leaseCount, _this.leaseCount) || other.leaseCount == _this.leaseCount)&&(identical(other.limits, _this.limits) || other.limits == _this.limits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BillingInfo;
  return Object.hash(runtimeType,_this.plan,_this.subscriptionStatus,_this.currentPeriodEnd,_this.legacyFullAccess,_this.propertyCount,_this.leaseCount,_this.limits);
}

@override
String toString() {
  final _this = this as BillingInfo;
  return 'BillingInfo(plan: ${_this.plan}, subscriptionStatus: ${_this.subscriptionStatus}, currentPeriodEnd: ${_this.currentPeriodEnd}, legacyFullAccess: ${_this.legacyFullAccess}, propertyCount: ${_this.propertyCount}, leaseCount: ${_this.leaseCount}, limits: ${_this.limits})';
}


}

/// @nodoc
abstract mixin class $BillingInfoCopyWith<$Res>  {
  factory $BillingInfoCopyWith(BillingInfo value, $Res Function(BillingInfo) _then) = _$BillingInfoCopyWithImpl;
@useResult
$Res call({
 Plan plan, String? subscriptionStatus, int? currentPeriodEnd, bool legacyFullAccess, int propertyCount, int leaseCount, PlanLimits limits
});


$PlanLimitsCopyWith<$Res> get limits;

}
/// @nodoc
class _$BillingInfoCopyWithImpl<$Res>
    implements $BillingInfoCopyWith<$Res> {
  _$BillingInfoCopyWithImpl(this._self, this._then);

  final BillingInfo _self;
  final $Res Function(BillingInfo) _then;

/// Create a copy of BillingInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? plan = null,Object? subscriptionStatus = freezed,Object? currentPeriodEnd = freezed,Object? legacyFullAccess = null,Object? propertyCount = null,Object? leaseCount = null,Object? limits = null,}) {
  return _then(BillingInfo(
plan: null == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as Plan,subscriptionStatus: freezed == subscriptionStatus ? _self.subscriptionStatus : subscriptionStatus // ignore: cast_nullable_to_non_nullable
as String?,currentPeriodEnd: freezed == currentPeriodEnd ? _self.currentPeriodEnd : currentPeriodEnd // ignore: cast_nullable_to_non_nullable
as int?,legacyFullAccess: null == legacyFullAccess ? _self.legacyFullAccess : legacyFullAccess // ignore: cast_nullable_to_non_nullable
as bool,propertyCount: null == propertyCount ? _self.propertyCount : propertyCount // ignore: cast_nullable_to_non_nullable
as int,leaseCount: null == leaseCount ? _self.leaseCount : leaseCount // ignore: cast_nullable_to_non_nullable
as int,limits: null == limits ? _self.limits : limits // ignore: cast_nullable_to_non_nullable
as PlanLimits,
  ));
}
/// Create a copy of BillingInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlanLimitsCopyWith<$Res> get limits {
  
  return $PlanLimitsCopyWith<$Res>(_self.limits, (value) {
    return _then(_self.copyWith(limits: value));
  });
}
}


/// Adds pattern-matching-related methods to [BillingInfo].
extension BillingInfoPatterns on BillingInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillingInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillingInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillingInfo value)  $default,){
final _that = this;
switch (_that) {
case _BillingInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillingInfo value)?  $default,){
final _that = this;
switch (_that) {
case _BillingInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Plan plan,  String? subscriptionStatus,  int? currentPeriodEnd,  bool legacyFullAccess,  int propertyCount,  int leaseCount,  PlanLimits limits)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillingInfo() when $default != null:
return $default(_that.plan,_that.subscriptionStatus,_that.currentPeriodEnd,_that.legacyFullAccess,_that.propertyCount,_that.leaseCount,_that.limits);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Plan plan,  String? subscriptionStatus,  int? currentPeriodEnd,  bool legacyFullAccess,  int propertyCount,  int leaseCount,  PlanLimits limits)  $default,) {final _that = this;
switch (_that) {
case _BillingInfo():
return $default(_that.plan,_that.subscriptionStatus,_that.currentPeriodEnd,_that.legacyFullAccess,_that.propertyCount,_that.leaseCount,_that.limits);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Plan plan,  String? subscriptionStatus,  int? currentPeriodEnd,  bool legacyFullAccess,  int propertyCount,  int leaseCount,  PlanLimits limits)?  $default,) {final _that = this;
switch (_that) {
case _BillingInfo() when $default != null:
return $default(_that.plan,_that.subscriptionStatus,_that.currentPeriodEnd,_that.legacyFullAccess,_that.propertyCount,_that.leaseCount,_that.limits);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillingInfo implements BillingInfo {
  const _BillingInfo({required this.plan, this.subscriptionStatus, this.currentPeriodEnd, required this.legacyFullAccess, required this.propertyCount, required this.leaseCount, required this.limits});
  factory _BillingInfo.fromJson(Map<String, dynamic> json) => _$BillingInfoFromJson(json);

@override final  Plan plan;
@override final  String? subscriptionStatus;
@override final  int? currentPeriodEnd;
@override final  bool legacyFullAccess;
@override final  int propertyCount;
@override final  int leaseCount;
@override final  PlanLimits limits;

/// Create a copy of BillingInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillingInfoCopyWith<_BillingInfo> get copyWith => __$BillingInfoCopyWithImpl<_BillingInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillingInfoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillingInfo&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.subscriptionStatus, subscriptionStatus) || other.subscriptionStatus == subscriptionStatus)&&(identical(other.currentPeriodEnd, currentPeriodEnd) || other.currentPeriodEnd == currentPeriodEnd)&&(identical(other.legacyFullAccess, legacyFullAccess) || other.legacyFullAccess == legacyFullAccess)&&(identical(other.propertyCount, propertyCount) || other.propertyCount == propertyCount)&&(identical(other.leaseCount, leaseCount) || other.leaseCount == leaseCount)&&(identical(other.limits, limits) || other.limits == limits));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,plan,subscriptionStatus,currentPeriodEnd,legacyFullAccess,propertyCount,leaseCount,limits);
}

@override
String toString() {
    return 'BillingInfo(plan: $plan, subscriptionStatus: $subscriptionStatus, currentPeriodEnd: $currentPeriodEnd, legacyFullAccess: $legacyFullAccess, propertyCount: $propertyCount, leaseCount: $leaseCount, limits: $limits)';
}


}

/// @nodoc
abstract mixin class _$BillingInfoCopyWith<$Res> implements $BillingInfoCopyWith<$Res> {
  factory _$BillingInfoCopyWith(_BillingInfo value, $Res Function(_BillingInfo) _then) = __$BillingInfoCopyWithImpl;
@override @useResult
$Res call({
 Plan plan, String? subscriptionStatus, int? currentPeriodEnd, bool legacyFullAccess, int propertyCount, int leaseCount, PlanLimits limits
});


@override $PlanLimitsCopyWith<$Res> get limits;

}
/// @nodoc
class __$BillingInfoCopyWithImpl<$Res>
    implements _$BillingInfoCopyWith<$Res> {
  __$BillingInfoCopyWithImpl(this._self, this._then);

  final _BillingInfo _self;
  final $Res Function(_BillingInfo) _then;

/// Create a copy of BillingInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? plan = null,Object? subscriptionStatus = freezed,Object? currentPeriodEnd = freezed,Object? legacyFullAccess = null,Object? propertyCount = null,Object? leaseCount = null,Object? limits = null,}) {
  return _then(_BillingInfo(
plan: null == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as Plan,subscriptionStatus: freezed == subscriptionStatus ? _self.subscriptionStatus : subscriptionStatus // ignore: cast_nullable_to_non_nullable
as String?,currentPeriodEnd: freezed == currentPeriodEnd ? _self.currentPeriodEnd : currentPeriodEnd // ignore: cast_nullable_to_non_nullable
as int?,legacyFullAccess: null == legacyFullAccess ? _self.legacyFullAccess : legacyFullAccess // ignore: cast_nullable_to_non_nullable
as bool,propertyCount: null == propertyCount ? _self.propertyCount : propertyCount // ignore: cast_nullable_to_non_nullable
as int,leaseCount: null == leaseCount ? _self.leaseCount : leaseCount // ignore: cast_nullable_to_non_nullable
as int,limits: null == limits ? _self.limits : limits // ignore: cast_nullable_to_non_nullable
as PlanLimits,
  ));
}

/// Create a copy of BillingInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlanLimitsCopyWith<$Res> get limits {
  
  return $PlanLimitsCopyWith<$Res>(_self.limits, (value) {
    return _then(_self.copyWith(limits: value));
  });
}
}


/// @nodoc
mixin _$PlanLimits {

 int get maxProperties; int get maxLeases;
/// Create a copy of PlanLimits
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlanLimitsCopyWith<PlanLimits> get copyWith => _$PlanLimitsCopyWithImpl<PlanLimits>(this as PlanLimits, _$identity);

  /// Serializes this PlanLimits to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PlanLimits;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanLimits&&(identical(other.maxProperties, _this.maxProperties) || other.maxProperties == _this.maxProperties)&&(identical(other.maxLeases, _this.maxLeases) || other.maxLeases == _this.maxLeases));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PlanLimits;
  return Object.hash(runtimeType,_this.maxProperties,_this.maxLeases);
}

@override
String toString() {
  final _this = this as PlanLimits;
  return 'PlanLimits(maxProperties: ${_this.maxProperties}, maxLeases: ${_this.maxLeases})';
}


}

/// @nodoc
abstract mixin class $PlanLimitsCopyWith<$Res>  {
  factory $PlanLimitsCopyWith(PlanLimits value, $Res Function(PlanLimits) _then) = _$PlanLimitsCopyWithImpl;
@useResult
$Res call({
 int maxProperties, int maxLeases
});




}
/// @nodoc
class _$PlanLimitsCopyWithImpl<$Res>
    implements $PlanLimitsCopyWith<$Res> {
  _$PlanLimitsCopyWithImpl(this._self, this._then);

  final PlanLimits _self;
  final $Res Function(PlanLimits) _then;

/// Create a copy of PlanLimits
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxProperties = null,Object? maxLeases = null,}) {
  return _then(PlanLimits(
maxProperties: null == maxProperties ? _self.maxProperties : maxProperties // ignore: cast_nullable_to_non_nullable
as int,maxLeases: null == maxLeases ? _self.maxLeases : maxLeases // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PlanLimits].
extension PlanLimitsPatterns on PlanLimits {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlanLimits value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlanLimits() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlanLimits value)  $default,){
final _that = this;
switch (_that) {
case _PlanLimits():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlanLimits value)?  $default,){
final _that = this;
switch (_that) {
case _PlanLimits() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int maxProperties,  int maxLeases)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlanLimits() when $default != null:
return $default(_that.maxProperties,_that.maxLeases);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int maxProperties,  int maxLeases)  $default,) {final _that = this;
switch (_that) {
case _PlanLimits():
return $default(_that.maxProperties,_that.maxLeases);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int maxProperties,  int maxLeases)?  $default,) {final _that = this;
switch (_that) {
case _PlanLimits() when $default != null:
return $default(_that.maxProperties,_that.maxLeases);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlanLimits implements PlanLimits {
  const _PlanLimits({required this.maxProperties, required this.maxLeases});
  factory _PlanLimits.fromJson(Map<String, dynamic> json) => _$PlanLimitsFromJson(json);

@override final  int maxProperties;
@override final  int maxLeases;

/// Create a copy of PlanLimits
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlanLimitsCopyWith<_PlanLimits> get copyWith => __$PlanLimitsCopyWithImpl<_PlanLimits>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlanLimitsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlanLimits&&(identical(other.maxProperties, maxProperties) || other.maxProperties == maxProperties)&&(identical(other.maxLeases, maxLeases) || other.maxLeases == maxLeases));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,maxProperties,maxLeases);
}

@override
String toString() {
    return 'PlanLimits(maxProperties: $maxProperties, maxLeases: $maxLeases)';
}


}

/// @nodoc
abstract mixin class _$PlanLimitsCopyWith<$Res> implements $PlanLimitsCopyWith<$Res> {
  factory _$PlanLimitsCopyWith(_PlanLimits value, $Res Function(_PlanLimits) _then) = __$PlanLimitsCopyWithImpl;
@override @useResult
$Res call({
 int maxProperties, int maxLeases
});




}
/// @nodoc
class __$PlanLimitsCopyWithImpl<$Res>
    implements _$PlanLimitsCopyWith<$Res> {
  __$PlanLimitsCopyWithImpl(this._self, this._then);

  final _PlanLimits _self;
  final $Res Function(_PlanLimits) _then;

/// Create a copy of PlanLimits
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxProperties = null,Object? maxLeases = null,}) {
  return _then(_PlanLimits(
maxProperties: null == maxProperties ? _self.maxProperties : maxProperties // ignore: cast_nullable_to_non_nullable
as int,maxLeases: null == maxLeases ? _self.maxLeases : maxLeases // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
