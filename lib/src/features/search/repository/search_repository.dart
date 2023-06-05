import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../core/exceptions/repository_exception.dart';
import '../../../core/rest_client/rest_client_dio.dart';
import '../model/product_model.dart';
import 'i_search_repository.dart';

class SearchRepository implements ISearchRepository {
  final RestClientDio _restClient;

  SearchRepository(this._restClient);

  @override
  Future<List<ProductModel>> getProductByName(String name) async {
    try {
      final response = await _restClient.auth().get('/product/?name=$name');
      return (response.data['data'] as List).map((item) => ProductModel.fromJson(item)).toList();
    } on DioError catch (e, s) {
      debugPrintStack(label: 'getProductByName - $e', stackTrace: s);
      throw RepositoryException('Falha na comunicação!\nTente novamente');
    }
  }
}
