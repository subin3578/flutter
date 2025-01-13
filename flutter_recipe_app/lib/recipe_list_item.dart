import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;

  // 하드코딩
  const RecipeListItem(this.imageName, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 20), // EdgeInsets.only(top : 20 , bottom : 20)
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬할 때 사용함
        children: [
          // 이미지 비율을 지정할 수 있다.
          AspectRatio(
            aspectRatio: 2 / 1,
            child: ClipRRect(
              child: Image.asset('assets/images/${imageName}.jpeg',
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          SizedBox(height: 10),
          Text(title, style: TextStyle(fontSize: 20)),
          Text(
              "Have you ever made your own Made $title? Once you've tried a homemade $title, you'll never go back")
        ],
      ),
    );
  }
}
