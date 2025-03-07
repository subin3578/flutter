import 'package:clone_coding_always/clone_always_ui/screen/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AlwaysUI());
}

class AlwaysUI extends StatelessWidget {
  AlwaysUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'always',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
