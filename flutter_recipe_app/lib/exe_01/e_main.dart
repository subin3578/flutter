import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'PatuaOne'),
      home: RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  RecipePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar
        appBar: _buildRecipeAppBar(),
        // body
        body: Column(
          children: [
            // 타이틀
            // 메뉴
          ],
        ));
  }
}

AppBar _buildRecipeAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
    actions: [
      Icon(CupertinoIcons.search, color: Colors.black),
      SizedBox(width: 15),
      Icon(CupertinoIcons.heart, color: Colors.red),
      SizedBox(width: 15),
    ],
  );
}
