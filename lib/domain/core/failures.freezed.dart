// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidNominal,
    required TResult Function(T failedValue) containSpaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidNominal,
    TResult Function(T failedValue)? containSpaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidNominal,
    TResult Function(T failedValue)? containSpaces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_InvalidNominal<T> value) invalidNominal,
    required TResult Function(_ContainSpaces<T> value) containSpaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidNominal<T> value)? invalidNominal,
    TResult Function(_ContainSpaces<T> value)? containSpaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidNominal<T> value)? invalidNominal,
    TResult Function(_ContainSpaces<T> value)? containSpaces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class _$$_EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$_EmptyCopyWith(
          _$_Empty<T> value, $Res Function(_$_Empty<T>) then) =
      __$$_EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$_EmptyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_EmptyCopyWith<T, $Res> {
  __$$_EmptyCopyWithImpl(_$_Empty<T> _value, $Res Function(_$_Empty<T>) _then)
      : super(_value, (v) => _then(v as _$_Empty<T>));

  @override
  _$_Empty<T> get _value => super._value as _$_Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$_Empty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Empty<T> implements _Empty<T> {
  const _$_Empty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Empty<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$_EmptyCopyWith<T, _$_Empty<T>> get copyWith =>
      __$$_EmptyCopyWithImpl<T, _$_Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidNominal,
    required TResult Function(T failedValue) containSpaces,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidNominal,
    TResult Function(T failedValue)? containSpaces,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidNominal,
    TResult Function(T failedValue)? containSpaces,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_InvalidNominal<T> value) invalidNominal,
    required TResult Function(_ContainSpaces<T> value) containSpaces,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidNominal<T> value)? invalidNominal,
    TResult Function(_ContainSpaces<T> value)? containSpaces,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidNominal<T> value)? invalidNominal,
    TResult Function(_ContainSpaces<T> value)? containSpaces,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T> implements ValueFailure<T> {
  const factory _Empty({required final T failedValue}) = _$_Empty<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_EmptyCopyWith<T, _$_Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MultiLineCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$_MultiLineCopyWith(
          _$_MultiLine<T> value, $Res Function(_$_MultiLine<T>) then) =
      __$$_MultiLineCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$_MultiLineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_MultiLineCopyWith<T, $Res> {
  __$$_MultiLineCopyWithImpl(
      _$_MultiLine<T> _value, $Res Function(_$_MultiLine<T>) _then)
      : super(_value, (v) => _then(v as _$_MultiLine<T>));

  @override
  _$_MultiLine<T> get _value => super._value as _$_MultiLine<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$_MultiLine<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_MultiLine<T> implements _MultiLine<T> {
  const _$_MultiLine({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiLine(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultiLine<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$_MultiLineCopyWith<T, _$_MultiLine<T>> get copyWith =>
      __$$_MultiLineCopyWithImpl<T, _$_MultiLine<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidNominal,
    required TResult Function(T failedValue) containSpaces,
  }) {
    return multiLine(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidNominal,
    TResult Function(T failedValue)? containSpaces,
  }) {
    return multiLine?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidNominal,
    TResult Function(T failedValue)? containSpaces,
    required TResult orElse(),
  }) {
    if (multiLine != null) {
      return multiLine(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_InvalidNominal<T> value) invalidNominal,
    required TResult Function(_ContainSpaces<T> value) containSpaces,
  }) {
    return multiLine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidNominal<T> value)? invalidNominal,
    TResult Function(_ContainSpaces<T> value)? containSpaces,
  }) {
    return multiLine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidNominal<T> value)? invalidNominal,
    TResult Function(_ContainSpaces<T> value)? containSpaces,
    required TResult orElse(),
  }) {
    if (multiLine != null) {
      return multiLine(this);
    }
    return orElse();
  }
}

abstract class _MultiLine<T> implements ValueFailure<T> {
  const factory _MultiLine({required final T failedValue}) = _$_MultiLine<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_MultiLineCopyWith<T, _$_MultiLine<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$_ExceedingLengthCopyWith(_$_ExceedingLength<T> value,
          $Res Function(_$_ExceedingLength<T>) then) =
      __$$_ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$$_ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_ExceedingLengthCopyWith<T, $Res> {
  __$$_ExceedingLengthCopyWithImpl(
      _$_ExceedingLength<T> _value, $Res Function(_$_ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as _$_ExceedingLength<T>));

  @override
  _$_ExceedingLength<T> get _value => super._value as _$_ExceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(_$_ExceedingLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ExceedingLength<T> implements _ExceedingLength<T> {
  const _$_ExceedingLength({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExceedingLength<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  _$$_ExceedingLengthCopyWith<T, _$_ExceedingLength<T>> get copyWith =>
      __$$_ExceedingLengthCopyWithImpl<T, _$_ExceedingLength<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidNominal,
    required TResult Function(T failedValue) containSpaces,
  }) {
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidNominal,
    TResult Function(T failedValue)? containSpaces,
  }) {
    return exceedingLength?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidNominal,
    TResult Function(T failedValue)? containSpaces,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_InvalidNominal<T> value) invalidNominal,
    required TResult Function(_ContainSpaces<T> value) containSpaces,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidNominal<T> value)? invalidNominal,
    TResult Function(_ContainSpaces<T> value)? containSpaces,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidNominal<T> value)? invalidNominal,
    TResult Function(_ContainSpaces<T> value)? containSpaces,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class _ExceedingLength<T> implements ValueFailure<T> {
  const factory _ExceedingLength(
      {required final T failedValue,
      required final int max}) = _$_ExceedingLength<T>;

  @override
  T get failedValue;
  int get max;
  @override
  @JsonKey(ignore: true)
  _$$_ExceedingLengthCopyWith<T, _$_ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidNominalCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$_InvalidNominalCopyWith(_$_InvalidNominal<T> value,
          $Res Function(_$_InvalidNominal<T>) then) =
      __$$_InvalidNominalCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$_InvalidNominalCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_InvalidNominalCopyWith<T, $Res> {
  __$$_InvalidNominalCopyWithImpl(
      _$_InvalidNominal<T> _value, $Res Function(_$_InvalidNominal<T>) _then)
      : super(_value, (v) => _then(v as _$_InvalidNominal<T>));

  @override
  _$_InvalidNominal<T> get _value => super._value as _$_InvalidNominal<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$_InvalidNominal<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidNominal<T> implements _InvalidNominal<T> {
  const _$_InvalidNominal({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidNominal(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidNominal<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$_InvalidNominalCopyWith<T, _$_InvalidNominal<T>> get copyWith =>
      __$$_InvalidNominalCopyWithImpl<T, _$_InvalidNominal<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidNominal,
    required TResult Function(T failedValue) containSpaces,
  }) {
    return invalidNominal(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidNominal,
    TResult Function(T failedValue)? containSpaces,
  }) {
    return invalidNominal?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidNominal,
    TResult Function(T failedValue)? containSpaces,
    required TResult orElse(),
  }) {
    if (invalidNominal != null) {
      return invalidNominal(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_InvalidNominal<T> value) invalidNominal,
    required TResult Function(_ContainSpaces<T> value) containSpaces,
  }) {
    return invalidNominal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidNominal<T> value)? invalidNominal,
    TResult Function(_ContainSpaces<T> value)? containSpaces,
  }) {
    return invalidNominal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidNominal<T> value)? invalidNominal,
    TResult Function(_ContainSpaces<T> value)? containSpaces,
    required TResult orElse(),
  }) {
    if (invalidNominal != null) {
      return invalidNominal(this);
    }
    return orElse();
  }
}

abstract class _InvalidNominal<T> implements ValueFailure<T> {
  const factory _InvalidNominal({required final T failedValue}) =
      _$_InvalidNominal<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_InvalidNominalCopyWith<T, _$_InvalidNominal<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ContainSpacesCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$_ContainSpacesCopyWith(
          _$_ContainSpaces<T> value, $Res Function(_$_ContainSpaces<T>) then) =
      __$$_ContainSpacesCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$_ContainSpacesCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_ContainSpacesCopyWith<T, $Res> {
  __$$_ContainSpacesCopyWithImpl(
      _$_ContainSpaces<T> _value, $Res Function(_$_ContainSpaces<T>) _then)
      : super(_value, (v) => _then(v as _$_ContainSpaces<T>));

  @override
  _$_ContainSpaces<T> get _value => super._value as _$_ContainSpaces<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$_ContainSpaces<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_ContainSpaces<T> implements _ContainSpaces<T> {
  const _$_ContainSpaces({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.containSpaces(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContainSpaces<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$_ContainSpacesCopyWith<T, _$_ContainSpaces<T>> get copyWith =>
      __$$_ContainSpacesCopyWithImpl<T, _$_ContainSpaces<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue, int max) exceedingLength,
    required TResult Function(T failedValue) invalidNominal,
    required TResult Function(T failedValue) containSpaces,
  }) {
    return containSpaces(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidNominal,
    TResult Function(T failedValue)? containSpaces,
  }) {
    return containSpaces?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? exceedingLength,
    TResult Function(T failedValue)? invalidNominal,
    TResult Function(T failedValue)? containSpaces,
    required TResult orElse(),
  }) {
    if (containSpaces != null) {
      return containSpaces(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_InvalidNominal<T> value) invalidNominal,
    required TResult Function(_ContainSpaces<T> value) containSpaces,
  }) {
    return containSpaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidNominal<T> value)? invalidNominal,
    TResult Function(_ContainSpaces<T> value)? containSpaces,
  }) {
    return containSpaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_InvalidNominal<T> value)? invalidNominal,
    TResult Function(_ContainSpaces<T> value)? containSpaces,
    required TResult orElse(),
  }) {
    if (containSpaces != null) {
      return containSpaces(this);
    }
    return orElse();
  }
}

abstract class _ContainSpaces<T> implements ValueFailure<T> {
  const factory _ContainSpaces({required final T failedValue}) =
      _$_ContainSpaces<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_ContainSpacesCopyWith<T, _$_ContainSpaces<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
