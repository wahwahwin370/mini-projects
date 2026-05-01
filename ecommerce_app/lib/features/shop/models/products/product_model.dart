import 'package:cloud_firestore/cloud_firestore.dart';

import '../brand_model.dart';
import 'Product_attribute_model.dart';
import 'product_variations_model.dart';

class ProductModel {
  String id;
  int stock;
  String? sku;
  double price;
  String title;
  DateTime? date;
  double salePrice;
  String thumbnail;
  bool? isFeatured;
  BrandModel? brand;
  String? description;
  String? categoryId;
  List<String>? images;
  String productType;
  List<ProductAttributeModel>? productAttributes;
  List<ProductVariationModel>? productVariations;

  ProductModel({
    required this.id,
    required this.stock,
    this.sku,
    required this.price,
    required this.title,
    this.date,
    this.salePrice = 0.0,
    required this.thumbnail,
    this.isFeatured,
    this.brand,
    this.description,
    this.categoryId,
    this.images,
    required this.productType,
    this.productAttributes,
    this.productVariations,
  });

  static ProductModel empty() => ProductModel(id: '' , title: '' , stock : 0 , price: 0 , thumbnail:'', productType: '');

  // Convert to JSON
  toJson() {
    return {
      'Id': id,
      'Stock': stock,
      'Sku': sku,
      'Price': price,
      'Title': title,
      'Date': date?.toIso8601String(),
      'SalePrice': salePrice,
      'Thumbnail': thumbnail,
      'IsFeatured': isFeatured,
      'Brand': brand?.toJson(),
      'Description': description,
      'CategoryId': categoryId,
      'Images': images ?? [],
      'ProductType': productType,
      'ProductAttributes': productAttributes != null ? productAttributes!.map((e)=>toJson()).toList() : [],
      'ProductVariations': productVariations != null ? productVariations!.map((e)=>toJson()).toList() : [],
    };
  }

  // Create a ProductModel from JSON
  factory ProductModel.fromQuerySnapshot(QueryDocumentSnapshot<Object?> document) {
    final data = document.data() as Map<String, dynamic>;
    return ProductModel(
      id:document.id,
      stock: data['Stock'] ?? 0,
      sku: data['Sku'],
      price:  double.parse((data['Price'] ?? 0.0).toString()),
      title: data['Title'],
      date: data['Date'] != null ? DateTime.parse(data['Date']) : null,
      salePrice:  double.parse((data['SalePrice'] ?? 0.0).toString()),
      thumbnail: data['Thumbnail'] ?? '',
      isFeatured: data['IsFeatured'] ?? false,
      brand: BrandModel.fromJson(data['Brand']),
      description: data['Description'] ?? '',
      categoryId: data['CategoryId'] ?? '',
      images: data['Images'] != null ? List<String>.from(data['Images']) : [],
      productType: data['ProductType'],
      productAttributes: (data['ProductAttributes'] as List<dynamic>).map((e) => ProductAttributeModel.fromJson(e)).toList(),
      productVariations: (data['ProductVariations'] as List<dynamic>).map((e) => ProductVariationModel.fromJson(e)).toList(),
    );
  }
}




