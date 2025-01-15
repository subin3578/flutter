import 'package:class_carrot_app/carrot_market_ui_05/screens/home/components/home_page_appbar.dart';
import 'package:class_carrot_app/carrot_market_ui_05/screens/home/components/product_item.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHomePageAppBar(),
      // body: ListView.separated(itemBuilder: itemBuilder, separatorBuilder: separatorBuilder, itemCount: itemCount),
      body: ListView.separated(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return ProductItem(product: productList[index]);
        },
        separatorBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
          );
        },
      ),
    );
  }
}
