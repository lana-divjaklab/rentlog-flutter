// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoadState<T> {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'LoadState<$T>()';
}


}

/// @nodoc
class $LoadStateCopyWith<T,$Res>  {
$LoadStateCopyWith(LoadState<T> _, $Res Function(LoadState<T>) __);
}


/// Adds pattern-matching-related methods to [LoadState].
extension LoadStatePatterns<T> on LoadState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadInProgress<T> value)?  loading,TResult Function( LoadSuccess<T> value)?  success,TResult Function( LoadFailure<T> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadInProgress() when loading != null:
return loading(_that);case LoadSuccess() when success != null:
return success(_that);case LoadFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadInProgress<T> value)  loading,required TResult Function( LoadSuccess<T> value)  success,required TResult Function( LoadFailure<T> value)  failure,}){
final _that = this;
switch (_that) {
case LoadInProgress():
return loading(_that);case LoadSuccess():
return success(_that);case LoadFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadInProgress<T> value)?  loading,TResult? Function( LoadSuccess<T> value)?  success,TResult? Function( LoadFailure<T> value)?  failure,}){
final _that = this;
switch (_that) {
case LoadInProgress() when loading != null:
return loading(_that);case LoadSuccess() when success != null:
return success(_that);case LoadFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( T data,  bool refreshing)?  success,TResult Function( Object error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadInProgress() when loading != null:
return loading();case LoadSuccess() when success != null:
return success(_that.data,_that.refreshing);case LoadFailure() when failure != null:
return failure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( T data,  bool refreshing)  success,required TResult Function( Object error)  failure,}) {final _that = this;
switch (_that) {
case LoadInProgress():
return loading();case LoadSuccess():
return success(_that.data,_that.refreshing);case LoadFailure():
return failure(_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( T data,  bool refreshing)?  success,TResult? Function( Object error)?  failure,}) {final _that = this;
switch (_that) {
case LoadInProgress() when loading != null:
return loading();case LoadSuccess() when success != null:
return success(_that.data,_that.refreshing);case LoadFailure() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class LoadInProgress<T> implements LoadState<T> {
  const LoadInProgress();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadInProgress<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'LoadState<$T>.loading()';
}


}




/// @nodoc


class LoadSuccess<T> implements LoadState<T> {
  const LoadSuccess(this.data, {this.refreshing = false});
  

 final  T data;
@JsonKey() final  bool refreshing;

/// Create a copy of LoadState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadSuccessCopyWith<T, LoadSuccess<T>> get copyWith => _$LoadSuccessCopyWithImpl<T, LoadSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadSuccess<T>&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.refreshing, refreshing) || other.refreshing == refreshing));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(data),refreshing);
}

@override
String toString() {
    return 'LoadState<$T>.success(data: $data, refreshing: $refreshing)';
}


}

/// @nodoc
abstract mixin class $LoadSuccessCopyWith<T,$Res> implements $LoadStateCopyWith<T, $Res> {
  factory $LoadSuccessCopyWith(LoadSuccess<T> value, $Res Function(LoadSuccess<T>) _then) = _$LoadSuccessCopyWithImpl;
@useResult
$Res call({
 T data, bool refreshing
});




}
/// @nodoc
class _$LoadSuccessCopyWithImpl<T,$Res>
    implements $LoadSuccessCopyWith<T, $Res> {
  _$LoadSuccessCopyWithImpl(this._self, this._then);

  final LoadSuccess<T> _self;
  final $Res Function(LoadSuccess<T>) _then;

/// Create a copy of LoadState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? refreshing = null,}) {
  return _then(LoadSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,refreshing: null == refreshing ? _self.refreshing : refreshing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class LoadFailure<T> implements LoadState<T> {
  const LoadFailure(this.error);
  

 final  Object error;

/// Create a copy of LoadState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadFailureCopyWith<T, LoadFailure<T>> get copyWith => _$LoadFailureCopyWithImpl<T, LoadFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadFailure<T>&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(error));
}

@override
String toString() {
    return 'LoadState<$T>.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $LoadFailureCopyWith<T,$Res> implements $LoadStateCopyWith<T, $Res> {
  factory $LoadFailureCopyWith(LoadFailure<T> value, $Res Function(LoadFailure<T>) _then) = _$LoadFailureCopyWithImpl;
@useResult
$Res call({
 Object error
});




}
/// @nodoc
class _$LoadFailureCopyWithImpl<T,$Res>
    implements $LoadFailureCopyWith<T, $Res> {
  _$LoadFailureCopyWithImpl(this._self, this._then);

  final LoadFailure<T> _self;
  final $Res Function(LoadFailure<T>) _then;

/// Create a copy of LoadState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(LoadFailure<T>(
null == error ? _self.error : error ,
  ));
}


}

// dart format on
