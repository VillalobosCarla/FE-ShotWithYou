class Product{
  int productId;
  String productName;
  String description;
  double price;

  Product({
    required this.productId,
    required this.productName,
    required this.description,
    required this.price});

  factory Product.fromJson(Map<String, dynamic> json){
    return switch(json){
      {
        'id' : int productId,
        'productName' : String productName,
        'description' : String description,
        'price' : double price
    } =>
    Product(
      productId: productId,
      productName: productName,
      description: description,
      price: price
    ),
    _ => throw const FormatException('Failed to load products'),
    };
  }
}