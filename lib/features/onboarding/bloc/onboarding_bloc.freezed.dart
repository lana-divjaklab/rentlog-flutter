// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OnboardingEvent()';
}


}

/// @nodoc
class $OnboardingEventCopyWith<$Res>  {
$OnboardingEventCopyWith(OnboardingEvent _, $Res Function(OnboardingEvent) __);
}


/// Adds pattern-matching-related methods to [OnboardingEvent].
extension OnboardingEventPatterns on OnboardingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OnboardingCodeChecked value)?  codeChecked,TResult Function( OnboardingJoinRequested value)?  joinRequested,TResult Function( OnboardingLandlordRequested value)?  landlordRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OnboardingCodeChecked() when codeChecked != null:
return codeChecked(_that);case OnboardingJoinRequested() when joinRequested != null:
return joinRequested(_that);case OnboardingLandlordRequested() when landlordRequested != null:
return landlordRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OnboardingCodeChecked value)  codeChecked,required TResult Function( OnboardingJoinRequested value)  joinRequested,required TResult Function( OnboardingLandlordRequested value)  landlordRequested,}){
final _that = this;
switch (_that) {
case OnboardingCodeChecked():
return codeChecked(_that);case OnboardingJoinRequested():
return joinRequested(_that);case OnboardingLandlordRequested():
return landlordRequested(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OnboardingCodeChecked value)?  codeChecked,TResult? Function( OnboardingJoinRequested value)?  joinRequested,TResult? Function( OnboardingLandlordRequested value)?  landlordRequested,}){
final _that = this;
switch (_that) {
case OnboardingCodeChecked() when codeChecked != null:
return codeChecked(_that);case OnboardingJoinRequested() when joinRequested != null:
return joinRequested(_that);case OnboardingLandlordRequested() when landlordRequested != null:
return landlordRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String code)?  codeChecked,TResult Function()?  joinRequested,TResult Function( String organizationName)?  landlordRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OnboardingCodeChecked() when codeChecked != null:
return codeChecked(_that.code);case OnboardingJoinRequested() when joinRequested != null:
return joinRequested();case OnboardingLandlordRequested() when landlordRequested != null:
return landlordRequested(_that.organizationName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String code)  codeChecked,required TResult Function()  joinRequested,required TResult Function( String organizationName)  landlordRequested,}) {final _that = this;
switch (_that) {
case OnboardingCodeChecked():
return codeChecked(_that.code);case OnboardingJoinRequested():
return joinRequested();case OnboardingLandlordRequested():
return landlordRequested(_that.organizationName);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String code)?  codeChecked,TResult? Function()?  joinRequested,TResult? Function( String organizationName)?  landlordRequested,}) {final _that = this;
switch (_that) {
case OnboardingCodeChecked() when codeChecked != null:
return codeChecked(_that.code);case OnboardingJoinRequested() when joinRequested != null:
return joinRequested();case OnboardingLandlordRequested() when landlordRequested != null:
return landlordRequested(_that.organizationName);case _:
  return null;

}
}

}

/// @nodoc


class OnboardingCodeChecked implements OnboardingEvent {
  const OnboardingCodeChecked(this.code);
  

 final  String code;

/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingCodeCheckedCopyWith<OnboardingCodeChecked> get copyWith => _$OnboardingCodeCheckedCopyWithImpl<OnboardingCodeChecked>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingCodeChecked&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'OnboardingEvent.codeChecked(code: $code)';
}


}

/// @nodoc
abstract mixin class $OnboardingCodeCheckedCopyWith<$Res> implements $OnboardingEventCopyWith<$Res> {
  factory $OnboardingCodeCheckedCopyWith(OnboardingCodeChecked value, $Res Function(OnboardingCodeChecked) _then) = _$OnboardingCodeCheckedCopyWithImpl;
@useResult
$Res call({
 String code
});




}
/// @nodoc
class _$OnboardingCodeCheckedCopyWithImpl<$Res>
    implements $OnboardingCodeCheckedCopyWith<$Res> {
  _$OnboardingCodeCheckedCopyWithImpl(this._self, this._then);

  final OnboardingCodeChecked _self;
  final $Res Function(OnboardingCodeChecked) _then;

/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(OnboardingCodeChecked(
null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OnboardingJoinRequested implements OnboardingEvent {
  const OnboardingJoinRequested();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingJoinRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OnboardingEvent.joinRequested()';
}


}




/// @nodoc


class OnboardingLandlordRequested implements OnboardingEvent {
  const OnboardingLandlordRequested(this.organizationName);
  

 final  String organizationName;

/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingLandlordRequestedCopyWith<OnboardingLandlordRequested> get copyWith => _$OnboardingLandlordRequestedCopyWithImpl<OnboardingLandlordRequested>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingLandlordRequested&&(identical(other.organizationName, organizationName) || other.organizationName == organizationName));
}


@override
int get hashCode {
    return Object.hash(runtimeType,organizationName);
}

@override
String toString() {
    return 'OnboardingEvent.landlordRequested(organizationName: $organizationName)';
}


}

/// @nodoc
abstract mixin class $OnboardingLandlordRequestedCopyWith<$Res> implements $OnboardingEventCopyWith<$Res> {
  factory $OnboardingLandlordRequestedCopyWith(OnboardingLandlordRequested value, $Res Function(OnboardingLandlordRequested) _then) = _$OnboardingLandlordRequestedCopyWithImpl;
@useResult
$Res call({
 String organizationName
});




}
/// @nodoc
class _$OnboardingLandlordRequestedCopyWithImpl<$Res>
    implements $OnboardingLandlordRequestedCopyWith<$Res> {
  _$OnboardingLandlordRequestedCopyWithImpl(this._self, this._then);

  final OnboardingLandlordRequested _self;
  final $Res Function(OnboardingLandlordRequested) _then;

/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? organizationName = null,}) {
  return _then(OnboardingLandlordRequested(
null == organizationName ? _self.organizationName : organizationName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$OnboardingState {

 bool get busy; InvitePreview? get preview; OnboardingFailure? get failure;/// A membership now exists; the session reloads and routes onward.
 bool get done;
/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingStateCopyWith<OnboardingState> get copyWith => _$OnboardingStateCopyWithImpl<OnboardingState>(this as OnboardingState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OnboardingState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingState&&(identical(other.busy, _this.busy) || other.busy == _this.busy)&&(identical(other.preview, _this.preview) || other.preview == _this.preview)&&(identical(other.failure, _this.failure) || other.failure == _this.failure)&&(identical(other.done, _this.done) || other.done == _this.done));
}


@override
int get hashCode {
  final _this = this as OnboardingState;
  return Object.hash(runtimeType,_this.busy,_this.preview,_this.failure,_this.done);
}

@override
String toString() {
  final _this = this as OnboardingState;
  return 'OnboardingState(busy: ${_this.busy}, preview: ${_this.preview}, failure: ${_this.failure}, done: ${_this.done})';
}


}

/// @nodoc
abstract mixin class $OnboardingStateCopyWith<$Res>  {
  factory $OnboardingStateCopyWith(OnboardingState value, $Res Function(OnboardingState) _then) = _$OnboardingStateCopyWithImpl;
@useResult
$Res call({
 bool busy, InvitePreview? preview, OnboardingFailure? failure, bool done
});


$InvitePreviewCopyWith<$Res>? get preview;

}
/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._self, this._then);

  final OnboardingState _self;
  final $Res Function(OnboardingState) _then;

/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? busy = null,Object? preview = freezed,Object? failure = freezed,Object? done = null,}) {
  return _then(OnboardingState(
busy: null == busy ? _self.busy : busy // ignore: cast_nullable_to_non_nullable
as bool,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as InvitePreview?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as OnboardingFailure?,done: null == done ? _self.done : done // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InvitePreviewCopyWith<$Res>? get preview {
    if (_self.preview == null) {
    return null;
  }

  return $InvitePreviewCopyWith<$Res>(_self.preview!, (value) {
    return _then(_self.copyWith(preview: value));
  });
}
}


/// Adds pattern-matching-related methods to [OnboardingState].
extension OnboardingStatePatterns on OnboardingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnboardingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnboardingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnboardingState value)  $default,){
final _that = this;
switch (_that) {
case _OnboardingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnboardingState value)?  $default,){
final _that = this;
switch (_that) {
case _OnboardingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool busy,  InvitePreview? preview,  OnboardingFailure? failure,  bool done)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnboardingState() when $default != null:
return $default(_that.busy,_that.preview,_that.failure,_that.done);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool busy,  InvitePreview? preview,  OnboardingFailure? failure,  bool done)  $default,) {final _that = this;
switch (_that) {
case _OnboardingState():
return $default(_that.busy,_that.preview,_that.failure,_that.done);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool busy,  InvitePreview? preview,  OnboardingFailure? failure,  bool done)?  $default,) {final _that = this;
switch (_that) {
case _OnboardingState() when $default != null:
return $default(_that.busy,_that.preview,_that.failure,_that.done);case _:
  return null;

}
}

}

/// @nodoc


class _OnboardingState implements OnboardingState {
  const _OnboardingState({this.busy = false, this.preview, this.failure, this.done = false});
  

@override@JsonKey() final  bool busy;
@override final  InvitePreview? preview;
@override final  OnboardingFailure? failure;
/// A membership now exists; the session reloads and routes onward.
@override@JsonKey() final  bool done;

/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingStateCopyWith<_OnboardingState> get copyWith => __$OnboardingStateCopyWithImpl<_OnboardingState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingState&&(identical(other.busy, busy) || other.busy == busy)&&(identical(other.preview, preview) || other.preview == preview)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.done, done) || other.done == done));
}


@override
int get hashCode {
    return Object.hash(runtimeType,busy,preview,failure,done);
}

@override
String toString() {
    return 'OnboardingState(busy: $busy, preview: $preview, failure: $failure, done: $done)';
}


}

/// @nodoc
abstract mixin class _$OnboardingStateCopyWith<$Res> implements $OnboardingStateCopyWith<$Res> {
  factory _$OnboardingStateCopyWith(_OnboardingState value, $Res Function(_OnboardingState) _then) = __$OnboardingStateCopyWithImpl;
@override @useResult
$Res call({
 bool busy, InvitePreview? preview, OnboardingFailure? failure, bool done
});


@override $InvitePreviewCopyWith<$Res>? get preview;

}
/// @nodoc
class __$OnboardingStateCopyWithImpl<$Res>
    implements _$OnboardingStateCopyWith<$Res> {
  __$OnboardingStateCopyWithImpl(this._self, this._then);

  final _OnboardingState _self;
  final $Res Function(_OnboardingState) _then;

/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? busy = null,Object? preview = freezed,Object? failure = freezed,Object? done = null,}) {
  return _then(_OnboardingState(
busy: null == busy ? _self.busy : busy // ignore: cast_nullable_to_non_nullable
as bool,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as InvitePreview?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as OnboardingFailure?,done: null == done ? _self.done : done // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InvitePreviewCopyWith<$Res>? get preview {
    if (_self.preview == null) {
    return null;
  }

  return $InvitePreviewCopyWith<$Res>(_self.preview!, (value) {
    return _then(_self.copyWith(preview: value));
  });
}
}

// dart format on
