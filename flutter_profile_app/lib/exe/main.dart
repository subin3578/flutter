import 'package:flutter/material.dart';

import 'package:flutter_profile_app/exe/theme.dart';

import '../pages/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // 객체를 const로 사용하려면 생성자가 const 생성자여야 한다.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ProfilePage(),
    );
  }
} // end of MyApp
