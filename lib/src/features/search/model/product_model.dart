class ProductModel {
  final int id;
  final int categoryId;
  final String name;

  ProductModel({
    required this.id,
    required this.categoryId,
    required this.name,
  });

  factory ProductModel.fromJson(Map<String, dynamic> data) {
    return ProductModel(
      id: data['id'],
      categoryId: data['category_id'],
      name: data['name'],
    );
  }
}
