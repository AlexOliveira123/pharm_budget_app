import '../model/product_model.dart';

abstract class ISearchRepository {
  Future<List<ProductModel>> getProductByName(String name);
}
