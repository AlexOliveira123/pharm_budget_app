import 'package:dio/dio.dart';
import 'package:dio/io.dart';

import '../config/env.dart';
import 'interceptors/auth_interceptor.dart';

class RestClientDio extends DioForNative {
  late AuthInterceptor _authInterceptor;

  RestClientDio()
      : super(
          BaseOptions(
            baseUrl: Env.i['baseUrl'] ?? '',
            connectTimeout: const Duration(milliseconds: 5000),
            receiveTimeout: const Duration(milliseconds: 60000),
          ),
        ) {
    interceptors.add(
      LogInterceptor(requestBody: true, responseBody: true, requestHeader: true),
    );
    _authInterceptor = AuthInterceptor();
  }

  RestClientDio auth() {
    interceptors.add(_authInterceptor);
    return this;
  }

  RestClientDio unauth() {
    interceptors.remove(_authInterceptor);
    return this;
  }
}
