// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'restaurant_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RestaurantFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiFailure failure) serverError,
    required TResult Function() fetchError,
    required TResult Function() unexpectedError,
    required TResult Function() empty,
    required TResult Function() failedToAddReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ApiFailure failure)? serverError,
    TResult Function()? fetchError,
    TResult Function()? unexpectedError,
    TResult Function()? empty,
    TResult Function()? failedToAddReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiFailure failure)? serverError,
    TResult Function()? fetchError,
    TResult Function()? unexpectedError,
    TResult Function()? empty,
    TResult Function()? failedToAddReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_FetchError value) fetchError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_Empty value) empty,
    required TResult Function(_FailedToAddReview value) failedToAddReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_FetchError value)? fetchError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_Empty value)? empty,
    TResult Function(_FailedToAddReview value)? failedToAddReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_FetchError value)? fetchError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_Empty value)? empty,
    TResult Function(_FailedToAddReview value)? failedToAddReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantFailureCopyWith<$Res> {
  factory $RestaurantFailureCopyWith(
          RestaurantFailure value, $Res Function(RestaurantFailure) then) =
      _$RestaurantFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestaurantFailureCopyWithImpl<$Res>
    implements $RestaurantFailureCopyWith<$Res> {
  _$RestaurantFailureCopyWithImpl(this._value, this._then);

  final RestaurantFailure _value;
  // ignore: unused_field
  final $Res Function(RestaurantFailure) _then;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
  $Res call({ApiFailure failure});

  $ApiFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res>
    extends _$RestaurantFailureCopyWithImpl<$Res>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, (v) => _then(v as _$_ServerError));

  @override
  _$_ServerError get _value => super._value as _$_ServerError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_ServerError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ApiFailure,
    ));
  }

  @override
  $ApiFailureCopyWith<$Res> get failure {
    return $ApiFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError(this.failure);

  @override
  final ApiFailure failure;

  @override
  String toString() {
    return 'RestaurantFailure.serverError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      __$$_ServerErrorCopyWithImpl<_$_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiFailure failure) serverError,
    required TResult Function() fetchError,
    required TResult Function() unexpectedError,
    required TResult Function() empty,
    required TResult Function() failedToAddReview,
  }) {
    return serverError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ApiFailure failure)? serverError,
    TResult Function()? fetchError,
    TResult Function()? unexpectedError,
    TResult Function()? empty,
    TResult Function()? failedToAddReview,
  }) {
    return serverError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiFailure failure)? serverError,
    TResult Function()? fetchError,
    TResult Function()? unexpectedError,
    TResult Function()? empty,
    TResult Function()? failedToAddReview,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_FetchError value) fetchError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_Empty value) empty,
    required TResult Function(_FailedToAddReview value) failedToAddReview,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_FetchError value)? fetchError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_Empty value)? empty,
    TResult Function(_FailedToAddReview value)? failedToAddReview,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_FetchError value)? fetchError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_Empty value)? empty,
    TResult Function(_FailedToAddReview value)? failedToAddReview,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements RestaurantFailure {
  const factory _ServerError(final ApiFailure failure) = _$_ServerError;

  ApiFailure get failure;
  @JsonKey(ignore: true)
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchErrorCopyWith<$Res> {
  factory _$$_FetchErrorCopyWith(
          _$_FetchError value, $Res Function(_$_FetchError) then) =
      __$$_FetchErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchErrorCopyWithImpl<$Res>
    extends _$RestaurantFailureCopyWithImpl<$Res>
    implements _$$_FetchErrorCopyWith<$Res> {
  __$$_FetchErrorCopyWithImpl(
      _$_FetchError _value, $Res Function(_$_FetchError) _then)
      : super(_value, (v) => _then(v as _$_FetchError));

  @override
  _$_FetchError get _value => super._value as _$_FetchError;
}

/// @nodoc

class _$_FetchError implements _FetchError {
  const _$_FetchError();

  @override
  String toString() {
    return 'RestaurantFailure.fetchError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiFailure failure) serverError,
    required TResult Function() fetchError,
    required TResult Function() unexpectedError,
    required TResult Function() empty,
    required TResult Function() failedToAddReview,
  }) {
    return fetchError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ApiFailure failure)? serverError,
    TResult Function()? fetchError,
    TResult Function()? unexpectedError,
    TResult Function()? empty,
    TResult Function()? failedToAddReview,
  }) {
    return fetchError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiFailure failure)? serverError,
    TResult Function()? fetchError,
    TResult Function()? unexpectedError,
    TResult Function()? empty,
    TResult Function()? failedToAddReview,
    required TResult orElse(),
  }) {
    if (fetchError != null) {
      return fetchError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_FetchError value) fetchError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_Empty value) empty,
    required TResult Function(_FailedToAddReview value) failedToAddReview,
  }) {
    return fetchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_FetchError value)? fetchError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_Empty value)? empty,
    TResult Function(_FailedToAddReview value)? failedToAddReview,
  }) {
    return fetchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_FetchError value)? fetchError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_Empty value)? empty,
    TResult Function(_FailedToAddReview value)? failedToAddReview,
    required TResult orElse(),
  }) {
    if (fetchError != null) {
      return fetchError(this);
    }
    return orElse();
  }
}

abstract class _FetchError implements RestaurantFailure {
  const factory _FetchError() = _$_FetchError;
}

/// @nodoc
abstract class _$$_UnexpectedErrorCopyWith<$Res> {
  factory _$$_UnexpectedErrorCopyWith(
          _$_UnexpectedError value, $Res Function(_$_UnexpectedError) then) =
      __$$_UnexpectedErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnexpectedErrorCopyWithImpl<$Res>
    extends _$RestaurantFailureCopyWithImpl<$Res>
    implements _$$_UnexpectedErrorCopyWith<$Res> {
  __$$_UnexpectedErrorCopyWithImpl(
      _$_UnexpectedError _value, $Res Function(_$_UnexpectedError) _then)
      : super(_value, (v) => _then(v as _$_UnexpectedError));

  @override
  _$_UnexpectedError get _value => super._value as _$_UnexpectedError;
}

/// @nodoc

class _$_UnexpectedError implements _UnexpectedError {
  const _$_UnexpectedError();

  @override
  String toString() {
    return 'RestaurantFailure.unexpectedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnexpectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiFailure failure) serverError,
    required TResult Function() fetchError,
    required TResult Function() unexpectedError,
    required TResult Function() empty,
    required TResult Function() failedToAddReview,
  }) {
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ApiFailure failure)? serverError,
    TResult Function()? fetchError,
    TResult Function()? unexpectedError,
    TResult Function()? empty,
    TResult Function()? failedToAddReview,
  }) {
    return unexpectedError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiFailure failure)? serverError,
    TResult Function()? fetchError,
    TResult Function()? unexpectedError,
    TResult Function()? empty,
    TResult Function()? failedToAddReview,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_FetchError value) fetchError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_Empty value) empty,
    required TResult Function(_FailedToAddReview value) failedToAddReview,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_FetchError value)? fetchError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_Empty value)? empty,
    TResult Function(_FailedToAddReview value)? failedToAddReview,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_FetchError value)? fetchError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_Empty value)? empty,
    TResult Function(_FailedToAddReview value)? failedToAddReview,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedError implements RestaurantFailure {
  const factory _UnexpectedError() = _$_UnexpectedError;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res> extends _$RestaurantFailureCopyWithImpl<$Res>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, (v) => _then(v as _$_Empty));

  @override
  _$_Empty get _value => super._value as _$_Empty;
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'RestaurantFailure.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiFailure failure) serverError,
    required TResult Function() fetchError,
    required TResult Function() unexpectedError,
    required TResult Function() empty,
    required TResult Function() failedToAddReview,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ApiFailure failure)? serverError,
    TResult Function()? fetchError,
    TResult Function()? unexpectedError,
    TResult Function()? empty,
    TResult Function()? failedToAddReview,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiFailure failure)? serverError,
    TResult Function()? fetchError,
    TResult Function()? unexpectedError,
    TResult Function()? empty,
    TResult Function()? failedToAddReview,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_FetchError value) fetchError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_Empty value) empty,
    required TResult Function(_FailedToAddReview value) failedToAddReview,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_FetchError value)? fetchError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_Empty value)? empty,
    TResult Function(_FailedToAddReview value)? failedToAddReview,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_FetchError value)? fetchError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_Empty value)? empty,
    TResult Function(_FailedToAddReview value)? failedToAddReview,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements RestaurantFailure {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$$_FailedToAddReviewCopyWith<$Res> {
  factory _$$_FailedToAddReviewCopyWith(_$_FailedToAddReview value,
          $Res Function(_$_FailedToAddReview) then) =
      __$$_FailedToAddReviewCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailedToAddReviewCopyWithImpl<$Res>
    extends _$RestaurantFailureCopyWithImpl<$Res>
    implements _$$_FailedToAddReviewCopyWith<$Res> {
  __$$_FailedToAddReviewCopyWithImpl(
      _$_FailedToAddReview _value, $Res Function(_$_FailedToAddReview) _then)
      : super(_value, (v) => _then(v as _$_FailedToAddReview));

  @override
  _$_FailedToAddReview get _value => super._value as _$_FailedToAddReview;
}

/// @nodoc

class _$_FailedToAddReview implements _FailedToAddReview {
  const _$_FailedToAddReview();

  @override
  String toString() {
    return 'RestaurantFailure.failedToAddReview()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FailedToAddReview);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiFailure failure) serverError,
    required TResult Function() fetchError,
    required TResult Function() unexpectedError,
    required TResult Function() empty,
    required TResult Function() failedToAddReview,
  }) {
    return failedToAddReview();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ApiFailure failure)? serverError,
    TResult Function()? fetchError,
    TResult Function()? unexpectedError,
    TResult Function()? empty,
    TResult Function()? failedToAddReview,
  }) {
    return failedToAddReview?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiFailure failure)? serverError,
    TResult Function()? fetchError,
    TResult Function()? unexpectedError,
    TResult Function()? empty,
    TResult Function()? failedToAddReview,
    required TResult orElse(),
  }) {
    if (failedToAddReview != null) {
      return failedToAddReview();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_FetchError value) fetchError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_Empty value) empty,
    required TResult Function(_FailedToAddReview value) failedToAddReview,
  }) {
    return failedToAddReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_FetchError value)? fetchError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_Empty value)? empty,
    TResult Function(_FailedToAddReview value)? failedToAddReview,
  }) {
    return failedToAddReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_FetchError value)? fetchError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_Empty value)? empty,
    TResult Function(_FailedToAddReview value)? failedToAddReview,
    required TResult orElse(),
  }) {
    if (failedToAddReview != null) {
      return failedToAddReview(this);
    }
    return orElse();
  }
}

abstract class _FailedToAddReview implements RestaurantFailure {
  const factory _FailedToAddReview() = _$_FailedToAddReview;
}
