import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement_v01/_mvvm/_06/models/product.dart';
import 'package:flutter_statement_v01/_mvvm/_06/view_models/product_list_view_model.dart';
import 'package:flutter_statement_v01/common_utils/logger.dart';

class Productlistview extends ConsumerWidget {
  const Productlistview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController _titlecontroller = TextEditingController();
    TextEditingController _pricecontroller = TextEditingController();

    final products = ref.watch(productProvider);
    logger.d('products : $products');
    final productNotifier = ref.read(productProvider.notifier);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          // TODO : 판매중, 판매완료 가지고 입력받기
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 2,
                  child: TextField(
                    controller: _titlecontroller,
                    decoration: InputDecoration(
                      hintText: '상품명',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  flex: 1,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _pricecontroller,
                    decoration: InputDecoration(
                      hintText: '수량',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                IconButton(
                  icon: Icon(CupertinoIcons.add),
                  onPressed: () {
                    productNotifier.addProduct(
                        title: _titlecontroller.text,
                        count: int.parse(_pricecontroller.text));
                  },
                )
              ],
            ),
          ),

          SizedBox(height: 8.0),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final Product product = products[index];

                return ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 16),
                      SizedBox(
                        width: 80,
                        child: TextButton(
                            style: ButtonStyle(), // 연한 노랑색
                            onPressed: () {
                              productNotifier.toggleIsAvailable(product);
                            },
                            child: Text(
                              product.isAvailable == true ? '판매중' : '판매완료',
                              style: product.isAvailable == true
                                  ? TextStyle(color: Colors.green)
                                  : TextStyle(color: Colors.red),
                            )),
                      ),
                      SizedBox(
                        width: 70,
                        child: Text(
                          product.name,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      TextButton(
                        onPressed: () {
                          productNotifier.incrementStock(product);
                        },
                        child: Text(
                          '+',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.grey,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                        '${product.stock} 개',
                        style: TextStyle(fontSize: 17),
                      ),
                      Visibility(
                        visible: product.stock > 0,
                        child: TextButton(
                            onPressed: () {
                              productNotifier.decrementStock(product);
                            },
                            child: Text('-',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700))),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
