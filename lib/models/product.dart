import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int id;
  final String name;
  final double price;
  final String imageUrl;
  final int categoryId;
  final String unit;
  final bool isAvailable;
  final double? discountedPrice;

  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.categoryId,
    required this.unit,
    required this.isAvailable,
    this.discountedPrice,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        price,
        imageUrl,
        categoryId,
        unit,
        isAvailable,
        discountedPrice,
      ];
}
