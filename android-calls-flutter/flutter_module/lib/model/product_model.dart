class ProductModel {
  ProductModel({
    required this.id,
    required this.rating,
    required this.name,
    required this.description,
    required this.price,
    required this.urlImage,
  });

  final int id;
  final int rating;
  final String name;
  final String description;
  final double price;
  final String urlImage;
}