// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_flow_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthFlowEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFlowEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthFlowEvent()';
}


}

/// @nodoc
class $AuthFlowEventCopyWith<$Res>  {
$AuthFlowEventCopyWith(AuthFlowEvent _, $Res Function(AuthFlowEvent) __);
}


/// Adds pattern-matching-related methods to [AuthFlowEvent].
extension AuthFlowEventPatterns on AuthFlowEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AuthEmailSubmitted value)?  emailSubmitted,TResult Function( AuthSignUpOpened value)?  signUpOpened,TResult Function( AuthSignUpSubmitted value)?  signUpSubmitted,TResult Function( AuthCodeSubmitted value)?  codeSubmitted,TResult Function( AuthResendRequested value)?  resendRequested,TResult Function( AuthBackToEmail value)?  backToEmail,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AuthEmailSubmitted() when emailSubmitted != null:
return emailSubmitted(_that);case AuthSignUpOpened() when signUpOpened != null:
return signUpOpened(_that);case AuthSignUpSubmitted() when signUpSubmitted != null:
return signUpSubmitted(_that);case AuthCodeSubmitted() when codeSubmitted != null:
return codeSubmitted(_that);case AuthResendRequested() when resendRequested != null:
return resendRequested(_that);case AuthBackToEmail() when backToEmail != null:
return backToEmail(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AuthEmailSubmitted value)  emailSubmitted,required TResult Function( AuthSignUpOpened value)  signUpOpened,required TResult Function( AuthSignUpSubmitted value)  signUpSubmitted,required TResult Function( AuthCodeSubmitted value)  codeSubmitted,required TResult Function( AuthResendRequested value)  resendRequested,required TResult Function( AuthBackToEmail value)  backToEmail,}){
final _that = this;
switch (_that) {
case AuthEmailSubmitted():
return emailSubmitted(_that);case AuthSignUpOpened():
return signUpOpened(_that);case AuthSignUpSubmitted():
return signUpSubmitted(_that);case AuthCodeSubmitted():
return codeSubmitted(_that);case AuthResendRequested():
return resendRequested(_that);case AuthBackToEmail():
return backToEmail(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AuthEmailSubmitted value)?  emailSubmitted,TResult? Function( AuthSignUpOpened value)?  signUpOpened,TResult? Function( AuthSignUpSubmitted value)?  signUpSubmitted,TResult? Function( AuthCodeSubmitted value)?  codeSubmitted,TResult? Function( AuthResendRequested value)?  resendRequested,TResult? Function( AuthBackToEmail value)?  backToEmail,}){
final _that = this;
switch (_that) {
case AuthEmailSubmitted() when emailSubmitted != null:
return emailSubmitted(_that);case AuthSignUpOpened() when signUpOpened != null:
return signUpOpened(_that);case AuthSignUpSubmitted() when signUpSubmitted != null:
return signUpSubmitted(_that);case AuthCodeSubmitted() when codeSubmitted != null:
return codeSubmitted(_that);case AuthResendRequested() when resendRequested != null:
return resendRequested(_that);case AuthBackToEmail() when backToEmail != null:
return backToEmail(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email)?  emailSubmitted,TResult Function()?  signUpOpened,TResult Function( String email,  String password,  String firstName,  String lastName)?  signUpSubmitted,TResult Function( String code)?  codeSubmitted,TResult Function()?  resendRequested,TResult Function()?  backToEmail,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AuthEmailSubmitted() when emailSubmitted != null:
return emailSubmitted(_that.email);case AuthSignUpOpened() when signUpOpened != null:
return signUpOpened();case AuthSignUpSubmitted() when signUpSubmitted != null:
return signUpSubmitted(_that.email,_that.password,_that.firstName,_that.lastName);case AuthCodeSubmitted() when codeSubmitted != null:
return codeSubmitted(_that.code);case AuthResendRequested() when resendRequested != null:
return resendRequested();case AuthBackToEmail() when backToEmail != null:
return backToEmail();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email)  emailSubmitted,required TResult Function()  signUpOpened,required TResult Function( String email,  String password,  String firstName,  String lastName)  signUpSubmitted,required TResult Function( String code)  codeSubmitted,required TResult Function()  resendRequested,required TResult Function()  backToEmail,}) {final _that = this;
switch (_that) {
case AuthEmailSubmitted():
return emailSubmitted(_that.email);case AuthSignUpOpened():
return signUpOpened();case AuthSignUpSubmitted():
return signUpSubmitted(_that.email,_that.password,_that.firstName,_that.lastName);case AuthCodeSubmitted():
return codeSubmitted(_that.code);case AuthResendRequested():
return resendRequested();case AuthBackToEmail():
return backToEmail();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email)?  emailSubmitted,TResult? Function()?  signUpOpened,TResult? Function( String email,  String password,  String firstName,  String lastName)?  signUpSubmitted,TResult? Function( String code)?  codeSubmitted,TResult? Function()?  resendRequested,TResult? Function()?  backToEmail,}) {final _that = this;
switch (_that) {
case AuthEmailSubmitted() when emailSubmitted != null:
return emailSubmitted(_that.email);case AuthSignUpOpened() when signUpOpened != null:
return signUpOpened();case AuthSignUpSubmitted() when signUpSubmitted != null:
return signUpSubmitted(_that.email,_that.password,_that.firstName,_that.lastName);case AuthCodeSubmitted() when codeSubmitted != null:
return codeSubmitted(_that.code);case AuthResendRequested() when resendRequested != null:
return resendRequested();case AuthBackToEmail() when backToEmail != null:
return backToEmail();case _:
  return null;

}
}

}

/// @nodoc


class AuthEmailSubmitted implements AuthFlowEvent {
  const AuthEmailSubmitted(this.email);
  

 final  String email;

/// Create a copy of AuthFlowEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthEmailSubmittedCopyWith<AuthEmailSubmitted> get copyWith => _$AuthEmailSubmittedCopyWithImpl<AuthEmailSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEmailSubmitted&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode {
    return Object.hash(runtimeType,email);
}

@override
String toString() {
    return 'AuthFlowEvent.emailSubmitted(email: $email)';
}


}

/// @nodoc
abstract mixin class $AuthEmailSubmittedCopyWith<$Res> implements $AuthFlowEventCopyWith<$Res> {
  factory $AuthEmailSubmittedCopyWith(AuthEmailSubmitted value, $Res Function(AuthEmailSubmitted) _then) = _$AuthEmailSubmittedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$AuthEmailSubmittedCopyWithImpl<$Res>
    implements $AuthEmailSubmittedCopyWith<$Res> {
  _$AuthEmailSubmittedCopyWithImpl(this._self, this._then);

  final AuthEmailSubmitted _self;
  final $Res Function(AuthEmailSubmitted) _then;

/// Create a copy of AuthFlowEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(AuthEmailSubmitted(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AuthSignUpOpened implements AuthFlowEvent {
  const AuthSignUpOpened();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSignUpOpened);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthFlowEvent.signUpOpened()';
}


}




/// @nodoc


class AuthSignUpSubmitted implements AuthFlowEvent {
  const AuthSignUpSubmitted({required this.email, required this.password, required this.firstName, required this.lastName});
  

 final  String email;
 final  String password;
 final  String firstName;
 final  String lastName;

/// Create a copy of AuthFlowEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthSignUpSubmittedCopyWith<AuthSignUpSubmitted> get copyWith => _$AuthSignUpSubmittedCopyWithImpl<AuthSignUpSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSignUpSubmitted&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}


@override
int get hashCode {
    return Object.hash(runtimeType,email,password,firstName,lastName);
}

@override
String toString() {
    return 'AuthFlowEvent.signUpSubmitted(email: $email, password: $password, firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class $AuthSignUpSubmittedCopyWith<$Res> implements $AuthFlowEventCopyWith<$Res> {
  factory $AuthSignUpSubmittedCopyWith(AuthSignUpSubmitted value, $Res Function(AuthSignUpSubmitted) _then) = _$AuthSignUpSubmittedCopyWithImpl;
@useResult
$Res call({
 String email, String password, String firstName, String lastName
});




}
/// @nodoc
class _$AuthSignUpSubmittedCopyWithImpl<$Res>
    implements $AuthSignUpSubmittedCopyWith<$Res> {
  _$AuthSignUpSubmittedCopyWithImpl(this._self, this._then);

  final AuthSignUpSubmitted _self;
  final $Res Function(AuthSignUpSubmitted) _then;

/// Create a copy of AuthFlowEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? firstName = null,Object? lastName = null,}) {
  return _then(AuthSignUpSubmitted(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AuthCodeSubmitted implements AuthFlowEvent {
  const AuthCodeSubmitted(this.code);
  

 final  String code;

/// Create a copy of AuthFlowEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthCodeSubmittedCopyWith<AuthCodeSubmitted> get copyWith => _$AuthCodeSubmittedCopyWithImpl<AuthCodeSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthCodeSubmitted&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'AuthFlowEvent.codeSubmitted(code: $code)';
}


}

/// @nodoc
abstract mixin class $AuthCodeSubmittedCopyWith<$Res> implements $AuthFlowEventCopyWith<$Res> {
  factory $AuthCodeSubmittedCopyWith(AuthCodeSubmitted value, $Res Function(AuthCodeSubmitted) _then) = _$AuthCodeSubmittedCopyWithImpl;
@useResult
$Res call({
 String code
});




}
/// @nodoc
class _$AuthCodeSubmittedCopyWithImpl<$Res>
    implements $AuthCodeSubmittedCopyWith<$Res> {
  _$AuthCodeSubmittedCopyWithImpl(this._self, this._then);

  final AuthCodeSubmitted _self;
  final $Res Function(AuthCodeSubmitted) _then;

/// Create a copy of AuthFlowEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(AuthCodeSubmitted(
null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AuthResendRequested implements AuthFlowEvent {
  const AuthResendRequested();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthResendRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthFlowEvent.resendRequested()';
}


}




/// @nodoc


class AuthBackToEmail implements AuthFlowEvent {
  const AuthBackToEmail();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthBackToEmail);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthFlowEvent.backToEmail()';
}


}




/// @nodoc
mixin _$AuthFlowState {

 AuthStep get step; String get email; bool get busy; PendingVerification? get pending; AuthFailure? get failure; bool get codeResent;/// Set once the code is accepted; the screen hands it to the session.
 AuthUser? get user;
/// Create a copy of AuthFlowState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthFlowStateCopyWith<AuthFlowState> get copyWith => _$AuthFlowStateCopyWithImpl<AuthFlowState>(this as AuthFlowState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AuthFlowState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFlowState&&(identical(other.step, _this.step) || other.step == _this.step)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.busy, _this.busy) || other.busy == _this.busy)&&(identical(other.pending, _this.pending) || other.pending == _this.pending)&&(identical(other.failure, _this.failure) || other.failure == _this.failure)&&(identical(other.codeResent, _this.codeResent) || other.codeResent == _this.codeResent)&&(identical(other.user, _this.user) || other.user == _this.user));
}


@override
int get hashCode {
  final _this = this as AuthFlowState;
  return Object.hash(runtimeType,_this.step,_this.email,_this.busy,_this.pending,_this.failure,_this.codeResent,_this.user);
}

@override
String toString() {
  final _this = this as AuthFlowState;
  return 'AuthFlowState(step: ${_this.step}, email: ${_this.email}, busy: ${_this.busy}, pending: ${_this.pending}, failure: ${_this.failure}, codeResent: ${_this.codeResent}, user: ${_this.user})';
}


}

/// @nodoc
abstract mixin class $AuthFlowStateCopyWith<$Res>  {
  factory $AuthFlowStateCopyWith(AuthFlowState value, $Res Function(AuthFlowState) _then) = _$AuthFlowStateCopyWithImpl;
@useResult
$Res call({
 AuthStep step, String email, bool busy, PendingVerification? pending, AuthFailure? failure, bool codeResent, AuthUser? user
});


$PendingVerificationCopyWith<$Res>? get pending;$AuthUserCopyWith<$Res>? get user;

}
/// @nodoc
class _$AuthFlowStateCopyWithImpl<$Res>
    implements $AuthFlowStateCopyWith<$Res> {
  _$AuthFlowStateCopyWithImpl(this._self, this._then);

  final AuthFlowState _self;
  final $Res Function(AuthFlowState) _then;

/// Create a copy of AuthFlowState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? step = null,Object? email = null,Object? busy = null,Object? pending = freezed,Object? failure = freezed,Object? codeResent = null,Object? user = freezed,}) {
  return _then(AuthFlowState(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as AuthStep,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,busy: null == busy ? _self.busy : busy // ignore: cast_nullable_to_non_nullable
as bool,pending: freezed == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as PendingVerification?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AuthFailure?,codeResent: null == codeResent ? _self.codeResent : codeResent // ignore: cast_nullable_to_non_nullable
as bool,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AuthUser?,
  ));
}
/// Create a copy of AuthFlowState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PendingVerificationCopyWith<$Res>? get pending {
    if (_self.pending == null) {
    return null;
  }

  return $PendingVerificationCopyWith<$Res>(_self.pending!, (value) {
    return _then(_self.copyWith(pending: value));
  });
}/// Create a copy of AuthFlowState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthUserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $AuthUserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthFlowState].
extension AuthFlowStatePatterns on AuthFlowState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthFlowState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthFlowState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthFlowState value)  $default,){
final _that = this;
switch (_that) {
case _AuthFlowState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthFlowState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthFlowState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuthStep step,  String email,  bool busy,  PendingVerification? pending,  AuthFailure? failure,  bool codeResent,  AuthUser? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthFlowState() when $default != null:
return $default(_that.step,_that.email,_that.busy,_that.pending,_that.failure,_that.codeResent,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuthStep step,  String email,  bool busy,  PendingVerification? pending,  AuthFailure? failure,  bool codeResent,  AuthUser? user)  $default,) {final _that = this;
switch (_that) {
case _AuthFlowState():
return $default(_that.step,_that.email,_that.busy,_that.pending,_that.failure,_that.codeResent,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuthStep step,  String email,  bool busy,  PendingVerification? pending,  AuthFailure? failure,  bool codeResent,  AuthUser? user)?  $default,) {final _that = this;
switch (_that) {
case _AuthFlowState() when $default != null:
return $default(_that.step,_that.email,_that.busy,_that.pending,_that.failure,_that.codeResent,_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _AuthFlowState implements AuthFlowState {
  const _AuthFlowState({this.step = AuthStep.email, this.email = '', this.busy = false, this.pending, this.failure, this.codeResent = false, this.user});
  

@override@JsonKey() final  AuthStep step;
@override@JsonKey() final  String email;
@override@JsonKey() final  bool busy;
@override final  PendingVerification? pending;
@override final  AuthFailure? failure;
@override@JsonKey() final  bool codeResent;
/// Set once the code is accepted; the screen hands it to the session.
@override final  AuthUser? user;

/// Create a copy of AuthFlowState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthFlowStateCopyWith<_AuthFlowState> get copyWith => __$AuthFlowStateCopyWithImpl<_AuthFlowState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthFlowState&&(identical(other.step, step) || other.step == step)&&(identical(other.email, email) || other.email == email)&&(identical(other.busy, busy) || other.busy == busy)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.codeResent, codeResent) || other.codeResent == codeResent)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode {
    return Object.hash(runtimeType,step,email,busy,pending,failure,codeResent,user);
}

@override
String toString() {
    return 'AuthFlowState(step: $step, email: $email, busy: $busy, pending: $pending, failure: $failure, codeResent: $codeResent, user: $user)';
}


}

/// @nodoc
abstract mixin class _$AuthFlowStateCopyWith<$Res> implements $AuthFlowStateCopyWith<$Res> {
  factory _$AuthFlowStateCopyWith(_AuthFlowState value, $Res Function(_AuthFlowState) _then) = __$AuthFlowStateCopyWithImpl;
@override @useResult
$Res call({
 AuthStep step, String email, bool busy, PendingVerification? pending, AuthFailure? failure, bool codeResent, AuthUser? user
});


@override $PendingVerificationCopyWith<$Res>? get pending;@override $AuthUserCopyWith<$Res>? get user;

}
/// @nodoc
class __$AuthFlowStateCopyWithImpl<$Res>
    implements _$AuthFlowStateCopyWith<$Res> {
  __$AuthFlowStateCopyWithImpl(this._self, this._then);

  final _AuthFlowState _self;
  final $Res Function(_AuthFlowState) _then;

/// Create a copy of AuthFlowState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? step = null,Object? email = null,Object? busy = null,Object? pending = freezed,Object? failure = freezed,Object? codeResent = null,Object? user = freezed,}) {
  return _then(_AuthFlowState(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as AuthStep,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,busy: null == busy ? _self.busy : busy // ignore: cast_nullable_to_non_nullable
as bool,pending: freezed == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as PendingVerification?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AuthFailure?,codeResent: null == codeResent ? _self.codeResent : codeResent // ignore: cast_nullable_to_non_nullable
as bool,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AuthUser?,
  ));
}

/// Create a copy of AuthFlowState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PendingVerificationCopyWith<$Res>? get pending {
    if (_self.pending == null) {
    return null;
  }

  return $PendingVerificationCopyWith<$Res>(_self.pending!, (value) {
    return _then(_self.copyWith(pending: value));
  });
}/// Create a copy of AuthFlowState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthUserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $AuthUserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
