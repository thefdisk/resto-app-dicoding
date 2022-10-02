import 'package:dartz/dartz.dart';
import 'package:resto_app_dicoding/domain/core/errors.dart';
import 'package:resto_app_dicoding/domain/core/failures.dart';
import 'package:resto_app_dicoding/domain/core/value_validators.dart';

abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  T getOrCrash() => value.fold((f) => throw UnexpectedValueError(f), id);
  T getOrElse(T dflt) => value.getOrElse(() => dflt);

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit => value.fold(
        (f) => left(f),
        (_) => right(unit),
      );

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'value ($value)';
}

class NumericId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const NumericId._(this.value);

  factory NumericId(String input) {
    return NumericId._(validateStringSingleLine(input)
        .flatMap(validateStringNotEmpty)
        .flatMap(validateNumericString));
  }

  factory NumericId.fromNumber(num number) {
    final numberStr = number.toString();
    return NumericId._(validateStringSingleLine(numberStr)
        .flatMap(validateStringNotEmpty)
        .flatMap(validateNumericString));
  }
}

class GeneratedId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory GeneratedId(String input) {
    return GeneratedId._(
      validateStringNotEmpty(input).flatMap(validateStringSingleLine),
    );
  }

  GeneratedId._(this.value);
}

class Nominal extends ValueObject<num> {
  @override
  final Either<ValueFailure<num>, num> value;

  factory Nominal(num input) {
    return Nominal._(
      validateNominalValue(input),
    );
  }

  const Nominal._(this.value);
}

class StringSingleLine extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringSingleLine(String input) {
    return StringSingleLine._(
      validateStringSingleLine(input).flatMap(validateStringNotEmpty),
    );
  }

  const StringSingleLine._(this.value);
}
