import 'package:class_carrot_app/carrot_market_ui_04/screens/home/components/product_detail.dart';
import 'package:flutter/material.dart';

class ChattingItem extends StatelessWidget {
  const ChattingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          // 이미지
          CircleAvatar(
            backgroundImage: AssetImage(
                'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_7.jpg?raw=true'),
          ),
          const SizedBox(
            width: 10,
          ),

          // 채팅 설명
        ],
      ),
    );
  }
}
