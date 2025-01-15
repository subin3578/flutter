import 'package:class_carrot_app/carrot_market_ui_01/theme.dart';
import 'package:class_carrot_app/carrot_market_ui_05/models/chat_message.dart';
import 'package:class_carrot_app/carrot_market_ui_05/screens/components/image_container.dart';
import 'package:flutter/material.dart';

class ChattingContainer extends StatelessWidget {
  final ChatMessage chatMessage;
  const ChattingContainer({required this.chatMessage, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Row(
        children: [
          Container(
            width: 50,
            child: ImageContainer(
              borderRadius: 25,
              imageUrl: chatMessage.profileImage,
              width: 50,
              height: 50,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      chatMessage.sender,
                      style: textTheme().displayMedium,
                    ),
                    Text(
                      '${chatMessage.location} ${chatMessage.sendDate}',
                    ),
                  ],
                ),
                const SizedBox(height: 3),
                Text(
                  chatMessage.message,
                  style: TextStyle(fontSize: 15, color: Colors.black),
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                )
              ],
            ),
          ),
          Visibility(
            visible: chatMessage.imageUri != null,
            child: ImageContainer(
              borderRadius: 5,
              imageUrl: chatMessage.imageUri ?? '',
              width: 50,
              height: 50,
            ),
          )
        ],
      ),
    );
  }
}
