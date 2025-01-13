import 'package:flutter/material.dart';
import 'package:flutter_login_app/logo.dart';
import 'package:flutter_login_app/size.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(height: xlargeGap),
          Logo('Care Soft'),
          SizedBox(height: xlargeGap),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Get Started'))
        ],
      ),
    ));
  }
}
