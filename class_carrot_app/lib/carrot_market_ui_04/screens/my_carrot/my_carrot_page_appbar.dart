import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildCarrotPageAppBar() {
  return AppBar(
    title: Row(
      children: [
        Text(
          '나의 당근',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ],
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.settings),
      ),
    ],
    bottom: const PreferredSize(
      preferredSize: Size.fromHeight(0.5),
      child: Divider(
        thickness: 0.7,
        height: 0.5,
        color: Colors.grey,
      ),
    ),
  );
}
