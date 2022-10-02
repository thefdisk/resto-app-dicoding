import 'package:dio/dio.dart';
import 'package:dio_logger/dio_logger.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:resto_app_dicoding/common/api/api_failure.dart';
import 'package:resto_app_dicoding/common/api/errors/bad_network_error.dart';
import 'package:resto_app_dicoding/common/api/errors/internal_server_error.dart';
import 'package:resto_app_dicoding/common/api/errors/unauthorized_error.dart';
import 'package:resto_app_dicoding/common/api/interceptors/bad_network_error_interceptor.dart';
import 'package:resto_app_dicoding/common/api/interceptors/internal_server_error_interceptor.dart';
import 'package:resto_app_dicoding/common/api/interceptors/unauthorized_error_interceptor.dart';
import 'package:resto_app_dicoding/env.dart';

@lazySingleton
class ApiClient {
  final Dio _dio;
  final Env _env;

  ApiClient(this._dio, this._env) {
    _dio.options.baseUrl = _env.baseUrl;
    _dio.options.connectTimeout = const Duration(seconds: 10).inMilliseconds;
    _dio.interceptors.add(BadNetwotkErrorInterceptor());
    _dio.interceptors.add(InternalServerErrorInterceptor());
    _dio.interceptors.add(UnauthorizedInterceptor());

    if (kDebugMode) {
      _dio.interceptors.add(dioLoggerInterceptor);
    }
  }

  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    bool followRedirects = true,
    bool Function(int?)? validateStatus,
    String? contentType,
  }) async {
    try {
      return await _dio.post(
        path,
        data: data,
        options: Options(
          headers: headers,
          followRedirects: followRedirects,
          validateStatus: validateStatus,
          contentType: contentType,
        ),
        queryParameters: params,
      );
    } on UnauthorizedError {
      throw const ApiFailure.unauthorized();
    } on InternalServerError {
      throw const ApiFailure.internalServerError();
    } on BadNetworkError {
      throw const ApiFailure.connectionError();
    } on DioError catch (e) {
      final errorMessage =
          e.response?.data['message'] ?? e.response?.statusMessage ?? e.error;

      throw ApiFailure.serverError(
          statusCode: e.response?.statusCode ?? 0, errorMessage: errorMessage);
    } catch (e, s) {
      throw ApiFailure.unexpectedError(
        errorMessage: e,
        stackTrace: s,
      );
    }
  }

  Future<Response> get(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    bool followRedirects = true,
    bool Function(int?)? validateStatus,
    String? contentType,
  }) async {
    try {
      return await _dio.get(
        path,
        options: Options(
          headers: headers,
          validateStatus: validateStatus,
          followRedirects: followRedirects,
          contentType: contentType,
        ),
        queryParameters: params,
      );
    } on UnauthorizedError {
      throw const ApiFailure.unauthorized();
    } on InternalServerError {
      throw const ApiFailure.internalServerError();
    } on BadNetworkError {
      throw const ApiFailure.connectionError();
    } on DioError catch (e) {
      throw ApiFailure.serverError(
          statusCode: e.response?.statusCode ?? 0,
          errorMessage: e.response?.data['message'] ??
              e.response?.statusMessage ??
              e.error);
    } catch (e, s) {
      throw ApiFailure.unexpectedError(
        errorMessage: e,
        stackTrace: s,
      );
    }
  }

  Future<Response> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    bool followRedirects = true,
    bool Function(int?)? validateStatus,
    String? contentType,
  }) async {
    try {
      return await _dio.put(
        path,
        data: data,
        options: Options(
          headers: headers,
          followRedirects: followRedirects,
          validateStatus: validateStatus,
          contentType: contentType,
        ),
        queryParameters: params,
      );
    } on UnauthorizedError {
      throw const ApiFailure.unauthorized();
    } on InternalServerError {
      throw const ApiFailure.internalServerError();
    } on BadNetworkError {
      throw const ApiFailure.connectionError();
    } on DioError catch (e) {
      throw ApiFailure.serverError(
          statusCode: e.response?.statusCode ?? 0,
          errorMessage: e.response?.data['message'] ??
              e.response?.statusMessage ??
              e.error);
    } catch (e, s) {
      throw ApiFailure.unexpectedError(
        errorMessage: e,
        stackTrace: s,
      );
    }
  }

  Future<Response> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? params,
    bool followRedirects = true,
    bool Function(int?)? validateStatus,
    String? contentType,
  }) async {
    try {
      return await _dio.delete(
        path,
        data: data,
        options: Options(
          headers: headers,
          followRedirects: followRedirects,
          validateStatus: validateStatus,
          contentType: contentType,
        ),
        queryParameters: params,
      );
    } on UnauthorizedError {
      throw const ApiFailure.unauthorized();
    } on InternalServerError {
      throw const ApiFailure.internalServerError();
    } on BadNetworkError {
      throw const ApiFailure.connectionError();
    } on DioError catch (e) {
      throw ApiFailure.serverError(
          statusCode: e.response?.statusCode ?? 0,
          errorMessage: e.response?.data['message'] ??
              e.response?.statusMessage ??
              e.error);
    } catch (e, s) {
      throw ApiFailure.unexpectedError(
        errorMessage: e,
        stackTrace: s,
      );
    }
  }
}
