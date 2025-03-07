import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/product.dart';

class ProductNotifier extends Notifier<List<Product>> {
  @override
  List<Product> build() {
    return [];
  }

  void addProduct({required String title, required int count}) {
    if (title.isEmpty) return;
    state = [
      ...state,
      Product(isAvailable: true, stock: count, name: title),
    ];
  }

// 구매 가능 여부 변경 togglerAsAvailable (int index)
  void toggleIsAvailable(Product product) {
    state = state
        .map((item) => item == product
            ? item.copyItem(isAvailable: !product.isAvailable)
            : item)
        .toList();
  }

// 재고 늘리기
  void incrementStock(Product product) {
    state = state
        .map((item) =>
            item == product ? item.copyItem(stock: item.stock + 1) : item)
        .toList();
  }

  void decrementStock(Product product) {
    if (product.stock < 0) return;
    state = state
        .map((item) =>
            item == product ? item.copyItem(stock: item.stock - 1) : item)
        .toList();
  }
// remoteProduct int index
}

final productProvider =
    NotifierProvider<ProductNotifier, List<Product>>(() => ProductNotifier());
