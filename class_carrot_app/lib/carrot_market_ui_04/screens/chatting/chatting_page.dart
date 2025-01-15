import 'package:class_carrot_app/carrot_market_ui_04/screens/chatting/chatting_appbar.dart';
import 'package:class_carrot_app/carrot_market_ui_04/screens/chatting/chatting_item.dart';
import 'package:flutter/material.dart';

class ChattingPage extends StatelessWidget {
  const ChattingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildChattingAppBar(),
      body: ChattingItem(),
    );
  }
}
