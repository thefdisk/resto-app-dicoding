import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failure.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure {
  const ApiFailure._();
  const factory ApiFailure.serverError({
    required int statusCode,
    required Object errorMessage,
  }) = _ServerError;
  const factory ApiFailure.unexpectedError({
    Object? errorMessage,
    StackTrace? stackTrace,
  }) = _UnexpectedError;
  const factory ApiFailure.connectionError() = _ConnectionError;
  const factory ApiFailure.internalServerError() = _InternalServerError;
  const factory ApiFailure.unauthorized() = _Unauthorized;
  const factory ApiFailure.badRequest() = _BadRequest;

  String toStringFormatted({
    String? unauthorizedMessage,
  }) {
    return map(
      serverError: (failure) => 'Terdapat gangguan pada server.',
      unexpectedError: (failure) => 'Terjadi kesalahan. Coba lagi nanti',
      connectionError: (failure) => 'Tidak dapat terhubung ke server.',
      internalServerError: (failure) =>
          'Server sedang mengalami gangguan. Coba lagi nani.',
      unauthorized: (failure) => unauthorizedMessage ?? 'Session telah habis.',
      badRequest: (failure) => 'Terjadi kesalahan',
    );
  }
}
