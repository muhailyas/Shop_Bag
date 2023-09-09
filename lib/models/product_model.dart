class Product {
  int id;
  String title;
  num price;
  String description;
  String category;
  String image;
  String rating;
  String ratingCount;
  Product(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating,
      required this.ratingCount});
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        title: json['title'],
        price: json['price'],
        description: json['description'],
        category: json['category'],
        image: json['image'],
        rating: json['rating']['rate'].toString(),
        ratingCount: json['rating']['count'].toString());
  }
}
