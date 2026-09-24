// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthUser {

 String get id; String get email; String get firstName; String get lastName;
/// Create a copy of AuthUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthUserCopyWith<AuthUser> get copyWith => _$AuthUserCopyWithImpl<AuthUser>(this as AuthUser, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AuthUser;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthUser&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName));
}


@override
int get hashCode {
  final _this = this as AuthUser;
  return Object.hash(runtimeType,_this.id,_this.email,_this.firstName,_this.lastName);
}

@override
String toString() {
  final _this = this as AuthUser;
  return 'AuthUser(id: ${_this.id}, email: ${_this.email}, firstName: ${_this.firstName}, lastName: ${_this.lastName})';
}


}

/// @nodoc
abstract mixin class $AuthUserCopyWith<$Res>  {
  factory $AuthUserCopyWith(AuthUser value, $Res Function(AuthUser) _then) = _$AuthUserCopyWithImpl;
@useResult
$Res call({
 String id, String email, String firstName, String lastName
});




}
/// @nodoc
class _$AuthUserCopyWithImpl<$Res>
    implements $AuthUserCopyWith<$Res> {
  _$AuthUserCopyWithImpl(this._self, this._then);

  final AuthUser _self;
  final $Res Function(AuthUser) _then;

/// Create a copy of AuthUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? firstName = null,Object? lastName = null,}) {
  return _then(AuthUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthUser].
extension AuthUserPatterns on AuthUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthUser value)  $default,){
final _that = this;
switch (_that) {
case _AuthUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthUser value)?  $default,){
final _that = this;
switch (_that) {
case _AuthUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String firstName,  String lastName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthUser() when $default != null:
return $default(_that.id,_that.email,_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  String firstName,  String lastName)  $default,) {final _that = this;
switch (_that) {
case _AuthUser():
return $default(_that.id,_that.email,_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  String firstName,  String lastName)?  $default,) {final _that = this;
switch (_that) {
case _AuthUser() when $default != null:
return $default(_that.id,_that.email,_that.firstName,_that.lastName);case _:
  return null;

}
}

}

/// @nodoc


class _AuthUser extends AuthUser {
  const _AuthUser({required this.id, required this.email, required this.firstName, required this.lastName}): super._();
  

@override final  String id;
@override final  String email;
@override final  String firstName;
@override final  String lastName;

/// Create a copy of AuthUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthUserCopyWith<_AuthUser> get copyWith => __$AuthUserCopyWithImpl<_AuthUser>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthUser&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,email,firstName,lastName);
}

@override
String toString() {
    return 'AuthUser(id: $id, email: $email, firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class _$AuthUserCopyWith<$Res> implements $AuthUserCopyWith<$Res> {
  factory _$AuthUserCopyWith(_AuthUser value, $Res Function(_AuthUser) _then) = __$AuthUserCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String firstName, String lastName
});




}
/// @nodoc
class __$AuthUserCopyWithImpl<$Res>
    implements _$AuthUserCopyWith<$Res> {
  __$AuthUserCopyWithImpl(this._self, this._then);

  final _AuthUser _self;
  final $Res Function(_AuthUser) _then;

/// Create a copy of AuthUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? firstName = null,Object? lastName = null,}) {
  return _then(_AuthUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PendingVerification {

 String get attemptId; String get email;
/// Create a copy of PendingVerification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PendingVerificationCopyWith<PendingVerification> get copyWith => _$PendingVerificationCopyWithImpl<PendingVerification>(this as PendingVerification, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PendingVerification;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PendingVerification&&(identical(other.attemptId, _this.attemptId) || other.attemptId == _this.attemptId)&&(identical(other.email, _this.email) || other.email == _this.email));
}


@override
int get hashCode {
  final _this = this as PendingVerification;
  return Object.hash(runtimeType,_this.attemptId,_this.email);
}

@override
String toString() {
  final _this = this as PendingVerification;
  return 'PendingVerification(attemptId: ${_this.attemptId}, email: ${_this.email})';
}


}

/// @nodoc
abstract mixin class $PendingVerificationCopyWith<$Res>  {
  factory $PendingVerificationCopyWith(PendingVerification value, $Res Function(PendingVerification) _then) = _$PendingVerificationCopyWithImpl;
@useResult
$Res call({
 String attemptId, String email
});




}
/// @nodoc
class _$PendingVerificationCopyWithImpl<$Res>
    implements $PendingVerificationCopyWith<$Res> {
  _$PendingVerificationCopyWithImpl(this._self, this._then);

  final PendingVerification _self;
  final $Res Function(PendingVerification) _then;

/// Create a copy of PendingVerification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attemptId = null,Object? email = null,}) {
  return _then(_self.copyWith(
attemptId: null == attemptId ? _self.attemptId : attemptId // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PendingVerification].
extension PendingVerificationPatterns on PendingVerification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PendingSignIn value)?  signIn,TResult Function( PendingSignUp value)?  signUp,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PendingSignIn() when signIn != null:
return signIn(_that);case PendingSignUp() when signUp != null:
return signUp(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PendingSignIn value)  signIn,required TResult Function( PendingSignUp value)  signUp,}){
final _that = this;
switch (_that) {
case PendingSignIn():
return signIn(_that);case PendingSignUp():
return signUp(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PendingSignIn value)?  signIn,TResult? Function( PendingSignUp value)?  signUp,}){
final _that = this;
switch (_that) {
case PendingSignIn() when signIn != null:
return signIn(_that);case PendingSignUp() when signUp != null:
return signUp(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String attemptId,  String emailAddressId,  String email)?  signIn,TResult Function( String attemptId,  String email)?  signUp,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PendingSignIn() when signIn != null:
return signIn(_that.attemptId,_that.emailAddressId,_that.email);case PendingSignUp() when signUp != null:
return signUp(_that.attemptId,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String attemptId,  String emailAddressId,  String email)  signIn,required TResult Function( String attemptId,  String email)  signUp,}) {final _that = this;
switch (_that) {
case PendingSignIn():
return signIn(_that.attemptId,_that.emailAddressId,_that.email);case PendingSignUp():
return signUp(_that.attemptId,_that.email);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String attemptId,  String emailAddressId,  String email)?  signIn,TResult? Function( String attemptId,  String email)?  signUp,}) {final _that = this;
switch (_that) {
case PendingSignIn() when signIn != null:
return signIn(_that.attemptId,_that.emailAddressId,_that.email);case PendingSignUp() when signUp != null:
return signUp(_that.attemptId,_that.email);case _:
  return null;

}
}

}

/// @nodoc


class PendingSignIn implements PendingVerification {
  const PendingSignIn({required this.attemptId, required this.emailAddressId, required this.email});
  

@override final  String attemptId;
 final  String emailAddressId;
@override final  String email;

/// Create a copy of PendingVerification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PendingSignInCopyWith<PendingSignIn> get copyWith => _$PendingSignInCopyWithImpl<PendingSignIn>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PendingSignIn&&(identical(other.attemptId, attemptId) || other.attemptId == attemptId)&&(identical(other.emailAddressId, emailAddressId) || other.emailAddressId == emailAddressId)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode {
    return Object.hash(runtimeType,attemptId,emailAddressId,email);
}

@override
String toString() {
    return 'PendingVerification.signIn(attemptId: $attemptId, emailAddressId: $emailAddressId, email: $email)';
}


}

/// @nodoc
abstract mixin class $PendingSignInCopyWith<$Res> implements $PendingVerificationCopyWith<$Res> {
  factory $PendingSignInCopyWith(PendingSignIn value, $Res Function(PendingSignIn) _then) = _$PendingSignInCopyWithImpl;
@override @useResult
$Res call({
 String attemptId, String emailAddressId, String email
});




}
/// @nodoc
class _$PendingSignInCopyWithImpl<$Res>
    implements $PendingSignInCopyWith<$Res> {
  _$PendingSignInCopyWithImpl(this._self, this._then);

  final PendingSignIn _self;
  final $Res Function(PendingSignIn) _then;

/// Create a copy of PendingVerification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attemptId = null,Object? emailAddressId = null,Object? email = null,}) {
  return _then(PendingSignIn(
attemptId: null == attemptId ? _self.attemptId : attemptId // ignore: cast_nullable_to_non_nullable
as String,emailAddressId: null == emailAddressId ? _self.emailAddressId : emailAddressId // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PendingSignUp implements PendingVerification {
  const PendingSignUp({required this.attemptId, required this.email});
  

@override final  String attemptId;
@override final  String email;

/// Create a copy of PendingVerification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PendingSignUpCopyWith<PendingSignUp> get copyWith => _$PendingSignUpCopyWithImpl<PendingSignUp>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PendingSignUp&&(identical(other.attemptId, attemptId) || other.attemptId == attemptId)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode {
    return Object.hash(runtimeType,attemptId,email);
}

@override
String toString() {
    return 'PendingVerification.signUp(attemptId: $attemptId, email: $email)';
}


}

/// @nodoc
abstract mixin class $PendingSignUpCopyWith<$Res> implements $PendingVerificationCopyWith<$Res> {
  factory $PendingSignUpCopyWith(PendingSignUp value, $Res Function(PendingSignUp) _then) = _$PendingSignUpCopyWithImpl;
@override @useResult
$Res call({
 String attemptId, String email
});




}
/// @nodoc
class _$PendingSignUpCopyWithImpl<$Res>
    implements $PendingSignUpCopyWith<$Res> {
  _$PendingSignUpCopyWithImpl(this._self, this._then);

  final PendingSignUp _self;
  final $Res Function(PendingSignUp) _then;

/// Create a copy of PendingVerification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attemptId = null,Object? email = null,}) {
  return _then(PendingSignUp(
attemptId: null == attemptId ? _self.attemptId : attemptId // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
