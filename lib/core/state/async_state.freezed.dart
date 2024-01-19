// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'async_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AsyncState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AsyncStateInitial<T> value) initial,
    required TResult Function(_AsyncStateLoading<T> value) loading,
    required TResult Function(_AsyncStateSuccess<T> value) success,
    required TResult Function(_AsyncStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AsyncStateInitial<T> value)? initial,
    TResult? Function(_AsyncStateLoading<T> value)? loading,
    TResult? Function(_AsyncStateSuccess<T> value)? success,
    TResult? Function(_AsyncStateError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AsyncStateInitial<T> value)? initial,
    TResult Function(_AsyncStateLoading<T> value)? loading,
    TResult Function(_AsyncStateSuccess<T> value)? success,
    TResult Function(_AsyncStateError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncStateCopyWith<T, $Res> {
  factory $AsyncStateCopyWith(
          AsyncState<T> value, $Res Function(AsyncState<T>) then) =
      _$AsyncStateCopyWithImpl<T, $Res, AsyncState<T>>;
}

/// @nodoc
class _$AsyncStateCopyWithImpl<T, $Res, $Val extends AsyncState<T>>
    implements $AsyncStateCopyWith<T, $Res> {
  _$AsyncStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AsyncStateInitialImplCopyWith<T, $Res> {
  factory _$$AsyncStateInitialImplCopyWith(_$AsyncStateInitialImpl<T> value,
          $Res Function(_$AsyncStateInitialImpl<T>) then) =
      __$$AsyncStateInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AsyncStateInitialImplCopyWithImpl<T, $Res>
    extends _$AsyncStateCopyWithImpl<T, $Res, _$AsyncStateInitialImpl<T>>
    implements _$$AsyncStateInitialImplCopyWith<T, $Res> {
  __$$AsyncStateInitialImplCopyWithImpl(_$AsyncStateInitialImpl<T> _value,
      $Res Function(_$AsyncStateInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AsyncStateInitialImpl<T> extends _AsyncStateInitial<T> {
  const _$AsyncStateInitialImpl() : super._();

  @override
  String toString() {
    return 'AsyncState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncStateInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AsyncStateInitial<T> value) initial,
    required TResult Function(_AsyncStateLoading<T> value) loading,
    required TResult Function(_AsyncStateSuccess<T> value) success,
    required TResult Function(_AsyncStateError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AsyncStateInitial<T> value)? initial,
    TResult? Function(_AsyncStateLoading<T> value)? loading,
    TResult? Function(_AsyncStateSuccess<T> value)? success,
    TResult? Function(_AsyncStateError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AsyncStateInitial<T> value)? initial,
    TResult Function(_AsyncStateLoading<T> value)? loading,
    TResult Function(_AsyncStateSuccess<T> value)? success,
    TResult Function(_AsyncStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AsyncStateInitial<T> extends AsyncState<T> {
  const factory _AsyncStateInitial() = _$AsyncStateInitialImpl<T>;
  const _AsyncStateInitial._() : super._();
}

/// @nodoc
abstract class _$$AsyncStateLoadingImplCopyWith<T, $Res> {
  factory _$$AsyncStateLoadingImplCopyWith(_$AsyncStateLoadingImpl<T> value,
          $Res Function(_$AsyncStateLoadingImpl<T>) then) =
      __$$AsyncStateLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AsyncStateLoadingImplCopyWithImpl<T, $Res>
    extends _$AsyncStateCopyWithImpl<T, $Res, _$AsyncStateLoadingImpl<T>>
    implements _$$AsyncStateLoadingImplCopyWith<T, $Res> {
  __$$AsyncStateLoadingImplCopyWithImpl(_$AsyncStateLoadingImpl<T> _value,
      $Res Function(_$AsyncStateLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AsyncStateLoadingImpl<T> extends _AsyncStateLoading<T> {
  const _$AsyncStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'AsyncState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncStateLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AsyncStateInitial<T> value) initial,
    required TResult Function(_AsyncStateLoading<T> value) loading,
    required TResult Function(_AsyncStateSuccess<T> value) success,
    required TResult Function(_AsyncStateError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AsyncStateInitial<T> value)? initial,
    TResult? Function(_AsyncStateLoading<T> value)? loading,
    TResult? Function(_AsyncStateSuccess<T> value)? success,
    TResult? Function(_AsyncStateError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AsyncStateInitial<T> value)? initial,
    TResult Function(_AsyncStateLoading<T> value)? loading,
    TResult Function(_AsyncStateSuccess<T> value)? success,
    TResult Function(_AsyncStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AsyncStateLoading<T> extends AsyncState<T> {
  const factory _AsyncStateLoading() = _$AsyncStateLoadingImpl<T>;
  const _AsyncStateLoading._() : super._();
}

/// @nodoc
abstract class _$$AsyncStateSuccessImplCopyWith<T, $Res> {
  factory _$$AsyncStateSuccessImplCopyWith(_$AsyncStateSuccessImpl<T> value,
          $Res Function(_$AsyncStateSuccessImpl<T>) then) =
      __$$AsyncStateSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$AsyncStateSuccessImplCopyWithImpl<T, $Res>
    extends _$AsyncStateCopyWithImpl<T, $Res, _$AsyncStateSuccessImpl<T>>
    implements _$$AsyncStateSuccessImplCopyWith<T, $Res> {
  __$$AsyncStateSuccessImplCopyWithImpl(_$AsyncStateSuccessImpl<T> _value,
      $Res Function(_$AsyncStateSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AsyncStateSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AsyncStateSuccessImpl<T> extends _AsyncStateSuccess<T> {
  const _$AsyncStateSuccessImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'AsyncState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncStateSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AsyncStateSuccessImplCopyWith<T, _$AsyncStateSuccessImpl<T>>
      get copyWith =>
          __$$AsyncStateSuccessImplCopyWithImpl<T, _$AsyncStateSuccessImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AsyncStateInitial<T> value) initial,
    required TResult Function(_AsyncStateLoading<T> value) loading,
    required TResult Function(_AsyncStateSuccess<T> value) success,
    required TResult Function(_AsyncStateError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AsyncStateInitial<T> value)? initial,
    TResult? Function(_AsyncStateLoading<T> value)? loading,
    TResult? Function(_AsyncStateSuccess<T> value)? success,
    TResult? Function(_AsyncStateError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AsyncStateInitial<T> value)? initial,
    TResult Function(_AsyncStateLoading<T> value)? loading,
    TResult Function(_AsyncStateSuccess<T> value)? success,
    TResult Function(_AsyncStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AsyncStateSuccess<T> extends AsyncState<T> {
  const factory _AsyncStateSuccess(final T data) = _$AsyncStateSuccessImpl<T>;
  const _AsyncStateSuccess._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$AsyncStateSuccessImplCopyWith<T, _$AsyncStateSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AsyncStateErrorImplCopyWith<T, $Res> {
  factory _$$AsyncStateErrorImplCopyWith(_$AsyncStateErrorImpl<T> value,
          $Res Function(_$AsyncStateErrorImpl<T>) then) =
      __$$AsyncStateErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AsyncStateErrorImplCopyWithImpl<T, $Res>
    extends _$AsyncStateCopyWithImpl<T, $Res, _$AsyncStateErrorImpl<T>>
    implements _$$AsyncStateErrorImplCopyWith<T, $Res> {
  __$$AsyncStateErrorImplCopyWithImpl(_$AsyncStateErrorImpl<T> _value,
      $Res Function(_$AsyncStateErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AsyncStateErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AsyncStateErrorImpl<T> extends _AsyncStateError<T> {
  const _$AsyncStateErrorImpl(this.error) : super._();

  @override
  final String error;

  @override
  String toString() {
    return 'AsyncState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncStateErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AsyncStateErrorImplCopyWith<T, _$AsyncStateErrorImpl<T>> get copyWith =>
      __$$AsyncStateErrorImplCopyWithImpl<T, _$AsyncStateErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AsyncStateInitial<T> value) initial,
    required TResult Function(_AsyncStateLoading<T> value) loading,
    required TResult Function(_AsyncStateSuccess<T> value) success,
    required TResult Function(_AsyncStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AsyncStateInitial<T> value)? initial,
    TResult? Function(_AsyncStateLoading<T> value)? loading,
    TResult? Function(_AsyncStateSuccess<T> value)? success,
    TResult? Function(_AsyncStateError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AsyncStateInitial<T> value)? initial,
    TResult Function(_AsyncStateLoading<T> value)? loading,
    TResult Function(_AsyncStateSuccess<T> value)? success,
    TResult Function(_AsyncStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AsyncStateError<T> extends AsyncState<T> {
  const factory _AsyncStateError(final String error) = _$AsyncStateErrorImpl<T>;
  const _AsyncStateError._() : super._();

  String get error;
  @JsonKey(ignore: true)
  _$$AsyncStateErrorImplCopyWith<T, _$AsyncStateErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
