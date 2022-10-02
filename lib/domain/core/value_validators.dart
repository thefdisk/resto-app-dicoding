import 'package:dartz/dartz.dart';
import 'package:resto_app_dicoding/domain/core/failures.dart';
import 'package:string_validator/string_validator.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  }

  return left(ValueFailure.empty(failedValue: input));
}

Either<ValueFailure<String>, String> validateStringSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiLine(failedValue: input));
  }

  return right(input);
}

Either<ValueFailure<num>, num> validateNominalValue(num input) {
  if (input > 0) {
    return right(input);
  } else {
    return left(ValueFailure.invalidNominal(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateNumericString(String input) {
  if (isNumeric(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidNominal(failedValue: input));
  }
}
