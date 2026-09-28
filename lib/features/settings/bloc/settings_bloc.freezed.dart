// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SettingsEvent()';
}


}

/// @nodoc
class $SettingsEventCopyWith<$Res>  {
$SettingsEventCopyWith(SettingsEvent _, $Res Function(SettingsEvent) __);
}


/// Adds pattern-matching-related methods to [SettingsEvent].
extension SettingsEventPatterns on SettingsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SettingsStarted value)?  started,TResult Function( SettingsLanguageSynced value)?  languageSynced,TResult Function( SettingsDeletionRequested value)?  deletionRequested,TResult Function( SettingsNotificationsToggled value)?  notificationsToggled,TResult Function( SettingsNotificationsRechecked value)?  notificationsRechecked,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SettingsStarted() when started != null:
return started(_that);case SettingsLanguageSynced() when languageSynced != null:
return languageSynced(_that);case SettingsDeletionRequested() when deletionRequested != null:
return deletionRequested(_that);case SettingsNotificationsToggled() when notificationsToggled != null:
return notificationsToggled(_that);case SettingsNotificationsRechecked() when notificationsRechecked != null:
return notificationsRechecked(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SettingsStarted value)  started,required TResult Function( SettingsLanguageSynced value)  languageSynced,required TResult Function( SettingsDeletionRequested value)  deletionRequested,required TResult Function( SettingsNotificationsToggled value)  notificationsToggled,required TResult Function( SettingsNotificationsRechecked value)  notificationsRechecked,}){
final _that = this;
switch (_that) {
case SettingsStarted():
return started(_that);case SettingsLanguageSynced():
return languageSynced(_that);case SettingsDeletionRequested():
return deletionRequested(_that);case SettingsNotificationsToggled():
return notificationsToggled(_that);case SettingsNotificationsRechecked():
return notificationsRechecked(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SettingsStarted value)?  started,TResult? Function( SettingsLanguageSynced value)?  languageSynced,TResult? Function( SettingsDeletionRequested value)?  deletionRequested,TResult? Function( SettingsNotificationsToggled value)?  notificationsToggled,TResult? Function( SettingsNotificationsRechecked value)?  notificationsRechecked,}){
final _that = this;
switch (_that) {
case SettingsStarted() when started != null:
return started(_that);case SettingsLanguageSynced() when languageSynced != null:
return languageSynced(_that);case SettingsDeletionRequested() when deletionRequested != null:
return deletionRequested(_that);case SettingsNotificationsToggled() when notificationsToggled != null:
return notificationsToggled(_that);case SettingsNotificationsRechecked() when notificationsRechecked != null:
return notificationsRechecked(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String locale)?  languageSynced,TResult Function()?  deletionRequested,TResult Function( bool enabled)?  notificationsToggled,TResult Function()?  notificationsRechecked,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SettingsStarted() when started != null:
return started();case SettingsLanguageSynced() when languageSynced != null:
return languageSynced(_that.locale);case SettingsDeletionRequested() when deletionRequested != null:
return deletionRequested();case SettingsNotificationsToggled() when notificationsToggled != null:
return notificationsToggled(_that.enabled);case SettingsNotificationsRechecked() when notificationsRechecked != null:
return notificationsRechecked();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String locale)  languageSynced,required TResult Function()  deletionRequested,required TResult Function( bool enabled)  notificationsToggled,required TResult Function()  notificationsRechecked,}) {final _that = this;
switch (_that) {
case SettingsStarted():
return started();case SettingsLanguageSynced():
return languageSynced(_that.locale);case SettingsDeletionRequested():
return deletionRequested();case SettingsNotificationsToggled():
return notificationsToggled(_that.enabled);case SettingsNotificationsRechecked():
return notificationsRechecked();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String locale)?  languageSynced,TResult? Function()?  deletionRequested,TResult? Function( bool enabled)?  notificationsToggled,TResult? Function()?  notificationsRechecked,}) {final _that = this;
switch (_that) {
case SettingsStarted() when started != null:
return started();case SettingsLanguageSynced() when languageSynced != null:
return languageSynced(_that.locale);case SettingsDeletionRequested() when deletionRequested != null:
return deletionRequested();case SettingsNotificationsToggled() when notificationsToggled != null:
return notificationsToggled(_that.enabled);case SettingsNotificationsRechecked() when notificationsRechecked != null:
return notificationsRechecked();case _:
  return null;

}
}

}

/// @nodoc


class SettingsStarted implements SettingsEvent {
  const SettingsStarted();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SettingsEvent.started()';
}


}




/// @nodoc


class SettingsLanguageSynced implements SettingsEvent {
  const SettingsLanguageSynced(this.locale);
  

 final  String locale;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsLanguageSyncedCopyWith<SettingsLanguageSynced> get copyWith => _$SettingsLanguageSyncedCopyWithImpl<SettingsLanguageSynced>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsLanguageSynced&&(identical(other.locale, locale) || other.locale == locale));
}


@override
int get hashCode {
    return Object.hash(runtimeType,locale);
}

@override
String toString() {
    return 'SettingsEvent.languageSynced(locale: $locale)';
}


}

/// @nodoc
abstract mixin class $SettingsLanguageSyncedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory $SettingsLanguageSyncedCopyWith(SettingsLanguageSynced value, $Res Function(SettingsLanguageSynced) _then) = _$SettingsLanguageSyncedCopyWithImpl;
@useResult
$Res call({
 String locale
});




}
/// @nodoc
class _$SettingsLanguageSyncedCopyWithImpl<$Res>
    implements $SettingsLanguageSyncedCopyWith<$Res> {
  _$SettingsLanguageSyncedCopyWithImpl(this._self, this._then);

  final SettingsLanguageSynced _self;
  final $Res Function(SettingsLanguageSynced) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locale = null,}) {
  return _then(SettingsLanguageSynced(
null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SettingsDeletionRequested implements SettingsEvent {
  const SettingsDeletionRequested();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsDeletionRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SettingsEvent.deletionRequested()';
}


}




/// @nodoc


class SettingsNotificationsToggled implements SettingsEvent {
  const SettingsNotificationsToggled({required this.enabled});
  

 final  bool enabled;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsNotificationsToggledCopyWith<SettingsNotificationsToggled> get copyWith => _$SettingsNotificationsToggledCopyWithImpl<SettingsNotificationsToggled>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsNotificationsToggled&&(identical(other.enabled, enabled) || other.enabled == enabled));
}


@override
int get hashCode {
    return Object.hash(runtimeType,enabled);
}

@override
String toString() {
    return 'SettingsEvent.notificationsToggled(enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class $SettingsNotificationsToggledCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory $SettingsNotificationsToggledCopyWith(SettingsNotificationsToggled value, $Res Function(SettingsNotificationsToggled) _then) = _$SettingsNotificationsToggledCopyWithImpl;
@useResult
$Res call({
 bool enabled
});




}
/// @nodoc
class _$SettingsNotificationsToggledCopyWithImpl<$Res>
    implements $SettingsNotificationsToggledCopyWith<$Res> {
  _$SettingsNotificationsToggledCopyWithImpl(this._self, this._then);

  final SettingsNotificationsToggled _self;
  final $Res Function(SettingsNotificationsToggled) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? enabled = null,}) {
  return _then(SettingsNotificationsToggled(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class SettingsNotificationsRechecked implements SettingsEvent {
  const SettingsNotificationsRechecked();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsNotificationsRechecked);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SettingsEvent.notificationsRechecked()';
}


}




/// @nodoc
mixin _$SettingsState {

/// Only for landlords; tenants have no plan of their own.
 LoadState<BillingInfo>? get billing;/// Null until known.
 PushStatus? get notifications; bool get notificationsBusy; String get version; bool get deleting;/// Set once deletion went through; the screen then signs out.
 bool get deleted; Object? get error;
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsStateCopyWith<SettingsState> get copyWith => _$SettingsStateCopyWithImpl<SettingsState>(this as SettingsState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SettingsState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState&&(identical(other.billing, _this.billing) || other.billing == _this.billing)&&(identical(other.notifications, _this.notifications) || other.notifications == _this.notifications)&&(identical(other.notificationsBusy, _this.notificationsBusy) || other.notificationsBusy == _this.notificationsBusy)&&(identical(other.version, _this.version) || other.version == _this.version)&&(identical(other.deleting, _this.deleting) || other.deleting == _this.deleting)&&(identical(other.deleted, _this.deleted) || other.deleted == _this.deleted)&&const DeepCollectionEquality().equals(other.error, _this.error));
}


@override
int get hashCode {
  final _this = this as SettingsState;
  return Object.hash(runtimeType,_this.billing,_this.notifications,_this.notificationsBusy,_this.version,_this.deleting,_this.deleted,const DeepCollectionEquality().hash(_this.error));
}

@override
String toString() {
  final _this = this as SettingsState;
  return 'SettingsState(billing: ${_this.billing}, notifications: ${_this.notifications}, notificationsBusy: ${_this.notificationsBusy}, version: ${_this.version}, deleting: ${_this.deleting}, deleted: ${_this.deleted}, error: ${_this.error})';
}


}

/// @nodoc
abstract mixin class $SettingsStateCopyWith<$Res>  {
  factory $SettingsStateCopyWith(SettingsState value, $Res Function(SettingsState) _then) = _$SettingsStateCopyWithImpl;
@useResult
$Res call({
 LoadState<BillingInfo>? billing, PushStatus? notifications, bool notificationsBusy, String version, bool deleting, bool deleted, Object? error
});


$LoadStateCopyWith<BillingInfo, $Res>? get billing;

}
/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._self, this._then);

  final SettingsState _self;
  final $Res Function(SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? billing = freezed,Object? notifications = freezed,Object? notificationsBusy = null,Object? version = null,Object? deleting = null,Object? deleted = null,Object? error = freezed,}) {
  return _then(SettingsState(
billing: freezed == billing ? _self.billing : billing // ignore: cast_nullable_to_non_nullable
as LoadState<BillingInfo>?,notifications: freezed == notifications ? _self.notifications : notifications // ignore: cast_nullable_to_non_nullable
as PushStatus?,notificationsBusy: null == notificationsBusy ? _self.notificationsBusy : notificationsBusy // ignore: cast_nullable_to_non_nullable
as bool,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,deleting: null == deleting ? _self.deleting : deleting // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error ,
  ));
}
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoadStateCopyWith<BillingInfo, $Res>? get billing {
    if (_self.billing == null) {
    return null;
  }

  return $LoadStateCopyWith<BillingInfo, $Res>(_self.billing!, (value) {
    return _then(_self.copyWith(billing: value));
  });
}
}


/// Adds pattern-matching-related methods to [SettingsState].
extension SettingsStatePatterns on SettingsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsState value)  $default,){
final _that = this;
switch (_that) {
case _SettingsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsState value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LoadState<BillingInfo>? billing,  PushStatus? notifications,  bool notificationsBusy,  String version,  bool deleting,  bool deleted,  Object? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.billing,_that.notifications,_that.notificationsBusy,_that.version,_that.deleting,_that.deleted,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LoadState<BillingInfo>? billing,  PushStatus? notifications,  bool notificationsBusy,  String version,  bool deleting,  bool deleted,  Object? error)  $default,) {final _that = this;
switch (_that) {
case _SettingsState():
return $default(_that.billing,_that.notifications,_that.notificationsBusy,_that.version,_that.deleting,_that.deleted,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LoadState<BillingInfo>? billing,  PushStatus? notifications,  bool notificationsBusy,  String version,  bool deleting,  bool deleted,  Object? error)?  $default,) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.billing,_that.notifications,_that.notificationsBusy,_that.version,_that.deleting,_that.deleted,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _SettingsState implements SettingsState {
  const _SettingsState({this.billing, this.notifications, this.notificationsBusy = false, this.version = '', this.deleting = false, this.deleted = false, this.error});
  

/// Only for landlords; tenants have no plan of their own.
@override final  LoadState<BillingInfo>? billing;
/// Null until known.
@override final  PushStatus? notifications;
@override@JsonKey() final  bool notificationsBusy;
@override@JsonKey() final  String version;
@override@JsonKey() final  bool deleting;
/// Set once deletion went through; the screen then signs out.
@override@JsonKey() final  bool deleted;
@override final  Object? error;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsStateCopyWith<_SettingsState> get copyWith => __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsState&&(identical(other.billing, billing) || other.billing == billing)&&(identical(other.notifications, notifications) || other.notifications == notifications)&&(identical(other.notificationsBusy, notificationsBusy) || other.notificationsBusy == notificationsBusy)&&(identical(other.version, version) || other.version == version)&&(identical(other.deleting, deleting) || other.deleting == deleting)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode {
    return Object.hash(runtimeType,billing,notifications,notificationsBusy,version,deleting,deleted,const DeepCollectionEquality().hash(error));
}

@override
String toString() {
    return 'SettingsState(billing: $billing, notifications: $notifications, notificationsBusy: $notificationsBusy, version: $version, deleting: $deleting, deleted: $deleted, error: $error)';
}


}

/// @nodoc
abstract mixin class _$SettingsStateCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(_SettingsState value, $Res Function(_SettingsState) _then) = __$SettingsStateCopyWithImpl;
@override @useResult
$Res call({
 LoadState<BillingInfo>? billing, PushStatus? notifications, bool notificationsBusy, String version, bool deleting, bool deleted, Object? error
});


@override $LoadStateCopyWith<BillingInfo, $Res>? get billing;

}
/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(this._self, this._then);

  final _SettingsState _self;
  final $Res Function(_SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? billing = freezed,Object? notifications = freezed,Object? notificationsBusy = null,Object? version = null,Object? deleting = null,Object? deleted = null,Object? error = freezed,}) {
  return _then(_SettingsState(
billing: freezed == billing ? _self.billing : billing // ignore: cast_nullable_to_non_nullable
as LoadState<BillingInfo>?,notifications: freezed == notifications ? _self.notifications : notifications // ignore: cast_nullable_to_non_nullable
as PushStatus?,notificationsBusy: null == notificationsBusy ? _self.notificationsBusy : notificationsBusy // ignore: cast_nullable_to_non_nullable
as bool,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,deleting: null == deleting ? _self.deleting : deleting // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error ,
  ));
}

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoadStateCopyWith<BillingInfo, $Res>? get billing {
    if (_self.billing == null) {
    return null;
  }

  return $LoadStateCopyWith<BillingInfo, $Res>(_self.billing!, (value) {
    return _then(_self.copyWith(billing: value));
  });
}
}

// dart format on
