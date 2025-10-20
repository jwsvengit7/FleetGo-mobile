class CarsDetailsModel {
  final String name; // used as the unique key
  final double price;
  final String description;
  final String date;
  final String brand;
  final List<String> image;
  final List<String> gallery;
  final bool isFavorite;

  CarsDetailsModel({
    required this.name,
    required this.price,
    required this.description,
    required this.date,
    required this.brand,
    required this.image,
    required this.gallery,
    this.isFavorite = false,
  });

  CarsDetailsModel copyWith({
    String? name,
    double? price,
    String? description,
    String? date,
    String? brand,
    List<String>? image,
    List<String>? gallery,
    bool? isFavorite,
  }) {
    return CarsDetailsModel(
      name: name ?? this.name,
      price: price ?? this.price,
      description: description ?? this.description,
      date: date ?? this.date,
      brand: brand ?? this.brand,
      image: image ?? this.image,
      gallery: gallery ?? this.gallery,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
