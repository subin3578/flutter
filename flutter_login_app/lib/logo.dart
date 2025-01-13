import 'package:flutter/material.dart';
// 외부 라이브러 가져 옴
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  const Logo(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          height: 70,
          width: 70,
          'assets/logo.svg',
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
