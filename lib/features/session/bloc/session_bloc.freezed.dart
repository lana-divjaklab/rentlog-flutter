// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SessionEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SessionEvent()';
}


}

/// @nodoc
class $SessionEventCopyWith<$Res>  {
$SessionEventCopyWith(SessionEvent _, $Res Function(SessionEvent) __);
}


/// Adds pattern-matching-related methods to [SessionEvent].
extension SessionEventPatterns on SessionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SessionStarted value)?  started,TResult Function( SessionSignedIn value)?  signedIn,TResult Function( SessionMembershipsChanged value)?  membershipsChanged,TResult Function( SessionRoleSwitched value)?  roleSwitched,TResult Function( SessionSignOutRequested value)?  signOutRequested,TResult Function( SessionExpiredEvent value)?  expired,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SessionStarted() when started != null:
return started(_that);case SessionSignedIn() when signedIn != null:
return signedIn(_that);case SessionMembershipsChanged() when membershipsChanged != null:
return membershipsChanged(_that);case SessionRoleSwitched() when roleSwitched != null:
return roleSwitched(_that);case SessionSignOutRequested() when signOutRequested != null:
return signOutRequested(_that);case SessionExpiredEvent() when expired != null:
return expired(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SessionStarted value)  started,required TResult Function( SessionSignedIn value)  signedIn,required TResult Function( SessionMembershipsChanged value)  membershipsChanged,required TResult Function( SessionRoleSwitched value)  roleSwitched,required TResult Function( SessionSignOutRequested value)  signOutRequested,required TResult Function( SessionExpiredEvent value)  expired,}){
final _that = this;
switch (_that) {
case SessionStarted():
return started(_that);case SessionSignedIn():
return signedIn(_that);case SessionMembershipsChanged():
return membershipsChanged(_that);case SessionRoleSwitched():
return roleSwitched(_that);case SessionSignOutRequested():
return signOutRequested(_that);case SessionExpiredEvent():
return expired(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SessionStarted value)?  started,TResult? Function( SessionSignedIn value)?  signedIn,TResult? Function( SessionMembershipsChanged value)?  membershipsChanged,TResult? Function( SessionRoleSwitched value)?  roleSwitched,TResult? Function( SessionSignOutRequested value)?  signOutRequested,TResult? Function( SessionExpiredEvent value)?  expired,}){
final _that = this;
switch (_that) {
case SessionStarted() when started != null:
return started(_that);case SessionSignedIn() when signedIn != null:
return signedIn(_that);case SessionMembershipsChanged() when membershipsChanged != null:
return membershipsChanged(_that);case SessionRoleSwitched() when roleSwitched != null:
return roleSwitched(_that);case SessionSignOutRequested() when signOutRequested != null:
return signOutRequested(_that);case SessionExpiredEvent() when expired != null:
return expired(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( AuthUser user)?  signedIn,TResult Function()?  membershipsChanged,TResult Function( AppRole role)?  roleSwitched,TResult Function()?  signOutRequested,TResult Function()?  expired,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SessionStarted() when started != null:
return started();case SessionSignedIn() when signedIn != null:
return signedIn(_that.user);case SessionMembershipsChanged() when membershipsChanged != null:
return membershipsChanged();case SessionRoleSwitched() when roleSwitched != null:
return roleSwitched(_that.role);case SessionSignOutRequested() when signOutRequested != null:
return signOutRequested();case SessionExpiredEvent() when expired != null:
return expired();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( AuthUser user)  signedIn,required TResult Function()  membershipsChanged,required TResult Function( AppRole role)  roleSwitched,required TResult Function()  signOutRequested,required TResult Function()  expired,}) {final _that = this;
switch (_that) {
case SessionStarted():
return started();case SessionSignedIn():
return signedIn(_that.user);case SessionMembershipsChanged():
return membershipsChanged();case SessionRoleSwitched():
return roleSwitched(_that.role);case SessionSignOutRequested():
return signOutRequested();case SessionExpiredEvent():
return expired();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( AuthUser user)?  signedIn,TResult? Function()?  membershipsChanged,TResult? Function( AppRole role)?  roleSwitched,TResult? Function()?  signOutRequested,TResult? Function()?  expired,}) {final _that = this;
switch (_that) {
case SessionStarted() when started != null:
return started();case SessionSignedIn() when signedIn != null:
return signedIn(_that.user);case SessionMembershipsChanged() when membershipsChanged != null:
return membershipsChanged();case SessionRoleSwitched() when roleSwitched != null:
return roleSwitched(_that.role);case SessionSignOutRequested() when signOutRequested != null:
return signOutRequested();case SessionExpiredEvent() when expired != null:
return expired();case _:
  return null;

}
}

}

/// @nodoc


class SessionStarted implements SessionEvent {
  const SessionStarted();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SessionEvent.started()';
}


}




/// @nodoc


class SessionSignedIn implements SessionEvent {
  const SessionSignedIn(this.user);
  

 final  AuthUser user;

/// Create a copy of SessionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionSignedInCopyWith<SessionSignedIn> get copyWith => _$SessionSignedInCopyWithImpl<SessionSignedIn>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionSignedIn&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode {
    return Object.hash(runtimeType,user);
}

@override
String toString() {
    return 'SessionEvent.signedIn(user: $user)';
}


}

/// @nodoc
abstract mixin class $SessionSignedInCopyWith<$Res> implements $SessionEventCopyWith<$Res> {
  factory $SessionSignedInCopyWith(SessionSignedIn value, $Res Function(SessionSignedIn) _then) = _$SessionSignedInCopyWithImpl;
@useResult
$Res call({
 AuthUser user
});


$AuthUserCopyWith<$Res> get user;

}
/// @nodoc
class _$SessionSignedInCopyWithImpl<$Res>
    implements $SessionSignedInCopyWith<$Res> {
  _$SessionSignedInCopyWithImpl(this._self, this._then);

  final SessionSignedIn _self;
  final $Res Function(SessionSignedIn) _then;

/// Create a copy of SessionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(SessionSignedIn(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AuthUser,
  ));
}

/// Create a copy of SessionEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthUserCopyWith<$Res> get user {
  
  return $AuthUserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class SessionMembershipsChanged implements SessionEvent {
  const SessionMembershipsChanged();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionMembershipsChanged);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SessionEvent.membershipsChanged()';
}


}




/// @nodoc


class SessionRoleSwitched implements SessionEvent {
  const SessionRoleSwitched(this.role);
  

 final  AppRole role;

/// Create a copy of SessionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionRoleSwitchedCopyWith<SessionRoleSwitched> get copyWith => _$SessionRoleSwitchedCopyWithImpl<SessionRoleSwitched>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionRoleSwitched&&(identical(other.role, role) || other.role == role));
}


@override
int get hashCode {
    return Object.hash(runtimeType,role);
}

@override
String toString() {
    return 'SessionEvent.roleSwitched(role: $role)';
}


}

/// @nodoc
abstract mixin class $SessionRoleSwitchedCopyWith<$Res> implements $SessionEventCopyWith<$Res> {
  factory $SessionRoleSwitchedCopyWith(SessionRoleSwitched value, $Res Function(SessionRoleSwitched) _then) = _$SessionRoleSwitchedCopyWithImpl;
@useResult
$Res call({
 AppRole role
});




}
/// @nodoc
class _$SessionRoleSwitchedCopyWithImpl<$Res>
    implements $SessionRoleSwitchedCopyWith<$Res> {
  _$SessionRoleSwitchedCopyWithImpl(this._self, this._then);

  final SessionRoleSwitched _self;
  final $Res Function(SessionRoleSwitched) _then;

/// Create a copy of SessionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? role = null,}) {
  return _then(SessionRoleSwitched(
null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as AppRole,
  ));
}


}

/// @nodoc


class SessionSignOutRequested implements SessionEvent {
  const SessionSignOutRequested();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionSignOutRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SessionEvent.signOutRequested()';
}


}




/// @nodoc


class SessionExpiredEvent implements SessionEvent {
  const SessionExpiredEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionExpiredEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SessionEvent.expired()';
}


}




/// @nodoc
mixin _$SessionState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SessionState()';
}


}

/// @nodoc
class $SessionStateCopyWith<$Res>  {
$SessionStateCopyWith(SessionState _, $Res Function(SessionState) __);
}


/// Adds pattern-matching-related methods to [SessionState].
extension SessionStatePatterns on SessionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SessionStarting value)?  starting,TResult Function( SessionSignedOut value)?  signedOut,TResult Function( SessionOnboarding value)?  onboarding,TResult Function( SessionReady value)?  ready,TResult Function( SessionUnavailable value)?  unavailable,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SessionStarting() when starting != null:
return starting(_that);case SessionSignedOut() when signedOut != null:
return signedOut(_that);case SessionOnboarding() when onboarding != null:
return onboarding(_that);case SessionReady() when ready != null:
return ready(_that);case SessionUnavailable() when unavailable != null:
return unavailable(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SessionStarting value)  starting,required TResult Function( SessionSignedOut value)  signedOut,required TResult Function( SessionOnboarding value)  onboarding,required TResult Function( SessionReady value)  ready,required TResult Function( SessionUnavailable value)  unavailable,}){
final _that = this;
switch (_that) {
case SessionStarting():
return starting(_that);case SessionSignedOut():
return signedOut(_that);case SessionOnboarding():
return onboarding(_that);case SessionReady():
return ready(_that);case SessionUnavailable():
return unavailable(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SessionStarting value)?  starting,TResult? Function( SessionSignedOut value)?  signedOut,TResult? Function( SessionOnboarding value)?  onboarding,TResult? Function( SessionReady value)?  ready,TResult? Function( SessionUnavailable value)?  unavailable,}){
final _that = this;
switch (_that) {
case SessionStarting() when starting != null:
return starting(_that);case SessionSignedOut() when signedOut != null:
return signedOut(_that);case SessionOnboarding() when onboarding != null:
return onboarding(_that);case SessionReady() when ready != null:
return ready(_that);case SessionUnavailable() when unavailable != null:
return unavailable(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  starting,TResult Function( bool expired)?  signedOut,TResult Function( AuthUser user)?  onboarding,TResult Function( AuthUser user,  AppRole role,  Membership? landlordOrg,  bool canSwitchRole)?  ready,TResult Function( Object error)?  unavailable,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SessionStarting() when starting != null:
return starting();case SessionSignedOut() when signedOut != null:
return signedOut(_that.expired);case SessionOnboarding() when onboarding != null:
return onboarding(_that.user);case SessionReady() when ready != null:
return ready(_that.user,_that.role,_that.landlordOrg,_that.canSwitchRole);case SessionUnavailable() when unavailable != null:
return unavailable(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  starting,required TResult Function( bool expired)  signedOut,required TResult Function( AuthUser user)  onboarding,required TResult Function( AuthUser user,  AppRole role,  Membership? landlordOrg,  bool canSwitchRole)  ready,required TResult Function( Object error)  unavailable,}) {final _that = this;
switch (_that) {
case SessionStarting():
return starting();case SessionSignedOut():
return signedOut(_that.expired);case SessionOnboarding():
return onboarding(_that.user);case SessionReady():
return ready(_that.user,_that.role,_that.landlordOrg,_that.canSwitchRole);case SessionUnavailable():
return unavailable(_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  starting,TResult? Function( bool expired)?  signedOut,TResult? Function( AuthUser user)?  onboarding,TResult? Function( AuthUser user,  AppRole role,  Membership? landlordOrg,  bool canSwitchRole)?  ready,TResult? Function( Object error)?  unavailable,}) {final _that = this;
switch (_that) {
case SessionStarting() when starting != null:
return starting();case SessionSignedOut() when signedOut != null:
return signedOut(_that.expired);case SessionOnboarding() when onboarding != null:
return onboarding(_that.user);case SessionReady() when ready != null:
return ready(_that.user,_that.role,_that.landlordOrg,_that.canSwitchRole);case SessionUnavailable() when unavailable != null:
return unavailable(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class SessionStarting implements SessionState {
  const SessionStarting();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionStarting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SessionState.starting()';
}


}




/// @nodoc


class SessionSignedOut implements SessionState {
  const SessionSignedOut({this.expired = false});
  

@JsonKey() final  bool expired;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionSignedOutCopyWith<SessionSignedOut> get copyWith => _$SessionSignedOutCopyWithImpl<SessionSignedOut>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionSignedOut&&(identical(other.expired, expired) || other.expired == expired));
}


@override
int get hashCode {
    return Object.hash(runtimeType,expired);
}

@override
String toString() {
    return 'SessionState.signedOut(expired: $expired)';
}


}

/// @nodoc
abstract mixin class $SessionSignedOutCopyWith<$Res> implements $SessionStateCopyWith<$Res> {
  factory $SessionSignedOutCopyWith(SessionSignedOut value, $Res Function(SessionSignedOut) _then) = _$SessionSignedOutCopyWithImpl;
@useResult
$Res call({
 bool expired
});




}
/// @nodoc
class _$SessionSignedOutCopyWithImpl<$Res>
    implements $SessionSignedOutCopyWith<$Res> {
  _$SessionSignedOutCopyWithImpl(this._self, this._then);

  final SessionSignedOut _self;
  final $Res Function(SessionSignedOut) _then;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? expired = null,}) {
  return _then(SessionSignedOut(
expired: null == expired ? _self.expired : expired // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class SessionOnboarding implements SessionState {
  const SessionOnboarding({required this.user});
  

 final  AuthUser user;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionOnboardingCopyWith<SessionOnboarding> get copyWith => _$SessionOnboardingCopyWithImpl<SessionOnboarding>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionOnboarding&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode {
    return Object.hash(runtimeType,user);
}

@override
String toString() {
    return 'SessionState.onboarding(user: $user)';
}


}

/// @nodoc
abstract mixin class $SessionOnboardingCopyWith<$Res> implements $SessionStateCopyWith<$Res> {
  factory $SessionOnboardingCopyWith(SessionOnboarding value, $Res Function(SessionOnboarding) _then) = _$SessionOnboardingCopyWithImpl;
@useResult
$Res call({
 AuthUser user
});


$AuthUserCopyWith<$Res> get user;

}
/// @nodoc
class _$SessionOnboardingCopyWithImpl<$Res>
    implements $SessionOnboardingCopyWith<$Res> {
  _$SessionOnboardingCopyWithImpl(this._self, this._then);

  final SessionOnboarding _self;
  final $Res Function(SessionOnboarding) _then;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(SessionOnboarding(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AuthUser,
  ));
}

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthUserCopyWith<$Res> get user {
  
  return $AuthUserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class SessionReady implements SessionState {
  const SessionReady({required this.user, required this.role, this.landlordOrg, required this.canSwitchRole});
  

 final  AuthUser user;
 final  AppRole role;
/// The org landlord screens work in; null for tenant-only users.
 final  Membership? landlordOrg;
 final  bool canSwitchRole;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionReadyCopyWith<SessionReady> get copyWith => _$SessionReadyCopyWithImpl<SessionReady>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionReady&&(identical(other.user, user) || other.user == user)&&(identical(other.role, role) || other.role == role)&&(identical(other.landlordOrg, landlordOrg) || other.landlordOrg == landlordOrg)&&(identical(other.canSwitchRole, canSwitchRole) || other.canSwitchRole == canSwitchRole));
}


@override
int get hashCode {
    return Object.hash(runtimeType,user,role,landlordOrg,canSwitchRole);
}

@override
String toString() {
    return 'SessionState.ready(user: $user, role: $role, landlordOrg: $landlordOrg, canSwitchRole: $canSwitchRole)';
}


}

/// @nodoc
abstract mixin class $SessionReadyCopyWith<$Res> implements $SessionStateCopyWith<$Res> {
  factory $SessionReadyCopyWith(SessionReady value, $Res Function(SessionReady) _then) = _$SessionReadyCopyWithImpl;
@useResult
$Res call({
 AuthUser user, AppRole role, Membership? landlordOrg, bool canSwitchRole
});


$AuthUserCopyWith<$Res> get user;$MembershipCopyWith<$Res>? get landlordOrg;

}
/// @nodoc
class _$SessionReadyCopyWithImpl<$Res>
    implements $SessionReadyCopyWith<$Res> {
  _$SessionReadyCopyWithImpl(this._self, this._then);

  final SessionReady _self;
  final $Res Function(SessionReady) _then;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,Object? role = null,Object? landlordOrg = freezed,Object? canSwitchRole = null,}) {
  return _then(SessionReady(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AuthUser,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as AppRole,landlordOrg: freezed == landlordOrg ? _self.landlordOrg : landlordOrg // ignore: cast_nullable_to_non_nullable
as Membership?,canSwitchRole: null == canSwitchRole ? _self.canSwitchRole : canSwitchRole // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthUserCopyWith<$Res> get user {
  
  return $AuthUserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MembershipCopyWith<$Res>? get landlordOrg {
    if (_self.landlordOrg == null) {
    return null;
  }

  return $MembershipCopyWith<$Res>(_self.landlordOrg!, (value) {
    return _then(_self.copyWith(landlordOrg: value));
  });
}
}

/// @nodoc


class SessionUnavailable implements SessionState {
  const SessionUnavailable({required this.error});
  

 final  Object error;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionUnavailableCopyWith<SessionUnavailable> get copyWith => _$SessionUnavailableCopyWithImpl<SessionUnavailable>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionUnavailable&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(error));
}

@override
String toString() {
    return 'SessionState.unavailable(error: $error)';
}


}

/// @nodoc
abstract mixin class $SessionUnavailableCopyWith<$Res> implements $SessionStateCopyWith<$Res> {
  factory $SessionUnavailableCopyWith(SessionUnavailable value, $Res Function(SessionUnavailable) _then) = _$SessionUnavailableCopyWithImpl;
@useResult
$Res call({
 Object error
});




}
/// @nodoc
class _$SessionUnavailableCopyWithImpl<$Res>
    implements $SessionUnavailableCopyWith<$Res> {
  _$SessionUnavailableCopyWithImpl(this._self, this._then);

  final SessionUnavailable _self;
  final $Res Function(SessionUnavailable) _then;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SessionUnavailable(
error: null == error ? _self.error : error ,
  ));
}


}

// dart format on
