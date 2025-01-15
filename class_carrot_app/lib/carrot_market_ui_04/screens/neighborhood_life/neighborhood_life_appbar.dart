import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildNeighborhoodLifeAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    forceMaterialTransparency: true,
    title: Row(
      children: [
        Text(
          '동네생활',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ],
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(CupertinoIcons.search),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(CupertinoIcons.plus_square_on_square),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(CupertinoIcons.bell),
      )
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
