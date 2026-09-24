// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lease_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LeaseDetailEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaseDetailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'LeaseDetailEvent()';
}


}

/// @nodoc
class $LeaseDetailEventCopyWith<$Res>  {
$LeaseDetailEventCopyWith(LeaseDetailEvent _, $Res Function(LeaseDetailEvent) __);
}


/// Adds pattern-matching-related methods to [LeaseDetailEvent].
extension LeaseDetailEventPatterns on LeaseDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LeaseDetailStarted value)?  started,TResult Function( LeaseDetailRefreshed value)?  refreshed,TResult Function( LeaseDetailYearChanged value)?  yearChanged,TResult Function( LeaseDetailRentSaved value)?  rentSaved,TResult Function( LeaseDetailRentUnpaid value)?  rentUnpaid,TResult Function( LeaseDetailUtilitiesSaved value)?  utilitiesSaved,TResult Function( LeaseDetailUtilitiesPaid value)?  utilitiesPaid,TResult Function( LeaseDetailUtilitiesUnpaid value)?  utilitiesUnpaid,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LeaseDetailStarted() when started != null:
return started(_that);case LeaseDetailRefreshed() when refreshed != null:
return refreshed(_that);case LeaseDetailYearChanged() when yearChanged != null:
return yearChanged(_that);case LeaseDetailRentSaved() when rentSaved != null:
return rentSaved(_that);case LeaseDetailRentUnpaid() when rentUnpaid != null:
return rentUnpaid(_that);case LeaseDetailUtilitiesSaved() when utilitiesSaved != null:
return utilitiesSaved(_that);case LeaseDetailUtilitiesPaid() when utilitiesPaid != null:
return utilitiesPaid(_that);case LeaseDetailUtilitiesUnpaid() when utilitiesUnpaid != null:
return utilitiesUnpaid(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LeaseDetailStarted value)  started,required TResult Function( LeaseDetailRefreshed value)  refreshed,required TResult Function( LeaseDetailYearChanged value)  yearChanged,required TResult Function( LeaseDetailRentSaved value)  rentSaved,required TResult Function( LeaseDetailRentUnpaid value)  rentUnpaid,required TResult Function( LeaseDetailUtilitiesSaved value)  utilitiesSaved,required TResult Function( LeaseDetailUtilitiesPaid value)  utilitiesPaid,required TResult Function( LeaseDetailUtilitiesUnpaid value)  utilitiesUnpaid,}){
final _that = this;
switch (_that) {
case LeaseDetailStarted():
return started(_that);case LeaseDetailRefreshed():
return refreshed(_that);case LeaseDetailYearChanged():
return yearChanged(_that);case LeaseDetailRentSaved():
return rentSaved(_that);case LeaseDetailRentUnpaid():
return rentUnpaid(_that);case LeaseDetailUtilitiesSaved():
return utilitiesSaved(_that);case LeaseDetailUtilitiesPaid():
return utilitiesPaid(_that);case LeaseDetailUtilitiesUnpaid():
return utilitiesUnpaid(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LeaseDetailStarted value)?  started,TResult? Function( LeaseDetailRefreshed value)?  refreshed,TResult? Function( LeaseDetailYearChanged value)?  yearChanged,TResult? Function( LeaseDetailRentSaved value)?  rentSaved,TResult? Function( LeaseDetailRentUnpaid value)?  rentUnpaid,TResult? Function( LeaseDetailUtilitiesSaved value)?  utilitiesSaved,TResult? Function( LeaseDetailUtilitiesPaid value)?  utilitiesPaid,TResult? Function( LeaseDetailUtilitiesUnpaid value)?  utilitiesUnpaid,}){
final _that = this;
switch (_that) {
case LeaseDetailStarted() when started != null:
return started(_that);case LeaseDetailRefreshed() when refreshed != null:
return refreshed(_that);case LeaseDetailYearChanged() when yearChanged != null:
return yearChanged(_that);case LeaseDetailRentSaved() when rentSaved != null:
return rentSaved(_that);case LeaseDetailRentUnpaid() when rentUnpaid != null:
return rentUnpaid(_that);case LeaseDetailUtilitiesSaved() when utilitiesSaved != null:
return utilitiesSaved(_that);case LeaseDetailUtilitiesPaid() when utilitiesPaid != null:
return utilitiesPaid(_that);case LeaseDetailUtilitiesUnpaid() when utilitiesUnpaid != null:
return utilitiesUnpaid(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  refreshed,TResult Function( int year)?  yearChanged,TResult Function( String month,  int amountCents,  String? paidAt)?  rentSaved,TResult Function( String chargeId)?  rentUnpaid,TResult Function( String month,  List<UtilityEntry> entries,  bool publish)?  utilitiesSaved,TResult Function( String month,  String paidAt,  int paidCents)?  utilitiesPaid,TResult Function( String month)?  utilitiesUnpaid,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LeaseDetailStarted() when started != null:
return started();case LeaseDetailRefreshed() when refreshed != null:
return refreshed();case LeaseDetailYearChanged() when yearChanged != null:
return yearChanged(_that.year);case LeaseDetailRentSaved() when rentSaved != null:
return rentSaved(_that.month,_that.amountCents,_that.paidAt);case LeaseDetailRentUnpaid() when rentUnpaid != null:
return rentUnpaid(_that.chargeId);case LeaseDetailUtilitiesSaved() when utilitiesSaved != null:
return utilitiesSaved(_that.month,_that.entries,_that.publish);case LeaseDetailUtilitiesPaid() when utilitiesPaid != null:
return utilitiesPaid(_that.month,_that.paidAt,_that.paidCents);case LeaseDetailUtilitiesUnpaid() when utilitiesUnpaid != null:
return utilitiesUnpaid(_that.month);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  refreshed,required TResult Function( int year)  yearChanged,required TResult Function( String month,  int amountCents,  String? paidAt)  rentSaved,required TResult Function( String chargeId)  rentUnpaid,required TResult Function( String month,  List<UtilityEntry> entries,  bool publish)  utilitiesSaved,required TResult Function( String month,  String paidAt,  int paidCents)  utilitiesPaid,required TResult Function( String month)  utilitiesUnpaid,}) {final _that = this;
switch (_that) {
case LeaseDetailStarted():
return started();case LeaseDetailRefreshed():
return refreshed();case LeaseDetailYearChanged():
return yearChanged(_that.year);case LeaseDetailRentSaved():
return rentSaved(_that.month,_that.amountCents,_that.paidAt);case LeaseDetailRentUnpaid():
return rentUnpaid(_that.chargeId);case LeaseDetailUtilitiesSaved():
return utilitiesSaved(_that.month,_that.entries,_that.publish);case LeaseDetailUtilitiesPaid():
return utilitiesPaid(_that.month,_that.paidAt,_that.paidCents);case LeaseDetailUtilitiesUnpaid():
return utilitiesUnpaid(_that.month);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  refreshed,TResult? Function( int year)?  yearChanged,TResult? Function( String month,  int amountCents,  String? paidAt)?  rentSaved,TResult? Function( String chargeId)?  rentUnpaid,TResult? Function( String month,  List<UtilityEntry> entries,  bool publish)?  utilitiesSaved,TResult? Function( String month,  String paidAt,  int paidCents)?  utilitiesPaid,TResult? Function( String month)?  utilitiesUnpaid,}) {final _that = this;
switch (_that) {
case LeaseDetailStarted() when started != null:
return started();case LeaseDetailRefreshed() when refreshed != null:
return refreshed();case LeaseDetailYearChanged() when yearChanged != null:
return yearChanged(_that.year);case LeaseDetailRentSaved() when rentSaved != null:
return rentSaved(_that.month,_that.amountCents,_that.paidAt);case LeaseDetailRentUnpaid() when rentUnpaid != null:
return rentUnpaid(_that.chargeId);case LeaseDetailUtilitiesSaved() when utilitiesSaved != null:
return utilitiesSaved(_that.month,_that.entries,_that.publish);case LeaseDetailUtilitiesPaid() when utilitiesPaid != null:
return utilitiesPaid(_that.month,_that.paidAt,_that.paidCents);case LeaseDetailUtilitiesUnpaid() when utilitiesUnpaid != null:
return utilitiesUnpaid(_that.month);case _:
  return null;

}
}

}

/// @nodoc


class LeaseDetailStarted implements LeaseDetailEvent {
  const LeaseDetailStarted();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaseDetailStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'LeaseDetailEvent.started()';
}


}




/// @nodoc


class LeaseDetailRefreshed implements LeaseDetailEvent {
  const LeaseDetailRefreshed();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaseDetailRefreshed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'LeaseDetailEvent.refreshed()';
}


}




/// @nodoc


class LeaseDetailYearChanged implements LeaseDetailEvent {
  const LeaseDetailYearChanged(this.year);
  

 final  int year;

/// Create a copy of LeaseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaseDetailYearChangedCopyWith<LeaseDetailYearChanged> get copyWith => _$LeaseDetailYearChangedCopyWithImpl<LeaseDetailYearChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaseDetailYearChanged&&(identical(other.year, year) || other.year == year));
}


@override
int get hashCode {
    return Object.hash(runtimeType,year);
}

@override
String toString() {
    return 'LeaseDetailEvent.yearChanged(year: $year)';
}


}

/// @nodoc
abstract mixin class $LeaseDetailYearChangedCopyWith<$Res> implements $LeaseDetailEventCopyWith<$Res> {
  factory $LeaseDetailYearChangedCopyWith(LeaseDetailYearChanged value, $Res Function(LeaseDetailYearChanged) _then) = _$LeaseDetailYearChangedCopyWithImpl;
@useResult
$Res call({
 int year
});




}
/// @nodoc
class _$LeaseDetailYearChangedCopyWithImpl<$Res>
    implements $LeaseDetailYearChangedCopyWith<$Res> {
  _$LeaseDetailYearChangedCopyWithImpl(this._self, this._then);

  final LeaseDetailYearChanged _self;
  final $Res Function(LeaseDetailYearChanged) _then;

/// Create a copy of LeaseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? year = null,}) {
  return _then(LeaseDetailYearChanged(
null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class LeaseDetailRentSaved implements LeaseDetailEvent {
  const LeaseDetailRentSaved({required this.month, required this.amountCents, this.paidAt});
  

 final  String month;
 final  int amountCents;
 final  String? paidAt;

/// Create a copy of LeaseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaseDetailRentSavedCopyWith<LeaseDetailRentSaved> get copyWith => _$LeaseDetailRentSavedCopyWithImpl<LeaseDetailRentSaved>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaseDetailRentSaved&&(identical(other.month, month) || other.month == month)&&(identical(other.amountCents, amountCents) || other.amountCents == amountCents)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,month,amountCents,paidAt);
}

@override
String toString() {
    return 'LeaseDetailEvent.rentSaved(month: $month, amountCents: $amountCents, paidAt: $paidAt)';
}


}

/// @nodoc
abstract mixin class $LeaseDetailRentSavedCopyWith<$Res> implements $LeaseDetailEventCopyWith<$Res> {
  factory $LeaseDetailRentSavedCopyWith(LeaseDetailRentSaved value, $Res Function(LeaseDetailRentSaved) _then) = _$LeaseDetailRentSavedCopyWithImpl;
@useResult
$Res call({
 String month, int amountCents, String? paidAt
});




}
/// @nodoc
class _$LeaseDetailRentSavedCopyWithImpl<$Res>
    implements $LeaseDetailRentSavedCopyWith<$Res> {
  _$LeaseDetailRentSavedCopyWithImpl(this._self, this._then);

  final LeaseDetailRentSaved _self;
  final $Res Function(LeaseDetailRentSaved) _then;

/// Create a copy of LeaseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? month = null,Object? amountCents = null,Object? paidAt = freezed,}) {
  return _then(LeaseDetailRentSaved(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,amountCents: null == amountCents ? _self.amountCents : amountCents // ignore: cast_nullable_to_non_nullable
as int,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class LeaseDetailRentUnpaid implements LeaseDetailEvent {
  const LeaseDetailRentUnpaid({required this.chargeId});
  

 final  String chargeId;

/// Create a copy of LeaseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaseDetailRentUnpaidCopyWith<LeaseDetailRentUnpaid> get copyWith => _$LeaseDetailRentUnpaidCopyWithImpl<LeaseDetailRentUnpaid>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaseDetailRentUnpaid&&(identical(other.chargeId, chargeId) || other.chargeId == chargeId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,chargeId);
}

@override
String toString() {
    return 'LeaseDetailEvent.rentUnpaid(chargeId: $chargeId)';
}


}

/// @nodoc
abstract mixin class $LeaseDetailRentUnpaidCopyWith<$Res> implements $LeaseDetailEventCopyWith<$Res> {
  factory $LeaseDetailRentUnpaidCopyWith(LeaseDetailRentUnpaid value, $Res Function(LeaseDetailRentUnpaid) _then) = _$LeaseDetailRentUnpaidCopyWithImpl;
@useResult
$Res call({
 String chargeId
});




}
/// @nodoc
class _$LeaseDetailRentUnpaidCopyWithImpl<$Res>
    implements $LeaseDetailRentUnpaidCopyWith<$Res> {
  _$LeaseDetailRentUnpaidCopyWithImpl(this._self, this._then);

  final LeaseDetailRentUnpaid _self;
  final $Res Function(LeaseDetailRentUnpaid) _then;

/// Create a copy of LeaseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chargeId = null,}) {
  return _then(LeaseDetailRentUnpaid(
chargeId: null == chargeId ? _self.chargeId : chargeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LeaseDetailUtilitiesSaved implements LeaseDetailEvent {
  const LeaseDetailUtilitiesSaved({required this.month, required  List<UtilityEntry> entries, this.publish = false}): _entries = entries;
  

 final  String month;
 final  List<UtilityEntry> _entries;
 List<UtilityEntry> get entries {
  if (_entries is EqualUnmodifiableListView) return _entries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entries);
}

@JsonKey() final  bool publish;

/// Create a copy of LeaseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaseDetailUtilitiesSavedCopyWith<LeaseDetailUtilitiesSaved> get copyWith => _$LeaseDetailUtilitiesSavedCopyWithImpl<LeaseDetailUtilitiesSaved>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaseDetailUtilitiesSaved&&(identical(other.month, month) || other.month == month)&&const DeepCollectionEquality().equals(other.entries, _entries)&&(identical(other.publish, publish) || other.publish == publish));
}


@override
int get hashCode {
    return Object.hash(runtimeType,month,const DeepCollectionEquality().hash(_entries),publish);
}

@override
String toString() {
    return 'LeaseDetailEvent.utilitiesSaved(month: $month, entries: $entries, publish: $publish)';
}


}

/// @nodoc
abstract mixin class $LeaseDetailUtilitiesSavedCopyWith<$Res> implements $LeaseDetailEventCopyWith<$Res> {
  factory $LeaseDetailUtilitiesSavedCopyWith(LeaseDetailUtilitiesSaved value, $Res Function(LeaseDetailUtilitiesSaved) _then) = _$LeaseDetailUtilitiesSavedCopyWithImpl;
@useResult
$Res call({
 String month, List<UtilityEntry> entries, bool publish
});




}
/// @nodoc
class _$LeaseDetailUtilitiesSavedCopyWithImpl<$Res>
    implements $LeaseDetailUtilitiesSavedCopyWith<$Res> {
  _$LeaseDetailUtilitiesSavedCopyWithImpl(this._self, this._then);

  final LeaseDetailUtilitiesSaved _self;
  final $Res Function(LeaseDetailUtilitiesSaved) _then;

/// Create a copy of LeaseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? month = null,Object? entries = null,Object? publish = null,}) {
  return _then(LeaseDetailUtilitiesSaved(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,entries: null == entries ? _self._entries : entries // ignore: cast_nullable_to_non_nullable
as List<UtilityEntry>,publish: null == publish ? _self.publish : publish // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class LeaseDetailUtilitiesPaid implements LeaseDetailEvent {
  const LeaseDetailUtilitiesPaid({required this.month, required this.paidAt, required this.paidCents});
  

 final  String month;
 final  String paidAt;
 final  int paidCents;

/// Create a copy of LeaseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaseDetailUtilitiesPaidCopyWith<LeaseDetailUtilitiesPaid> get copyWith => _$LeaseDetailUtilitiesPaidCopyWithImpl<LeaseDetailUtilitiesPaid>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaseDetailUtilitiesPaid&&(identical(other.month, month) || other.month == month)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.paidCents, paidCents) || other.paidCents == paidCents));
}


@override
int get hashCode {
    return Object.hash(runtimeType,month,paidAt,paidCents);
}

@override
String toString() {
    return 'LeaseDetailEvent.utilitiesPaid(month: $month, paidAt: $paidAt, paidCents: $paidCents)';
}


}

/// @nodoc
abstract mixin class $LeaseDetailUtilitiesPaidCopyWith<$Res> implements $LeaseDetailEventCopyWith<$Res> {
  factory $LeaseDetailUtilitiesPaidCopyWith(LeaseDetailUtilitiesPaid value, $Res Function(LeaseDetailUtilitiesPaid) _then) = _$LeaseDetailUtilitiesPaidCopyWithImpl;
@useResult
$Res call({
 String month, String paidAt, int paidCents
});




}
/// @nodoc
class _$LeaseDetailUtilitiesPaidCopyWithImpl<$Res>
    implements $LeaseDetailUtilitiesPaidCopyWith<$Res> {
  _$LeaseDetailUtilitiesPaidCopyWithImpl(this._self, this._then);

  final LeaseDetailUtilitiesPaid _self;
  final $Res Function(LeaseDetailUtilitiesPaid) _then;

/// Create a copy of LeaseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? month = null,Object? paidAt = null,Object? paidCents = null,}) {
  return _then(LeaseDetailUtilitiesPaid(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,paidAt: null == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as String,paidCents: null == paidCents ? _self.paidCents : paidCents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class LeaseDetailUtilitiesUnpaid implements LeaseDetailEvent {
  const LeaseDetailUtilitiesUnpaid({required this.month});
  

 final  String month;

/// Create a copy of LeaseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaseDetailUtilitiesUnpaidCopyWith<LeaseDetailUtilitiesUnpaid> get copyWith => _$LeaseDetailUtilitiesUnpaidCopyWithImpl<LeaseDetailUtilitiesUnpaid>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaseDetailUtilitiesUnpaid&&(identical(other.month, month) || other.month == month));
}


@override
int get hashCode {
    return Object.hash(runtimeType,month);
}

@override
String toString() {
    return 'LeaseDetailEvent.utilitiesUnpaid(month: $month)';
}


}

/// @nodoc
abstract mixin class $LeaseDetailUtilitiesUnpaidCopyWith<$Res> implements $LeaseDetailEventCopyWith<$Res> {
  factory $LeaseDetailUtilitiesUnpaidCopyWith(LeaseDetailUtilitiesUnpaid value, $Res Function(LeaseDetailUtilitiesUnpaid) _then) = _$LeaseDetailUtilitiesUnpaidCopyWithImpl;
@useResult
$Res call({
 String month
});




}
/// @nodoc
class _$LeaseDetailUtilitiesUnpaidCopyWithImpl<$Res>
    implements $LeaseDetailUtilitiesUnpaidCopyWith<$Res> {
  _$LeaseDetailUtilitiesUnpaidCopyWithImpl(this._self, this._then);

  final LeaseDetailUtilitiesUnpaid _self;
  final $Res Function(LeaseDetailUtilitiesUnpaid) _then;

/// Create a copy of LeaseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? month = null,}) {
  return _then(LeaseDetailUtilitiesUnpaid(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$LeaseDetailState {

 int get year; LoadState<LeaseYear> get data;/// The month an action is running for; its buttons disable meanwhile.
 String? get busyMonth; LeaseDetailNotice? get notice; Object? get error;/// Bumped with every notice/error so the same one twice still shows.
 int get signal;
/// Create a copy of LeaseDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaseDetailStateCopyWith<LeaseDetailState> get copyWith => _$LeaseDetailStateCopyWithImpl<LeaseDetailState>(this as LeaseDetailState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as LeaseDetailState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaseDetailState&&(identical(other.year, _this.year) || other.year == _this.year)&&(identical(other.data, _this.data) || other.data == _this.data)&&(identical(other.busyMonth, _this.busyMonth) || other.busyMonth == _this.busyMonth)&&(identical(other.notice, _this.notice) || other.notice == _this.notice)&&const DeepCollectionEquality().equals(other.error, _this.error)&&(identical(other.signal, _this.signal) || other.signal == _this.signal));
}


@override
int get hashCode {
  final _this = this as LeaseDetailState;
  return Object.hash(runtimeType,_this.year,_this.data,_this.busyMonth,_this.notice,const DeepCollectionEquality().hash(_this.error),_this.signal);
}

@override
String toString() {
  final _this = this as LeaseDetailState;
  return 'LeaseDetailState(year: ${_this.year}, data: ${_this.data}, busyMonth: ${_this.busyMonth}, notice: ${_this.notice}, error: ${_this.error}, signal: ${_this.signal})';
}


}

/// @nodoc
abstract mixin class $LeaseDetailStateCopyWith<$Res>  {
  factory $LeaseDetailStateCopyWith(LeaseDetailState value, $Res Function(LeaseDetailState) _then) = _$LeaseDetailStateCopyWithImpl;
@useResult
$Res call({
 int year, LoadState<LeaseYear> data, String? busyMonth, LeaseDetailNotice? notice, Object? error, int signal
});


$LoadStateCopyWith<LeaseYear, $Res> get data;

}
/// @nodoc
class _$LeaseDetailStateCopyWithImpl<$Res>
    implements $LeaseDetailStateCopyWith<$Res> {
  _$LeaseDetailStateCopyWithImpl(this._self, this._then);

  final LeaseDetailState _self;
  final $Res Function(LeaseDetailState) _then;

/// Create a copy of LeaseDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? year = null,Object? data = null,Object? busyMonth = freezed,Object? notice = freezed,Object? error = freezed,Object? signal = null,}) {
  return _then(LeaseDetailState(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LoadState<LeaseYear>,busyMonth: freezed == busyMonth ? _self.busyMonth : busyMonth // ignore: cast_nullable_to_non_nullable
as String?,notice: freezed == notice ? _self.notice : notice // ignore: cast_nullable_to_non_nullable
as LeaseDetailNotice?,error: freezed == error ? _self.error : error ,signal: null == signal ? _self.signal : signal // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of LeaseDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoadStateCopyWith<LeaseYear, $Res> get data {
  
  return $LoadStateCopyWith<LeaseYear, $Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [LeaseDetailState].
extension LeaseDetailStatePatterns on LeaseDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaseDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaseDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaseDetailState value)  $default,){
final _that = this;
switch (_that) {
case _LeaseDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaseDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _LeaseDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int year,  LoadState<LeaseYear> data,  String? busyMonth,  LeaseDetailNotice? notice,  Object? error,  int signal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaseDetailState() when $default != null:
return $default(_that.year,_that.data,_that.busyMonth,_that.notice,_that.error,_that.signal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int year,  LoadState<LeaseYear> data,  String? busyMonth,  LeaseDetailNotice? notice,  Object? error,  int signal)  $default,) {final _that = this;
switch (_that) {
case _LeaseDetailState():
return $default(_that.year,_that.data,_that.busyMonth,_that.notice,_that.error,_that.signal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int year,  LoadState<LeaseYear> data,  String? busyMonth,  LeaseDetailNotice? notice,  Object? error,  int signal)?  $default,) {final _that = this;
switch (_that) {
case _LeaseDetailState() when $default != null:
return $default(_that.year,_that.data,_that.busyMonth,_that.notice,_that.error,_that.signal);case _:
  return null;

}
}

}

/// @nodoc


class _LeaseDetailState implements LeaseDetailState {
  const _LeaseDetailState({required this.year, this.data = const LoadState<LeaseYear>.loading(), this.busyMonth, this.notice, this.error, this.signal = 0});
  

@override final  int year;
@override@JsonKey() final  LoadState<LeaseYear> data;
/// The month an action is running for; its buttons disable meanwhile.
@override final  String? busyMonth;
@override final  LeaseDetailNotice? notice;
@override final  Object? error;
/// Bumped with every notice/error so the same one twice still shows.
@override@JsonKey() final  int signal;

/// Create a copy of LeaseDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaseDetailStateCopyWith<_LeaseDetailState> get copyWith => __$LeaseDetailStateCopyWithImpl<_LeaseDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaseDetailState&&(identical(other.year, year) || other.year == year)&&(identical(other.data, data) || other.data == data)&&(identical(other.busyMonth, busyMonth) || other.busyMonth == busyMonth)&&(identical(other.notice, notice) || other.notice == notice)&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.signal, signal) || other.signal == signal));
}


@override
int get hashCode {
    return Object.hash(runtimeType,year,data,busyMonth,notice,const DeepCollectionEquality().hash(error),signal);
}

@override
String toString() {
    return 'LeaseDetailState(year: $year, data: $data, busyMonth: $busyMonth, notice: $notice, error: $error, signal: $signal)';
}


}

/// @nodoc
abstract mixin class _$LeaseDetailStateCopyWith<$Res> implements $LeaseDetailStateCopyWith<$Res> {
  factory _$LeaseDetailStateCopyWith(_LeaseDetailState value, $Res Function(_LeaseDetailState) _then) = __$LeaseDetailStateCopyWithImpl;
@override @useResult
$Res call({
 int year, LoadState<LeaseYear> data, String? busyMonth, LeaseDetailNotice? notice, Object? error, int signal
});


@override $LoadStateCopyWith<LeaseYear, $Res> get data;

}
/// @nodoc
class __$LeaseDetailStateCopyWithImpl<$Res>
    implements _$LeaseDetailStateCopyWith<$Res> {
  __$LeaseDetailStateCopyWithImpl(this._self, this._then);

  final _LeaseDetailState _self;
  final $Res Function(_LeaseDetailState) _then;

/// Create a copy of LeaseDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? year = null,Object? data = null,Object? busyMonth = freezed,Object? notice = freezed,Object? error = freezed,Object? signal = null,}) {
  return _then(_LeaseDetailState(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LoadState<LeaseYear>,busyMonth: freezed == busyMonth ? _self.busyMonth : busyMonth // ignore: cast_nullable_to_non_nullable
as String?,notice: freezed == notice ? _self.notice : notice // ignore: cast_nullable_to_non_nullable
as LeaseDetailNotice?,error: freezed == error ? _self.error : error ,signal: null == signal ? _self.signal : signal // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of LeaseDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoadStateCopyWith<LeaseYear, $Res> get data {
  
  return $LoadStateCopyWith<LeaseYear, $Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
