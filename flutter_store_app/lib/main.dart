// 플러터 동작 시 반드시 있어야 함
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
} // end of main

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // Flutter 개발을 할 때 맨 밑바닥부터 개발하는 것은 힘들다.
  // 기본적 개발을 할 수 있도록 매우 유용한 클래스를 제공한다
  // MaterialApp
  @override
  Widget build(BuildContext context) {
    // 생성자
    // home: (라벨) - 선택적 명명 매개변수로 설계되어 있다.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(), // div 박스와 유사
    );
  }
} // end of MyApp

class StorePage extends StatelessWidget {
  StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 시각적 레이아웃 구조를 잡아주는 위젯이다.
    return Scaffold(
      body: SafeArea(
        child: Column(
          // 위젯은 자식 또는 자식들을 속성으로 가질 수 있다.
          children: [
            // 패딩 위젯이나 마진에 값을 EdgeInsets 클래스로 감싸서 넣는다
            Padding(
              padding: EdgeInsets.all(25.0),
              // Row 위젯은 자식 위젯들을 수평 방향으로 정렬해준다/
              child: Row(
                // 자식 1
                children: [
                  Text(
                    'Woman',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(), // Spacer 위젯은 남은 공간을 차지하여 위젯 간격을 조절할 때 활용 가능
                  Text(
                    'Kids',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Shoes',
                    style: TextStyle(
                        fontWeight: FontWeight.bold), // 대문자. 직접참조 - static 변수
                  ),
                  Spacer(),
                  Text(
                    'Bag',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),

            // Expanded 위젯은 자식 위젯을 가용 공간에 맞게 확장시켜 배치하는 위젯이다.
            // 자식 2
            Expanded(
                child: Image.asset(
              'assets/bag.jpeg',
              fit: BoxFit.cover, // 화면에 맞게 키우고 잘리는 부분 생김
            )),

            // SizedBox widjet은 고정된 크기의 빈 공간을 만들거나 자식 위젯의 크기를 제한할 때 사용한다.
            SizedBox(height: 20),
            // 자식 3
            Expanded(
                child: Image.asset(
              'assets/cloth.jpeg',
              fit: BoxFit.cover,
            ))
          ],
        ),
      ),
    );
  }
}
