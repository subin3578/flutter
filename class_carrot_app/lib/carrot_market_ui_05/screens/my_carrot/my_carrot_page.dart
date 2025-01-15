import 'package:class_carrot_app/carrot_market_ui_04/screens/my_carrot/my_carrot_page_appbar.dart';
import 'package:flutter/material.dart';

class MyCarrotPage extends StatelessWidget {
  const MyCarrotPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('MyCarrotPage() 메모리 호출 확인');
    return Scaffold(
      appBar: buildCarrotPageAppBar(),
    );
  }
}
