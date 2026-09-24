// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tenant_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TenantEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is TenantEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'TenantEvent()';
}


}

/// @nodoc
class $TenantEventCopyWith<$Res>  {
$TenantEventCopyWith(TenantEvent _, $Res Function(TenantEvent) __);
}


/// Adds pattern-matching-related methods to [TenantEvent].
extension TenantEventPatterns on TenantEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TenantStarted value)?  started,TResult Function( TenantRefreshed value)?  refreshed,TResult Function( TenantLeaseSelected value)?  leaseSelected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TenantStarted() when started != null:
return started(_that);case TenantRefreshed() when refreshed != null:
return refreshed(_that);case TenantLeaseSelected() when leaseSelected != null:
return leaseSelected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TenantStarted value)  started,required TResult Function( TenantRefreshed value)  refreshed,required TResult Function( TenantLeaseSelected value)  leaseSelected,}){
final _that = this;
switch (_that) {
case TenantStarted():
return started(_that);case TenantRefreshed():
return refreshed(_that);case TenantLeaseSelected():
return leaseSelected(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TenantStarted value)?  started,TResult? Function( TenantRefreshed value)?  refreshed,TResult? Function( TenantLeaseSelected value)?  leaseSelected,}){
final _that = this;
switch (_that) {
case TenantStarted() when started != null:
return started(_that);case TenantRefreshed() when refreshed != null:
return refreshed(_that);case TenantLeaseSelected() when leaseSelected != null:
return leaseSelected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  refreshed,TResult Function( String leaseId)?  leaseSelected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TenantStarted() when started != null:
return started();case TenantRefreshed() when refreshed != null:
return refreshed();case TenantLeaseSelected() when leaseSelected != null:
return leaseSelected(_that.leaseId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  refreshed,required TResult Function( String leaseId)  leaseSelected,}) {final _that = this;
switch (_that) {
case TenantStarted():
return started();case TenantRefreshed():
return refreshed();case TenantLeaseSelected():
return leaseSelected(_that.leaseId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  refreshed,TResult? Function( String leaseId)?  leaseSelected,}) {final _that = this;
switch (_that) {
case TenantStarted() when started != null:
return started();case TenantRefreshed() when refreshed != null:
return refreshed();case TenantLeaseSelected() when leaseSelected != null:
return leaseSelected(_that.leaseId);case _:
  return null;

}
}

}

/// @nodoc


class TenantStarted implements TenantEvent {
  const TenantStarted();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is TenantStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'TenantEvent.started()';
}


}




/// @nodoc


class TenantRefreshed implements TenantEvent {
  const TenantRefreshed();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is TenantRefreshed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'TenantEvent.refreshed()';
}


}




/// @nodoc


class TenantLeaseSelected implements TenantEvent {
  const TenantLeaseSelected(this.leaseId);
  

 final  String leaseId;

/// Create a copy of TenantEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TenantLeaseSelectedCopyWith<TenantLeaseSelected> get copyWith => _$TenantLeaseSelectedCopyWithImpl<TenantLeaseSelected>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is TenantLeaseSelected&&(identical(other.leaseId, leaseId) || other.leaseId == leaseId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,leaseId);
}

@override
String toString() {
    return 'TenantEvent.leaseSelected(leaseId: $leaseId)';
}


}

/// @nodoc
abstract mixin class $TenantLeaseSelectedCopyWith<$Res> implements $TenantEventCopyWith<$Res> {
  factory $TenantLeaseSelectedCopyWith(TenantLeaseSelected value, $Res Function(TenantLeaseSelected) _then) = _$TenantLeaseSelectedCopyWithImpl;
@useResult
$Res call({
 String leaseId
});




}
/// @nodoc
class _$TenantLeaseSelectedCopyWithImpl<$Res>
    implements $TenantLeaseSelectedCopyWith<$Res> {
  _$TenantLeaseSelectedCopyWithImpl(this._self, this._then);

  final TenantLeaseSelected _self;
  final $Res Function(TenantLeaseSelected) _then;

/// Create a copy of TenantEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? leaseId = null,}) {
  return _then(TenantLeaseSelected(
null == leaseId ? _self.leaseId : leaseId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TenantData {

 List<TenantLease> get leases;/// Null when the tenant isn't linked to any lease yet.
 TenantOverview? get overview; TenantMeters? get meters; List<TenantDocument> get documents;
/// Create a copy of TenantData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TenantDataCopyWith<TenantData> get copyWith => _$TenantDataCopyWithImpl<TenantData>(this as TenantData, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as TenantData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TenantData&&const DeepCollectionEquality().equals(other.leases, _this.leases)&&(identical(other.overview, _this.overview) || other.overview == _this.overview)&&(identical(other.meters, _this.meters) || other.meters == _this.meters)&&const DeepCollectionEquality().equals(other.documents, _this.documents));
}


@override
int get hashCode {
  final _this = this as TenantData;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.leases),_this.overview,_this.meters,const DeepCollectionEquality().hash(_this.documents));
}

@override
String toString() {
  final _this = this as TenantData;
  return 'TenantData(leases: ${_this.leases}, overview: ${_this.overview}, meters: ${_this.meters}, documents: ${_this.documents})';
}


}

/// @nodoc
abstract mixin class $TenantDataCopyWith<$Res>  {
  factory $TenantDataCopyWith(TenantData value, $Res Function(TenantData) _then) = _$TenantDataCopyWithImpl;
@useResult
$Res call({
 List<TenantLease> leases, TenantOverview? overview, TenantMeters? meters, List<TenantDocument> documents
});


$TenantOverviewCopyWith<$Res>? get overview;$TenantMetersCopyWith<$Res>? get meters;

}
/// @nodoc
class _$TenantDataCopyWithImpl<$Res>
    implements $TenantDataCopyWith<$Res> {
  _$TenantDataCopyWithImpl(this._self, this._then);

  final TenantData _self;
  final $Res Function(TenantData) _then;

/// Create a copy of TenantData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? leases = null,Object? overview = freezed,Object? meters = freezed,Object? documents = null,}) {
  return _then(TenantData(
leases: null == leases ? _self.leases : leases // ignore: cast_nullable_to_non_nullable
as List<TenantLease>,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as TenantOverview?,meters: freezed == meters ? _self.meters : meters // ignore: cast_nullable_to_non_nullable
as TenantMeters?,documents: null == documents ? _self.documents : documents // ignore: cast_nullable_to_non_nullable
as List<TenantDocument>,
  ));
}
/// Create a copy of TenantData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantOverviewCopyWith<$Res>? get overview {
    if (_self.overview == null) {
    return null;
  }

  return $TenantOverviewCopyWith<$Res>(_self.overview!, (value) {
    return _then(_self.copyWith(overview: value));
  });
}/// Create a copy of TenantData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantMetersCopyWith<$Res>? get meters {
    if (_self.meters == null) {
    return null;
  }

  return $TenantMetersCopyWith<$Res>(_self.meters!, (value) {
    return _then(_self.copyWith(meters: value));
  });
}
}


/// Adds pattern-matching-related methods to [TenantData].
extension TenantDataPatterns on TenantData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TenantData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TenantData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TenantData value)  $default,){
final _that = this;
switch (_that) {
case _TenantData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TenantData value)?  $default,){
final _that = this;
switch (_that) {
case _TenantData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TenantLease> leases,  TenantOverview? overview,  TenantMeters? meters,  List<TenantDocument> documents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TenantData() when $default != null:
return $default(_that.leases,_that.overview,_that.meters,_that.documents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TenantLease> leases,  TenantOverview? overview,  TenantMeters? meters,  List<TenantDocument> documents)  $default,) {final _that = this;
switch (_that) {
case _TenantData():
return $default(_that.leases,_that.overview,_that.meters,_that.documents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TenantLease> leases,  TenantOverview? overview,  TenantMeters? meters,  List<TenantDocument> documents)?  $default,) {final _that = this;
switch (_that) {
case _TenantData() when $default != null:
return $default(_that.leases,_that.overview,_that.meters,_that.documents);case _:
  return null;

}
}

}

/// @nodoc


class _TenantData extends TenantData {
  const _TenantData({required  List<TenantLease> leases, this.overview, this.meters,  List<TenantDocument> documents = const <TenantDocument>[]}): _leases = leases,_documents = documents,super._();
  

 final  List<TenantLease> _leases;
@override List<TenantLease> get leases {
  if (_leases is EqualUnmodifiableListView) return _leases;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_leases);
}

/// Null when the tenant isn't linked to any lease yet.
@override final  TenantOverview? overview;
@override final  TenantMeters? meters;
 final  List<TenantDocument> _documents;
@override@JsonKey() List<TenantDocument> get documents {
  if (_documents is EqualUnmodifiableListView) return _documents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_documents);
}


/// Create a copy of TenantData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TenantDataCopyWith<_TenantData> get copyWith => __$TenantDataCopyWithImpl<_TenantData>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TenantData&&const DeepCollectionEquality().equals(other.leases, _leases)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.meters, meters) || other.meters == meters)&&const DeepCollectionEquality().equals(other.documents, _documents));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_leases),overview,meters,const DeepCollectionEquality().hash(_documents));
}

@override
String toString() {
    return 'TenantData(leases: $leases, overview: $overview, meters: $meters, documents: $documents)';
}


}

/// @nodoc
abstract mixin class _$TenantDataCopyWith<$Res> implements $TenantDataCopyWith<$Res> {
  factory _$TenantDataCopyWith(_TenantData value, $Res Function(_TenantData) _then) = __$TenantDataCopyWithImpl;
@override @useResult
$Res call({
 List<TenantLease> leases, TenantOverview? overview, TenantMeters? meters, List<TenantDocument> documents
});


@override $TenantOverviewCopyWith<$Res>? get overview;@override $TenantMetersCopyWith<$Res>? get meters;

}
/// @nodoc
class __$TenantDataCopyWithImpl<$Res>
    implements _$TenantDataCopyWith<$Res> {
  __$TenantDataCopyWithImpl(this._self, this._then);

  final _TenantData _self;
  final $Res Function(_TenantData) _then;

/// Create a copy of TenantData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leases = null,Object? overview = freezed,Object? meters = freezed,Object? documents = null,}) {
  return _then(_TenantData(
leases: null == leases ? _self._leases : leases // ignore: cast_nullable_to_non_nullable
as List<TenantLease>,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as TenantOverview?,meters: freezed == meters ? _self.meters : meters // ignore: cast_nullable_to_non_nullable
as TenantMeters?,documents: null == documents ? _self._documents : documents // ignore: cast_nullable_to_non_nullable
as List<TenantDocument>,
  ));
}

/// Create a copy of TenantData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantOverviewCopyWith<$Res>? get overview {
    if (_self.overview == null) {
    return null;
  }

  return $TenantOverviewCopyWith<$Res>(_self.overview!, (value) {
    return _then(_self.copyWith(overview: value));
  });
}/// Create a copy of TenantData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TenantMetersCopyWith<$Res>? get meters {
    if (_self.meters == null) {
    return null;
  }

  return $TenantMetersCopyWith<$Res>(_self.meters!, (value) {
    return _then(_self.copyWith(meters: value));
  });
}
}

// dart format on
