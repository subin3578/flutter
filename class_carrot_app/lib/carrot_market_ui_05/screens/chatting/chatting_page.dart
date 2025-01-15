import 'package:class_carrot_app/carrot_market_ui_04/screens/chatting/chatting_appbar.dart';
import 'package:class_carrot_app/carrot_market_ui_04/screens/chatting/chatting_item.dart';
import 'package:class_carrot_app/carrot_market_ui_05/models/chat_message.dart';
import 'package:class_carrot_app/carrot_market_ui_05/screens/chatting/components/chatting_container.dart';
import 'package:flutter/material.dart';

class ChattingPage extends StatelessWidget {
  const ChattingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildChattingAppBar(),
      body: ListView.builder(
        itemCount: chatMessageList.length,
        itemBuilder: (context, index) {
          return ChattingContainer(chatMessage: chatMessageList[index]);
        },
      ),
    );
  }
}
