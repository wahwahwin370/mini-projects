class ProductVariationModel {
  final String id;
  String sku;
  String image;
  double price;
  double salePrice;
  String? description;
  int stock;
  Map<String, String> attributeValues;

  ProductVariationModel({
    required this.id,
    this.sku = "",
    this.image= "",
    this.price = 0.0,
    this.salePrice = 0.0,
    this.description = '',
    this.stock = 0,
    required this.attributeValues,
  });

  static ProductVariationModel empty() => ProductVariationModel(id: "", attributeValues: {});

  // Convert to JSON
   toJson() {
    return {
      'Id': id,
      'Sku': sku,
      'Image': image,
      'Price': price,
      'SalePrice': salePrice,
      'Description': description,
      'Stock': stock,
      'AttributeValues': attributeValues,
    };
  }

  // Create a ProductVariationModel from JSON
  factory ProductVariationModel.fromJson(Map<String, dynamic> document) {
     final data = document;
     if(data.isEmpty) return ProductVariationModel.empty();
    return ProductVariationModel(
      id: data['Id'] ?? '',
      sku: data['Sku'] ?? '',
      image: data['Image'] ?? '',
      price: double.parse((data['Price'] ?? 0.0).toString()),
      salePrice: double.parse((data['SalePrice'] ?? 0.0).toString()),
      description: data['Description'],
      stock: data['Stock'] ?? '',
      attributeValues: Map<String, String>.from(data['AttributeValues']),
    );
  }
}
