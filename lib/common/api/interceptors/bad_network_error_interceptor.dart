import 'package:dio/dio.dart';
import 'package:resto_app_dicoding/common/api/errors/bad_network_error.dart';
import 'package:resto_app_dicoding/common/network/network_client.dart';
import 'package:resto_app_dicoding/injection.dart';

class BadNetwotkErrorInterceptor extends Interceptor {
  final _networkClient = getIt<NetworkClient>();

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    final isConnected = await _networkClient.isConnected;
    if (err.response == null && !isConnected || err.response == null) {
      handler.reject(BadNetworkError(err));
    }

    return handler.next(err);
  }
}
