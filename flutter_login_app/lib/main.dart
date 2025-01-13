import 'package:flutter/material.dart';
import 'package:flutter_login_app/components/custom_form.dart';
import 'package:flutter_login_app/page/login_page.dart';

import 'package:flutter_login_app/size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: LoginPage(),
        ),
      ),
    );
  }
}
