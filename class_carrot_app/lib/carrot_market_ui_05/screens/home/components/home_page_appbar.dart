import 'package:class_carrot_app/carrot_market_ui_05/screens/components/appbar_preferred_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildHomePageAppBar() {
  return AppBar(
    title: Row(
      children: [
        Text(
          '좌동',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
        const SizedBox(width: 4.0),
        Icon(
          CupertinoIcons.chevron_down,
          size: 15.0,
        )
      ],
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(CupertinoIcons.search),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(CupertinoIcons.list_dash),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(CupertinoIcons.bell),
      )
    ],
    bottom: appBarBottomLine(),
  );
}
