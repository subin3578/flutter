import 'package:flutter_riverpod/flutter_riverpod.dart';

class Product {
  final bool isAvailable;
  final int stock;
  final String name;

  Product({required this.isAvailable, required this.name, required this.stock});

  @override
  String toString() {
    return 'Product{isAvailable: $isAvailable, name: $name}';
  }

  Product copyItem({bool? isAvailable, String? name, int? stock}) {
    return Product(
        isAvailable: isAvailable ?? this.isAvailable,
        name: name ?? this.name,
        stock: stock ?? this.stock);
  }
}
