// Product Attribute Model
class ProductAttributeModel {
  String? name;
  final List<String>? values;

  ProductAttributeModel({
    this.name,
    this.values
  });

  toJson() => {'Name': name, 'Value': values};

  factory ProductAttributeModel.fromJson(Map<String, dynamic> doucment) {
    final data = doucment;
    if(data.isEmpty) return ProductAttributeModel();
    return ProductAttributeModel(
      name: data.containsKey('Name') ? data['Name'] : '',
      values: List<String>.from(data['Value']) ,
    );
  }
}