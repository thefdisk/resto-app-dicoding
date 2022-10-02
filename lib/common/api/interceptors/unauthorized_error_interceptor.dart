import 'package:dio/dio.dart';
import 'package:resto_app_dicoding/common/api/errors/unauthorized_error.dart';

class UnauthorizedInterceptor extends Interceptor {
  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401 ||
        err.response?.statusCode == 403 ||
        err.response?.statusCode == 419) {
      return handler.reject(UnauthorizedError(err));
    }

    return handler.next(err);
  }
}
