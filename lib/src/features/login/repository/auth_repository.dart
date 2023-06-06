import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../core/exceptions/repository_exception.dart';
import '../../../core/exceptions/unauthorized_exception.dart';
import '../../../core/rest_client/rest_client_dio.dart';
import 'i_auth_repository.dart';

const kDefaultErrorMessage = 'Falha na comunicação!\nTente novamente';

class AuthRepository implements IAuthRepository {
  final RestClientDio _restClient;

  AuthRepository(this._restClient);

  @override
  Future<String> auth(String email, String password) async {
    try {
      final response = await _restClient.auth().post('/auth/', data: {'login': email, 'password': password});
      return (response.data['access_token'] as String).replaceAll('Bearer ', '');
    } on DioError catch (e, s) {
      if (e.response?.statusCode == 403) {
        throw UnauthorizedException(e.response?.data['message'] ?? kDefaultErrorMessage);
      }
      debugPrintStack(label: 'getProductByName - $e', stackTrace: s);
      throw RepositoryException(kDefaultErrorMessage);
    }
  }
}
