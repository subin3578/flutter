import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSize appBarBottomLine() {
  return PreferredSize(
    preferredSize: Size.fromHeight(0.5),
    child: Divider(
      thickness: 0.5,
      height: 0.5,
      color: Colors.grey,
    ),
  );
}
