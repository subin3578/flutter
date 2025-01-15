import 'package:class_carrot_app/carrot_market_ui_01/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChattingDetail extends StatelessWidget {
  const ChattingDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('당근이'),
              Text('대부동 ⁎1일전'),
            ],
          ),
          Text('안녕하세요?')
        ],
      ),
    );
  }
}
