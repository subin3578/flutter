import 'package:flutter/material.dart';
import 'package:flutter_profile_app/pages/profile_page.dart';
import 'package:flutter_profile_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // 객체를 const 사용하려면 생성자가 const 생성자이어야 한다.
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

// 페이지 단위의 위젯을 만들어 보자. --> 클래스로 만들어 보자.
// 우리들의 규칙 2 <--- Scaffold
// end of ProfilePage

// 클래스로 만들어 보자.
// 프로필 헤더 위젯 클래스
