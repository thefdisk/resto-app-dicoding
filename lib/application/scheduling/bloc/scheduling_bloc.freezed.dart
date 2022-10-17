// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scheduling_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SchedulingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checked,
    required TResult Function(bool value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checked,
    TResult Function(bool value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checked,
    TResult Function(bool value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Checked value) checked,
    required TResult Function(_Changed value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Checked value)? checked,
    TResult Function(_Changed value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Checked value)? checked,
    TResult Function(_Changed value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulingEventCopyWith<$Res> {
  factory $SchedulingEventCopyWith(
          SchedulingEvent value, $Res Function(SchedulingEvent) then) =
      _$SchedulingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SchedulingEventCopyWithImpl<$Res>
    implements $SchedulingEventCopyWith<$Res> {
  _$SchedulingEventCopyWithImpl(this._value, this._then);

  final SchedulingEvent _value;
  // ignore: unused_field
  final $Res Function(SchedulingEvent) _then;
}

/// @nodoc
abstract class _$$_CheckedCopyWith<$Res> {
  factory _$$_CheckedCopyWith(
          _$_Checked value, $Res Function(_$_Checked) then) =
      __$$_CheckedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckedCopyWithImpl<$Res> extends _$SchedulingEventCopyWithImpl<$Res>
    implements _$$_CheckedCopyWith<$Res> {
  __$$_CheckedCopyWithImpl(_$_Checked _value, $Res Function(_$_Checked) _then)
      : super(_value, (v) => _then(v as _$_Checked));

  @override
  _$_Checked get _value => super._value as _$_Checked;
}

/// @nodoc

class _$_Checked implements _Checked {
  const _$_Checked();

  @override
  String toString() {
    return 'SchedulingEvent.checked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Checked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checked,
    required TResult Function(bool value) changed,
  }) {
    return checked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checked,
    TResult Function(bool value)? changed,
  }) {
    return checked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checked,
    TResult Function(bool value)? changed,
    required TResult orElse(),
  }) {
    if (checked != null) {
      return checked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Checked value) checked,
    required TResult Function(_Changed value) changed,
  }) {
    return checked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Checked value)? checked,
    TResult Function(_Changed value)? changed,
  }) {
    return checked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Checked value)? checked,
    TResult Function(_Changed value)? changed,
    required TResult orElse(),
  }) {
    if (checked != null) {
      return checked(this);
    }
    return orElse();
  }
}

abstract class _Checked implements SchedulingEvent {
  const factory _Checked() = _$_Checked;
}

/// @nodoc
abstract class _$$_ChangedCopyWith<$Res> {
  factory _$$_ChangedCopyWith(
          _$_Changed value, $Res Function(_$_Changed) then) =
      __$$_ChangedCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$$_ChangedCopyWithImpl<$Res> extends _$SchedulingEventCopyWithImpl<$Res>
    implements _$$_ChangedCopyWith<$Res> {
  __$$_ChangedCopyWithImpl(_$_Changed _value, $Res Function(_$_Changed) _then)
      : super(_value, (v) => _then(v as _$_Changed));

  @override
  _$_Changed get _value => super._value as _$_Changed;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Changed(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Changed implements _Changed {
  const _$_Changed(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'SchedulingEvent.changed(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Changed &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_ChangedCopyWith<_$_Changed> get copyWith =>
      __$$_ChangedCopyWithImpl<_$_Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checked,
    required TResult Function(bool value) changed,
  }) {
    return changed(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checked,
    TResult Function(bool value)? changed,
  }) {
    return changed?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checked,
    TResult Function(bool value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Checked value) checked,
    required TResult Function(_Changed value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Checked value)? checked,
    TResult Function(_Changed value)? changed,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Checked value)? checked,
    TResult Function(_Changed value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class _Changed implements SchedulingEvent {
  const factory _Changed(final bool value) = _$_Changed;

  bool get value;
  @JsonKey(ignore: true)
  _$$_ChangedCopyWith<_$_Changed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SchedulingState {
  bool get isScheduled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchedulingStateCopyWith<SchedulingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulingStateCopyWith<$Res> {
  factory $SchedulingStateCopyWith(
          SchedulingState value, $Res Function(SchedulingState) then) =
      _$SchedulingStateCopyWithImpl<$Res>;
  $Res call({bool isScheduled});
}

/// @nodoc
class _$SchedulingStateCopyWithImpl<$Res>
    implements $SchedulingStateCopyWith<$Res> {
  _$SchedulingStateCopyWithImpl(this._value, this._then);

  final SchedulingState _value;
  // ignore: unused_field
  final $Res Function(SchedulingState) _then;

  @override
  $Res call({
    Object? isScheduled = freezed,
  }) {
    return _then(_value.copyWith(
      isScheduled: isScheduled == freezed
          ? _value.isScheduled
          : isScheduled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_SchedulingStateCopyWith<$Res>
    implements $SchedulingStateCopyWith<$Res> {
  factory _$$_SchedulingStateCopyWith(
          _$_SchedulingState value, $Res Function(_$_SchedulingState) then) =
      __$$_SchedulingStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isScheduled});
}

/// @nodoc
class __$$_SchedulingStateCopyWithImpl<$Res>
    extends _$SchedulingStateCopyWithImpl<$Res>
    implements _$$_SchedulingStateCopyWith<$Res> {
  __$$_SchedulingStateCopyWithImpl(
      _$_SchedulingState _value, $Res Function(_$_SchedulingState) _then)
      : super(_value, (v) => _then(v as _$_SchedulingState));

  @override
  _$_SchedulingState get _value => super._value as _$_SchedulingState;

  @override
  $Res call({
    Object? isScheduled = freezed,
  }) {
    return _then(_$_SchedulingState(
      isScheduled: isScheduled == freezed
          ? _value.isScheduled
          : isScheduled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SchedulingState implements _SchedulingState {
  const _$_SchedulingState({this.isScheduled = false});

  @override
  @JsonKey()
  final bool isScheduled;

  @override
  String toString() {
    return 'SchedulingState(isScheduled: $isScheduled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SchedulingState &&
            const DeepCollectionEquality()
                .equals(other.isScheduled, isScheduled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isScheduled));

  @JsonKey(ignore: true)
  @override
  _$$_SchedulingStateCopyWith<_$_SchedulingState> get copyWith =>
      __$$_SchedulingStateCopyWithImpl<_$_SchedulingState>(this, _$identity);
}

abstract class _SchedulingState implements SchedulingState {
  const factory _SchedulingState({final bool isScheduled}) = _$_SchedulingState;

  @override
  bool get isScheduled;
  @override
  @JsonKey(ignore: true)
  _$$_SchedulingStateCopyWith<_$_SchedulingState> get copyWith =>
      throw _privateConstructorUsedError;
}
