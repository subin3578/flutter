import 'package:class_carrot_app/carrot_market_ui_01/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../models/product.dart';
import 'package:intl/intl.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title,
            style: textTheme().bodyLarge,
          ),
          const SizedBox(height: 4.0),
          Text(
            '${product.address} ⁎ ${product.publishedAt}',
          ),
          const SizedBox(height: 4.0),
          Text(
            '${numberFormat(product.price)}',
            style: textTheme().displayMedium,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Visibility(
                  visible: product.commentsCount > 0,
                  child: _buildIcons(
                      product.commentsCount, CupertinoIcons.chat_bubble)),
              const SizedBox(width: 8.0),
              Visibility(
                  visible: product.heartCount > 0,
                  child: _buildIcons(product.heartCount, CupertinoIcons.heart)),
              // 찜과 채팅
            ],
          )
        ],
      ),
    );
  }

  Widget _buildIcons(int count, IconData mIcon) {
    return Row(
      children: [
        Icon(mIcon, size: 14.0),
        const SizedBox(width: 4.0),
        Text('$count')
      ],
    );
  }

  // 포맷 함수 만들기
  String numberFormat(String price) {
    final formatter = NumberFormat('#,###');
    // 형 변환 처리
    return formatter.format(int.parse(price));
  }
}
