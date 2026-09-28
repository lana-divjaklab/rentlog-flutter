// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settlement_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettlementEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SettlementEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SettlementEvent()';
}


}

/// @nodoc
class $SettlementEventCopyWith<$Res>  {
$SettlementEventCopyWith(SettlementEvent _, $Res Function(SettlementEvent) __);
}


/// Adds pattern-matching-related methods to [SettlementEvent].
extension SettlementEventPatterns on SettlementEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SettlementStarted value)?  started,TResult Function( SettlementRefreshed value)?  refreshed,TResult Function( SettlementPropertySelected value)?  propertySelected,TResult Function( SettlementMonthChanged value)?  monthChanged,TResult Function( SettlementStepSelected value)?  stepSelected,TResult Function( SettlementReadingCommitted value)?  readingCommitted,TResult Function( SettlementBillCommitted value)?  billCommitted,TResult Function( SettlementTotalUsageCommitted value)?  totalUsageCommitted,TResult Function( SettlementTenantUsageChanged value)?  tenantUsageChanged,TResult Function( SettlementManualAmountCommitted value)?  manualAmountCommitted,TResult Function( SettlementPublishRequested value)?  publishRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SettlementStarted() when started != null:
return started(_that);case SettlementRefreshed() when refreshed != null:
return refreshed(_that);case SettlementPropertySelected() when propertySelected != null:
return propertySelected(_that);case SettlementMonthChanged() when monthChanged != null:
return monthChanged(_that);case SettlementStepSelected() when stepSelected != null:
return stepSelected(_that);case SettlementReadingCommitted() when readingCommitted != null:
return readingCommitted(_that);case SettlementBillCommitted() when billCommitted != null:
return billCommitted(_that);case SettlementTotalUsageCommitted() when totalUsageCommitted != null:
return totalUsageCommitted(_that);case SettlementTenantUsageChanged() when tenantUsageChanged != null:
return tenantUsageChanged(_that);case SettlementManualAmountCommitted() when manualAmountCommitted != null:
return manualAmountCommitted(_that);case SettlementPublishRequested() when publishRequested != null:
return publishRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SettlementStarted value)  started,required TResult Function( SettlementRefreshed value)  refreshed,required TResult Function( SettlementPropertySelected value)  propertySelected,required TResult Function( SettlementMonthChanged value)  monthChanged,required TResult Function( SettlementStepSelected value)  stepSelected,required TResult Function( SettlementReadingCommitted value)  readingCommitted,required TResult Function( SettlementBillCommitted value)  billCommitted,required TResult Function( SettlementTotalUsageCommitted value)  totalUsageCommitted,required TResult Function( SettlementTenantUsageChanged value)  tenantUsageChanged,required TResult Function( SettlementManualAmountCommitted value)  manualAmountCommitted,required TResult Function( SettlementPublishRequested value)  publishRequested,}){
final _that = this;
switch (_that) {
case SettlementStarted():
return started(_that);case SettlementRefreshed():
return refreshed(_that);case SettlementPropertySelected():
return propertySelected(_that);case SettlementMonthChanged():
return monthChanged(_that);case SettlementStepSelected():
return stepSelected(_that);case SettlementReadingCommitted():
return readingCommitted(_that);case SettlementBillCommitted():
return billCommitted(_that);case SettlementTotalUsageCommitted():
return totalUsageCommitted(_that);case SettlementTenantUsageChanged():
return tenantUsageChanged(_that);case SettlementManualAmountCommitted():
return manualAmountCommitted(_that);case SettlementPublishRequested():
return publishRequested(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SettlementStarted value)?  started,TResult? Function( SettlementRefreshed value)?  refreshed,TResult? Function( SettlementPropertySelected value)?  propertySelected,TResult? Function( SettlementMonthChanged value)?  monthChanged,TResult? Function( SettlementStepSelected value)?  stepSelected,TResult? Function( SettlementReadingCommitted value)?  readingCommitted,TResult? Function( SettlementBillCommitted value)?  billCommitted,TResult? Function( SettlementTotalUsageCommitted value)?  totalUsageCommitted,TResult? Function( SettlementTenantUsageChanged value)?  tenantUsageChanged,TResult? Function( SettlementManualAmountCommitted value)?  manualAmountCommitted,TResult? Function( SettlementPublishRequested value)?  publishRequested,}){
final _that = this;
switch (_that) {
case SettlementStarted() when started != null:
return started(_that);case SettlementRefreshed() when refreshed != null:
return refreshed(_that);case SettlementPropertySelected() when propertySelected != null:
return propertySelected(_that);case SettlementMonthChanged() when monthChanged != null:
return monthChanged(_that);case SettlementStepSelected() when stepSelected != null:
return stepSelected(_that);case SettlementReadingCommitted() when readingCommitted != null:
return readingCommitted(_that);case SettlementBillCommitted() when billCommitted != null:
return billCommitted(_that);case SettlementTotalUsageCommitted() when totalUsageCommitted != null:
return totalUsageCommitted(_that);case SettlementTenantUsageChanged() when tenantUsageChanged != null:
return tenantUsageChanged(_that);case SettlementManualAmountCommitted() when manualAmountCommitted != null:
return manualAmountCommitted(_that);case SettlementPublishRequested() when publishRequested != null:
return publishRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  refreshed,TResult Function( String propertyId)?  propertySelected,TResult Function( String month)?  monthChanged,TResult Function( SettlementStep step)?  stepSelected,TResult Function( String categoryId,  String? leaseId,  double reading)?  readingCommitted,TResult Function( String categoryId,  int totalCents)?  billCommitted,TResult Function( String categoryId,  double totalUsage)?  totalUsageCommitted,TResult Function( String leaseId,  String categoryId,  double? usage)?  tenantUsageChanged,TResult Function( String leaseId,  String categoryId,  int amountCents)?  manualAmountCommitted,TResult Function()?  publishRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SettlementStarted() when started != null:
return started();case SettlementRefreshed() when refreshed != null:
return refreshed();case SettlementPropertySelected() when propertySelected != null:
return propertySelected(_that.propertyId);case SettlementMonthChanged() when monthChanged != null:
return monthChanged(_that.month);case SettlementStepSelected() when stepSelected != null:
return stepSelected(_that.step);case SettlementReadingCommitted() when readingCommitted != null:
return readingCommitted(_that.categoryId,_that.leaseId,_that.reading);case SettlementBillCommitted() when billCommitted != null:
return billCommitted(_that.categoryId,_that.totalCents);case SettlementTotalUsageCommitted() when totalUsageCommitted != null:
return totalUsageCommitted(_that.categoryId,_that.totalUsage);case SettlementTenantUsageChanged() when tenantUsageChanged != null:
return tenantUsageChanged(_that.leaseId,_that.categoryId,_that.usage);case SettlementManualAmountCommitted() when manualAmountCommitted != null:
return manualAmountCommitted(_that.leaseId,_that.categoryId,_that.amountCents);case SettlementPublishRequested() when publishRequested != null:
return publishRequested();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  refreshed,required TResult Function( String propertyId)  propertySelected,required TResult Function( String month)  monthChanged,required TResult Function( SettlementStep step)  stepSelected,required TResult Function( String categoryId,  String? leaseId,  double reading)  readingCommitted,required TResult Function( String categoryId,  int totalCents)  billCommitted,required TResult Function( String categoryId,  double totalUsage)  totalUsageCommitted,required TResult Function( String leaseId,  String categoryId,  double? usage)  tenantUsageChanged,required TResult Function( String leaseId,  String categoryId,  int amountCents)  manualAmountCommitted,required TResult Function()  publishRequested,}) {final _that = this;
switch (_that) {
case SettlementStarted():
return started();case SettlementRefreshed():
return refreshed();case SettlementPropertySelected():
return propertySelected(_that.propertyId);case SettlementMonthChanged():
return monthChanged(_that.month);case SettlementStepSelected():
return stepSelected(_that.step);case SettlementReadingCommitted():
return readingCommitted(_that.categoryId,_that.leaseId,_that.reading);case SettlementBillCommitted():
return billCommitted(_that.categoryId,_that.totalCents);case SettlementTotalUsageCommitted():
return totalUsageCommitted(_that.categoryId,_that.totalUsage);case SettlementTenantUsageChanged():
return tenantUsageChanged(_that.leaseId,_that.categoryId,_that.usage);case SettlementManualAmountCommitted():
return manualAmountCommitted(_that.leaseId,_that.categoryId,_that.amountCents);case SettlementPublishRequested():
return publishRequested();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  refreshed,TResult? Function( String propertyId)?  propertySelected,TResult? Function( String month)?  monthChanged,TResult? Function( SettlementStep step)?  stepSelected,TResult? Function( String categoryId,  String? leaseId,  double reading)?  readingCommitted,TResult? Function( String categoryId,  int totalCents)?  billCommitted,TResult? Function( String categoryId,  double totalUsage)?  totalUsageCommitted,TResult? Function( String leaseId,  String categoryId,  double? usage)?  tenantUsageChanged,TResult? Function( String leaseId,  String categoryId,  int amountCents)?  manualAmountCommitted,TResult? Function()?  publishRequested,}) {final _that = this;
switch (_that) {
case SettlementStarted() when started != null:
return started();case SettlementRefreshed() when refreshed != null:
return refreshed();case SettlementPropertySelected() when propertySelected != null:
return propertySelected(_that.propertyId);case SettlementMonthChanged() when monthChanged != null:
return monthChanged(_that.month);case SettlementStepSelected() when stepSelected != null:
return stepSelected(_that.step);case SettlementReadingCommitted() when readingCommitted != null:
return readingCommitted(_that.categoryId,_that.leaseId,_that.reading);case SettlementBillCommitted() when billCommitted != null:
return billCommitted(_that.categoryId,_that.totalCents);case SettlementTotalUsageCommitted() when totalUsageCommitted != null:
return totalUsageCommitted(_that.categoryId,_that.totalUsage);case SettlementTenantUsageChanged() when tenantUsageChanged != null:
return tenantUsageChanged(_that.leaseId,_that.categoryId,_that.usage);case SettlementManualAmountCommitted() when manualAmountCommitted != null:
return manualAmountCommitted(_that.leaseId,_that.categoryId,_that.amountCents);case SettlementPublishRequested() when publishRequested != null:
return publishRequested();case _:
  return null;

}
}

}

/// @nodoc


class SettlementStarted implements SettlementEvent {
  const SettlementStarted();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SettlementStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SettlementEvent.started()';
}


}




/// @nodoc


class SettlementRefreshed implements SettlementEvent {
  const SettlementRefreshed();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SettlementRefreshed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SettlementEvent.refreshed()';
}


}




/// @nodoc


class SettlementPropertySelected implements SettlementEvent {
  const SettlementPropertySelected(this.propertyId);
  

 final  String propertyId;

/// Create a copy of SettlementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettlementPropertySelectedCopyWith<SettlementPropertySelected> get copyWith => _$SettlementPropertySelectedCopyWithImpl<SettlementPropertySelected>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SettlementPropertySelected&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,propertyId);
}

@override
String toString() {
    return 'SettlementEvent.propertySelected(propertyId: $propertyId)';
}


}

/// @nodoc
abstract mixin class $SettlementPropertySelectedCopyWith<$Res> implements $SettlementEventCopyWith<$Res> {
  factory $SettlementPropertySelectedCopyWith(SettlementPropertySelected value, $Res Function(SettlementPropertySelected) _then) = _$SettlementPropertySelectedCopyWithImpl;
@useResult
$Res call({
 String propertyId
});




}
/// @nodoc
class _$SettlementPropertySelectedCopyWithImpl<$Res>
    implements $SettlementPropertySelectedCopyWith<$Res> {
  _$SettlementPropertySelectedCopyWithImpl(this._self, this._then);

  final SettlementPropertySelected _self;
  final $Res Function(SettlementPropertySelected) _then;

/// Create a copy of SettlementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? propertyId = null,}) {
  return _then(SettlementPropertySelected(
null == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SettlementMonthChanged implements SettlementEvent {
  const SettlementMonthChanged(this.month);
  

 final  String month;

/// Create a copy of SettlementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettlementMonthChangedCopyWith<SettlementMonthChanged> get copyWith => _$SettlementMonthChangedCopyWithImpl<SettlementMonthChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SettlementMonthChanged&&(identical(other.month, month) || other.month == month));
}


@override
int get hashCode {
    return Object.hash(runtimeType,month);
}

@override
String toString() {
    return 'SettlementEvent.monthChanged(month: $month)';
}


}

/// @nodoc
abstract mixin class $SettlementMonthChangedCopyWith<$Res> implements $SettlementEventCopyWith<$Res> {
  factory $SettlementMonthChangedCopyWith(SettlementMonthChanged value, $Res Function(SettlementMonthChanged) _then) = _$SettlementMonthChangedCopyWithImpl;
@useResult
$Res call({
 String month
});




}
/// @nodoc
class _$SettlementMonthChangedCopyWithImpl<$Res>
    implements $SettlementMonthChangedCopyWith<$Res> {
  _$SettlementMonthChangedCopyWithImpl(this._self, this._then);

  final SettlementMonthChanged _self;
  final $Res Function(SettlementMonthChanged) _then;

/// Create a copy of SettlementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? month = null,}) {
  return _then(SettlementMonthChanged(
null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SettlementStepSelected implements SettlementEvent {
  const SettlementStepSelected(this.step);
  

 final  SettlementStep step;

/// Create a copy of SettlementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettlementStepSelectedCopyWith<SettlementStepSelected> get copyWith => _$SettlementStepSelectedCopyWithImpl<SettlementStepSelected>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SettlementStepSelected&&(identical(other.step, step) || other.step == step));
}


@override
int get hashCode {
    return Object.hash(runtimeType,step);
}

@override
String toString() {
    return 'SettlementEvent.stepSelected(step: $step)';
}


}

/// @nodoc
abstract mixin class $SettlementStepSelectedCopyWith<$Res> implements $SettlementEventCopyWith<$Res> {
  factory $SettlementStepSelectedCopyWith(SettlementStepSelected value, $Res Function(SettlementStepSelected) _then) = _$SettlementStepSelectedCopyWithImpl;
@useResult
$Res call({
 SettlementStep step
});




}
/// @nodoc
class _$SettlementStepSelectedCopyWithImpl<$Res>
    implements $SettlementStepSelectedCopyWith<$Res> {
  _$SettlementStepSelectedCopyWithImpl(this._self, this._then);

  final SettlementStepSelected _self;
  final $Res Function(SettlementStepSelected) _then;

/// Create a copy of SettlementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? step = null,}) {
  return _then(SettlementStepSelected(
null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as SettlementStep,
  ));
}


}

/// @nodoc


class SettlementReadingCommitted implements SettlementEvent {
  const SettlementReadingCommitted({required this.categoryId, this.leaseId, required this.reading});
  

 final  String categoryId;
 final  String? leaseId;
 final  double reading;

/// Create a copy of SettlementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettlementReadingCommittedCopyWith<SettlementReadingCommitted> get copyWith => _$SettlementReadingCommittedCopyWithImpl<SettlementReadingCommitted>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SettlementReadingCommitted&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.leaseId, leaseId) || other.leaseId == leaseId)&&(identical(other.reading, reading) || other.reading == reading));
}


@override
int get hashCode {
    return Object.hash(runtimeType,categoryId,leaseId,reading);
}

@override
String toString() {
    return 'SettlementEvent.readingCommitted(categoryId: $categoryId, leaseId: $leaseId, reading: $reading)';
}


}

/// @nodoc
abstract mixin class $SettlementReadingCommittedCopyWith<$Res> implements $SettlementEventCopyWith<$Res> {
  factory $SettlementReadingCommittedCopyWith(SettlementReadingCommitted value, $Res Function(SettlementReadingCommitted) _then) = _$SettlementReadingCommittedCopyWithImpl;
@useResult
$Res call({
 String categoryId, String? leaseId, double reading
});




}
/// @nodoc
class _$SettlementReadingCommittedCopyWithImpl<$Res>
    implements $SettlementReadingCommittedCopyWith<$Res> {
  _$SettlementReadingCommittedCopyWithImpl(this._self, this._then);

  final SettlementReadingCommitted _self;
  final $Res Function(SettlementReadingCommitted) _then;

/// Create a copy of SettlementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,Object? leaseId = freezed,Object? reading = null,}) {
  return _then(SettlementReadingCommitted(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,leaseId: freezed == leaseId ? _self.leaseId : leaseId // ignore: cast_nullable_to_non_nullable
as String?,reading: null == reading ? _self.reading : reading // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class SettlementBillCommitted implements SettlementEvent {
  const SettlementBillCommitted({required this.categoryId, required this.totalCents});
  

 final  String categoryId;
 final  int totalCents;

/// Create a copy of SettlementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettlementBillCommittedCopyWith<SettlementBillCommitted> get copyWith => _$SettlementBillCommittedCopyWithImpl<SettlementBillCommitted>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SettlementBillCommitted&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.totalCents, totalCents) || other.totalCents == totalCents));
}


@override
int get hashCode {
    return Object.hash(runtimeType,categoryId,totalCents);
}

@override
String toString() {
    return 'SettlementEvent.billCommitted(categoryId: $categoryId, totalCents: $totalCents)';
}


}

/// @nodoc
abstract mixin class $SettlementBillCommittedCopyWith<$Res> implements $SettlementEventCopyWith<$Res> {
  factory $SettlementBillCommittedCopyWith(SettlementBillCommitted value, $Res Function(SettlementBillCommitted) _then) = _$SettlementBillCommittedCopyWithImpl;
@useResult
$Res call({
 String categoryId, int totalCents
});




}
/// @nodoc
class _$SettlementBillCommittedCopyWithImpl<$Res>
    implements $SettlementBillCommittedCopyWith<$Res> {
  _$SettlementBillCommittedCopyWithImpl(this._self, this._then);

  final SettlementBillCommitted _self;
  final $Res Function(SettlementBillCommitted) _then;

/// Create a copy of SettlementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,Object? totalCents = null,}) {
  return _then(SettlementBillCommitted(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,totalCents: null == totalCents ? _self.totalCents : totalCents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SettlementTotalUsageCommitted implements SettlementEvent {
  const SettlementTotalUsageCommitted({required this.categoryId, required this.totalUsage});
  

 final  String categoryId;
 final  double totalUsage;

/// Create a copy of SettlementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettlementTotalUsageCommittedCopyWith<SettlementTotalUsageCommitted> get copyWith => _$SettlementTotalUsageCommittedCopyWithImpl<SettlementTotalUsageCommitted>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SettlementTotalUsageCommitted&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.totalUsage, totalUsage) || other.totalUsage == totalUsage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,categoryId,totalUsage);
}

@override
String toString() {
    return 'SettlementEvent.totalUsageCommitted(categoryId: $categoryId, totalUsage: $totalUsage)';
}


}

/// @nodoc
abstract mixin class $SettlementTotalUsageCommittedCopyWith<$Res> implements $SettlementEventCopyWith<$Res> {
  factory $SettlementTotalUsageCommittedCopyWith(SettlementTotalUsageCommitted value, $Res Function(SettlementTotalUsageCommitted) _then) = _$SettlementTotalUsageCommittedCopyWithImpl;
@useResult
$Res call({
 String categoryId, double totalUsage
});




}
/// @nodoc
class _$SettlementTotalUsageCommittedCopyWithImpl<$Res>
    implements $SettlementTotalUsageCommittedCopyWith<$Res> {
  _$SettlementTotalUsageCommittedCopyWithImpl(this._self, this._then);

  final SettlementTotalUsageCommitted _self;
  final $Res Function(SettlementTotalUsageCommitted) _then;

/// Create a copy of SettlementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,Object? totalUsage = null,}) {
  return _then(SettlementTotalUsageCommitted(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,totalUsage: null == totalUsage ? _self.totalUsage : totalUsage // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class SettlementTenantUsageChanged implements SettlementEvent {
  const SettlementTenantUsageChanged({required this.leaseId, required this.categoryId, required this.usage});
  

 final  String leaseId;
 final  String categoryId;
 final  double? usage;

/// Create a copy of SettlementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettlementTenantUsageChangedCopyWith<SettlementTenantUsageChanged> get copyWith => _$SettlementTenantUsageChangedCopyWithImpl<SettlementTenantUsageChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SettlementTenantUsageChanged&&(identical(other.leaseId, leaseId) || other.leaseId == leaseId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.usage, usage) || other.usage == usage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,leaseId,categoryId,usage);
}

@override
String toString() {
    return 'SettlementEvent.tenantUsageChanged(leaseId: $leaseId, categoryId: $categoryId, usage: $usage)';
}


}

/// @nodoc
abstract mixin class $SettlementTenantUsageChangedCopyWith<$Res> implements $SettlementEventCopyWith<$Res> {
  factory $SettlementTenantUsageChangedCopyWith(SettlementTenantUsageChanged value, $Res Function(SettlementTenantUsageChanged) _then) = _$SettlementTenantUsageChangedCopyWithImpl;
@useResult
$Res call({
 String leaseId, String categoryId, double? usage
});




}
/// @nodoc
class _$SettlementTenantUsageChangedCopyWithImpl<$Res>
    implements $SettlementTenantUsageChangedCopyWith<$Res> {
  _$SettlementTenantUsageChangedCopyWithImpl(this._self, this._then);

  final SettlementTenantUsageChanged _self;
  final $Res Function(SettlementTenantUsageChanged) _then;

/// Create a copy of SettlementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? leaseId = null,Object? categoryId = null,Object? usage = freezed,}) {
  return _then(SettlementTenantUsageChanged(
leaseId: null == leaseId ? _self.leaseId : leaseId // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

/// @nodoc


class SettlementManualAmountCommitted implements SettlementEvent {
  const SettlementManualAmountCommitted({required this.leaseId, required this.categoryId, required this.amountCents});
  

 final  String leaseId;
 final  String categoryId;
 final  int amountCents;

/// Create a copy of SettlementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettlementManualAmountCommittedCopyWith<SettlementManualAmountCommitted> get copyWith => _$SettlementManualAmountCommittedCopyWithImpl<SettlementManualAmountCommitted>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SettlementManualAmountCommitted&&(identical(other.leaseId, leaseId) || other.leaseId == leaseId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.amountCents, amountCents) || other.amountCents == amountCents));
}


@override
int get hashCode {
    return Object.hash(runtimeType,leaseId,categoryId,amountCents);
}

@override
String toString() {
    return 'SettlementEvent.manualAmountCommitted(leaseId: $leaseId, categoryId: $categoryId, amountCents: $amountCents)';
}


}

/// @nodoc
abstract mixin class $SettlementManualAmountCommittedCopyWith<$Res> implements $SettlementEventCopyWith<$Res> {
  factory $SettlementManualAmountCommittedCopyWith(SettlementManualAmountCommitted value, $Res Function(SettlementManualAmountCommitted) _then) = _$SettlementManualAmountCommittedCopyWithImpl;
@useResult
$Res call({
 String leaseId, String categoryId, int amountCents
});




}
/// @nodoc
class _$SettlementManualAmountCommittedCopyWithImpl<$Res>
    implements $SettlementManualAmountCommittedCopyWith<$Res> {
  _$SettlementManualAmountCommittedCopyWithImpl(this._self, this._then);

  final SettlementManualAmountCommitted _self;
  final $Res Function(SettlementManualAmountCommitted) _then;

/// Create a copy of SettlementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? leaseId = null,Object? categoryId = null,Object? amountCents = null,}) {
  return _then(SettlementManualAmountCommitted(
leaseId: null == leaseId ? _self.leaseId : leaseId // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,amountCents: null == amountCents ? _self.amountCents : amountCents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SettlementPublishRequested implements SettlementEvent {
  const SettlementPublishRequested();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SettlementPublishRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SettlementEvent.publishRequested()';
}


}




/// @nodoc
mixin _$SettlementState {

 String get month; LoadState<List<PropertyItem>> get properties; String? get propertyId; SettlementStep get step; LoadState<SettlementMonth> get data;/// Field keys being saved, and saved since the screen loaded (for ✓).
 Set<String> get saving; Set<String> get saved; bool get calculating; bool get publishing;/// Typed but not yet sent: per-tenant usage and manual amounts, by
/// `draftKey(leaseId, categoryId)`.
 Map<String, double> get usageDrafts; Map<String, int> get manualDrafts;/// Set after publishing: how many tenants were notified.
 int? get publishedCount; Object? get error;/// Bumped with each message, so the same one twice still shows.
 int get signal;
/// Create a copy of SettlementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettlementStateCopyWith<SettlementState> get copyWith => _$SettlementStateCopyWithImpl<SettlementState>(this as SettlementState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SettlementState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettlementState&&(identical(other.month, _this.month) || other.month == _this.month)&&(identical(other.properties, _this.properties) || other.properties == _this.properties)&&(identical(other.propertyId, _this.propertyId) || other.propertyId == _this.propertyId)&&(identical(other.step, _this.step) || other.step == _this.step)&&(identical(other.data, _this.data) || other.data == _this.data)&&const DeepCollectionEquality().equals(other.saving, _this.saving)&&const DeepCollectionEquality().equals(other.saved, _this.saved)&&(identical(other.calculating, _this.calculating) || other.calculating == _this.calculating)&&(identical(other.publishing, _this.publishing) || other.publishing == _this.publishing)&&const DeepCollectionEquality().equals(other.usageDrafts, _this.usageDrafts)&&const DeepCollectionEquality().equals(other.manualDrafts, _this.manualDrafts)&&(identical(other.publishedCount, _this.publishedCount) || other.publishedCount == _this.publishedCount)&&const DeepCollectionEquality().equals(other.error, _this.error)&&(identical(other.signal, _this.signal) || other.signal == _this.signal));
}


@override
int get hashCode {
  final _this = this as SettlementState;
  return Object.hash(runtimeType,_this.month,_this.properties,_this.propertyId,_this.step,_this.data,const DeepCollectionEquality().hash(_this.saving),const DeepCollectionEquality().hash(_this.saved),_this.calculating,_this.publishing,const DeepCollectionEquality().hash(_this.usageDrafts),const DeepCollectionEquality().hash(_this.manualDrafts),_this.publishedCount,const DeepCollectionEquality().hash(_this.error),_this.signal);
}

@override
String toString() {
  final _this = this as SettlementState;
  return 'SettlementState(month: ${_this.month}, properties: ${_this.properties}, propertyId: ${_this.propertyId}, step: ${_this.step}, data: ${_this.data}, saving: ${_this.saving}, saved: ${_this.saved}, calculating: ${_this.calculating}, publishing: ${_this.publishing}, usageDrafts: ${_this.usageDrafts}, manualDrafts: ${_this.manualDrafts}, publishedCount: ${_this.publishedCount}, error: ${_this.error}, signal: ${_this.signal})';
}


}

/// @nodoc
abstract mixin class $SettlementStateCopyWith<$Res>  {
  factory $SettlementStateCopyWith(SettlementState value, $Res Function(SettlementState) _then) = _$SettlementStateCopyWithImpl;
@useResult
$Res call({
 String month, LoadState<List<PropertyItem>> properties, String? propertyId, SettlementStep step, LoadState<SettlementMonth> data, Set<String> saving, Set<String> saved, bool calculating, bool publishing, Map<String, double> usageDrafts, Map<String, int> manualDrafts, int? publishedCount, Object? error, int signal
});


$LoadStateCopyWith<List<PropertyItem>, $Res> get properties;$LoadStateCopyWith<SettlementMonth, $Res> get data;

}
/// @nodoc
class _$SettlementStateCopyWithImpl<$Res>
    implements $SettlementStateCopyWith<$Res> {
  _$SettlementStateCopyWithImpl(this._self, this._then);

  final SettlementState _self;
  final $Res Function(SettlementState) _then;

/// Create a copy of SettlementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? month = null,Object? properties = null,Object? propertyId = freezed,Object? step = null,Object? data = null,Object? saving = null,Object? saved = null,Object? calculating = null,Object? publishing = null,Object? usageDrafts = null,Object? manualDrafts = null,Object? publishedCount = freezed,Object? error = freezed,Object? signal = null,}) {
  return _then(SettlementState(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,properties: null == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as LoadState<List<PropertyItem>>,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String?,step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as SettlementStep,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LoadState<SettlementMonth>,saving: null == saving ? _self.saving : saving // ignore: cast_nullable_to_non_nullable
as Set<String>,saved: null == saved ? _self.saved : saved // ignore: cast_nullable_to_non_nullable
as Set<String>,calculating: null == calculating ? _self.calculating : calculating // ignore: cast_nullable_to_non_nullable
as bool,publishing: null == publishing ? _self.publishing : publishing // ignore: cast_nullable_to_non_nullable
as bool,usageDrafts: null == usageDrafts ? _self.usageDrafts : usageDrafts // ignore: cast_nullable_to_non_nullable
as Map<String, double>,manualDrafts: null == manualDrafts ? _self.manualDrafts : manualDrafts // ignore: cast_nullable_to_non_nullable
as Map<String, int>,publishedCount: freezed == publishedCount ? _self.publishedCount : publishedCount // ignore: cast_nullable_to_non_nullable
as int?,error: freezed == error ? _self.error : error ,signal: null == signal ? _self.signal : signal // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of SettlementState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoadStateCopyWith<List<PropertyItem>, $Res> get properties {
  
  return $LoadStateCopyWith<List<PropertyItem>, $Res>(_self.properties, (value) {
    return _then(_self.copyWith(properties: value));
  });
}/// Create a copy of SettlementState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoadStateCopyWith<SettlementMonth, $Res> get data {
  
  return $LoadStateCopyWith<SettlementMonth, $Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [SettlementState].
extension SettlementStatePatterns on SettlementState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettlementState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettlementState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettlementState value)  $default,){
final _that = this;
switch (_that) {
case _SettlementState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettlementState value)?  $default,){
final _that = this;
switch (_that) {
case _SettlementState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String month,  LoadState<List<PropertyItem>> properties,  String? propertyId,  SettlementStep step,  LoadState<SettlementMonth> data,  Set<String> saving,  Set<String> saved,  bool calculating,  bool publishing,  Map<String, double> usageDrafts,  Map<String, int> manualDrafts,  int? publishedCount,  Object? error,  int signal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettlementState() when $default != null:
return $default(_that.month,_that.properties,_that.propertyId,_that.step,_that.data,_that.saving,_that.saved,_that.calculating,_that.publishing,_that.usageDrafts,_that.manualDrafts,_that.publishedCount,_that.error,_that.signal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String month,  LoadState<List<PropertyItem>> properties,  String? propertyId,  SettlementStep step,  LoadState<SettlementMonth> data,  Set<String> saving,  Set<String> saved,  bool calculating,  bool publishing,  Map<String, double> usageDrafts,  Map<String, int> manualDrafts,  int? publishedCount,  Object? error,  int signal)  $default,) {final _that = this;
switch (_that) {
case _SettlementState():
return $default(_that.month,_that.properties,_that.propertyId,_that.step,_that.data,_that.saving,_that.saved,_that.calculating,_that.publishing,_that.usageDrafts,_that.manualDrafts,_that.publishedCount,_that.error,_that.signal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String month,  LoadState<List<PropertyItem>> properties,  String? propertyId,  SettlementStep step,  LoadState<SettlementMonth> data,  Set<String> saving,  Set<String> saved,  bool calculating,  bool publishing,  Map<String, double> usageDrafts,  Map<String, int> manualDrafts,  int? publishedCount,  Object? error,  int signal)?  $default,) {final _that = this;
switch (_that) {
case _SettlementState() when $default != null:
return $default(_that.month,_that.properties,_that.propertyId,_that.step,_that.data,_that.saving,_that.saved,_that.calculating,_that.publishing,_that.usageDrafts,_that.manualDrafts,_that.publishedCount,_that.error,_that.signal);case _:
  return null;

}
}

}

/// @nodoc


class _SettlementState implements SettlementState {
  const _SettlementState({required this.month, this.properties = const LoadState<List<PropertyItem>>.loading(), this.propertyId, this.step = SettlementStep.meters, this.data = const LoadState<SettlementMonth>.loading(),  Set<String> saving = const <String>{},  Set<String> saved = const <String>{}, this.calculating = false, this.publishing = false,  Map<String, double> usageDrafts = const <String, double>{},  Map<String, int> manualDrafts = const <String, int>{}, this.publishedCount, this.error, this.signal = 0}): _saving = saving,_saved = saved,_usageDrafts = usageDrafts,_manualDrafts = manualDrafts;
  

@override final  String month;
@override@JsonKey() final  LoadState<List<PropertyItem>> properties;
@override final  String? propertyId;
@override@JsonKey() final  SettlementStep step;
@override@JsonKey() final  LoadState<SettlementMonth> data;
/// Field keys being saved, and saved since the screen loaded (for ✓).
 final  Set<String> _saving;
/// Field keys being saved, and saved since the screen loaded (for ✓).
@override@JsonKey() Set<String> get saving {
  if (_saving is EqualUnmodifiableSetView) return _saving;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_saving);
}

 final  Set<String> _saved;
@override@JsonKey() Set<String> get saved {
  if (_saved is EqualUnmodifiableSetView) return _saved;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_saved);
}

@override@JsonKey() final  bool calculating;
@override@JsonKey() final  bool publishing;
/// Typed but not yet sent: per-tenant usage and manual amounts, by
/// `draftKey(leaseId, categoryId)`.
 final  Map<String, double> _usageDrafts;
/// Typed but not yet sent: per-tenant usage and manual amounts, by
/// `draftKey(leaseId, categoryId)`.
@override@JsonKey() Map<String, double> get usageDrafts {
  if (_usageDrafts is EqualUnmodifiableMapView) return _usageDrafts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_usageDrafts);
}

 final  Map<String, int> _manualDrafts;
@override@JsonKey() Map<String, int> get manualDrafts {
  if (_manualDrafts is EqualUnmodifiableMapView) return _manualDrafts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_manualDrafts);
}

/// Set after publishing: how many tenants were notified.
@override final  int? publishedCount;
@override final  Object? error;
/// Bumped with each message, so the same one twice still shows.
@override@JsonKey() final  int signal;

/// Create a copy of SettlementState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettlementStateCopyWith<_SettlementState> get copyWith => __$SettlementStateCopyWithImpl<_SettlementState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettlementState&&(identical(other.month, month) || other.month == month)&&(identical(other.properties, properties) || other.properties == properties)&&(identical(other.propertyId, propertyId) || other.propertyId == propertyId)&&(identical(other.step, step) || other.step == step)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.saving, _saving)&&const DeepCollectionEquality().equals(other.saved, _saved)&&(identical(other.calculating, calculating) || other.calculating == calculating)&&(identical(other.publishing, publishing) || other.publishing == publishing)&&const DeepCollectionEquality().equals(other.usageDrafts, _usageDrafts)&&const DeepCollectionEquality().equals(other.manualDrafts, _manualDrafts)&&(identical(other.publishedCount, publishedCount) || other.publishedCount == publishedCount)&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.signal, signal) || other.signal == signal));
}


@override
int get hashCode {
    return Object.hash(runtimeType,month,properties,propertyId,step,data,const DeepCollectionEquality().hash(_saving),const DeepCollectionEquality().hash(_saved),calculating,publishing,const DeepCollectionEquality().hash(_usageDrafts),const DeepCollectionEquality().hash(_manualDrafts),publishedCount,const DeepCollectionEquality().hash(error),signal);
}

@override
String toString() {
    return 'SettlementState(month: $month, properties: $properties, propertyId: $propertyId, step: $step, data: $data, saving: $saving, saved: $saved, calculating: $calculating, publishing: $publishing, usageDrafts: $usageDrafts, manualDrafts: $manualDrafts, publishedCount: $publishedCount, error: $error, signal: $signal)';
}


}

/// @nodoc
abstract mixin class _$SettlementStateCopyWith<$Res> implements $SettlementStateCopyWith<$Res> {
  factory _$SettlementStateCopyWith(_SettlementState value, $Res Function(_SettlementState) _then) = __$SettlementStateCopyWithImpl;
@override @useResult
$Res call({
 String month, LoadState<List<PropertyItem>> properties, String? propertyId, SettlementStep step, LoadState<SettlementMonth> data, Set<String> saving, Set<String> saved, bool calculating, bool publishing, Map<String, double> usageDrafts, Map<String, int> manualDrafts, int? publishedCount, Object? error, int signal
});


@override $LoadStateCopyWith<List<PropertyItem>, $Res> get properties;@override $LoadStateCopyWith<SettlementMonth, $Res> get data;

}
/// @nodoc
class __$SettlementStateCopyWithImpl<$Res>
    implements _$SettlementStateCopyWith<$Res> {
  __$SettlementStateCopyWithImpl(this._self, this._then);

  final _SettlementState _self;
  final $Res Function(_SettlementState) _then;

/// Create a copy of SettlementState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = null,Object? properties = null,Object? propertyId = freezed,Object? step = null,Object? data = null,Object? saving = null,Object? saved = null,Object? calculating = null,Object? publishing = null,Object? usageDrafts = null,Object? manualDrafts = null,Object? publishedCount = freezed,Object? error = freezed,Object? signal = null,}) {
  return _then(_SettlementState(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,properties: null == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as LoadState<List<PropertyItem>>,propertyId: freezed == propertyId ? _self.propertyId : propertyId // ignore: cast_nullable_to_non_nullable
as String?,step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as SettlementStep,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LoadState<SettlementMonth>,saving: null == saving ? _self._saving : saving // ignore: cast_nullable_to_non_nullable
as Set<String>,saved: null == saved ? _self._saved : saved // ignore: cast_nullable_to_non_nullable
as Set<String>,calculating: null == calculating ? _self.calculating : calculating // ignore: cast_nullable_to_non_nullable
as bool,publishing: null == publishing ? _self.publishing : publishing // ignore: cast_nullable_to_non_nullable
as bool,usageDrafts: null == usageDrafts ? _self._usageDrafts : usageDrafts // ignore: cast_nullable_to_non_nullable
as Map<String, double>,manualDrafts: null == manualDrafts ? _self._manualDrafts : manualDrafts // ignore: cast_nullable_to_non_nullable
as Map<String, int>,publishedCount: freezed == publishedCount ? _self.publishedCount : publishedCount // ignore: cast_nullable_to_non_nullable
as int?,error: freezed == error ? _self.error : error ,signal: null == signal ? _self.signal : signal // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of SettlementState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoadStateCopyWith<List<PropertyItem>, $Res> get properties {
  
  return $LoadStateCopyWith<List<PropertyItem>, $Res>(_self.properties, (value) {
    return _then(_self.copyWith(properties: value));
  });
}/// Create a copy of SettlementState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoadStateCopyWith<SettlementMonth, $Res> get data {
  
  return $LoadStateCopyWith<SettlementMonth, $Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
