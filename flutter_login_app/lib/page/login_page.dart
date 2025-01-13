import 'package:flutter/material.dart';
import 'package:flutter_login_app/components/custom_form.dart';
import 'package:flutter_login_app/logo.dart';

import 'package:flutter_login_app/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: xlargeGap),
          Logo('Login'),
          SizedBox(height: largeGap),
          CustomForm(),
        ],
      ),
    );
  }
}
