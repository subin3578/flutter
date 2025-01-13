import 'package:flutter/material.dart';

// 보통 협업 ---> 디자이너
// 전역 함수로 만들어 보자.

// Brand Color = Primary Color
// const 컴파일 시점에 상수 : 마치 싱글톤
// 메모리 힙 영역에 SizeBox
// 생성할 때, 값이 바뀌면 다시 만들어 냄
// 이거 전체를 색상 팔레트라고 부름
const MaterialColor primaryWhite = MaterialColor(
  0xFFFFFFFF, // Base color: White
  <int, Color>{
    50: Color(0xFFFFFFFF), // 50% opacity
    100: Color(0xFFF9F9F9), // Lighter shade
    200: Color(0xFFF2F2F2),
    300: Color(0xFFE6E6E6),
    400: Color(0xFFD9D9D9),
    500: Color(0xCCCCCC), // Mid-light gray
    600: Color(0xB3B3B3), // Darker gray
    700: Color(0x999999), // Darker shade
    800: Color(0x808080), // Even darker shade
    900: Color(0x666666), // Very dark gray
  },
);

// 전역 함수
ThemeData theme() {
  // 리턴 타입이 있어야 함
  // 객체를 생성해야 오류가 안 남
  // 앱 전반적인 테마(색상, 글꼴, 위젯 스타일등)를 정의하는 클래스
  // 입니다.  --> 일관된 디자인을 유지하기 위해서 사용한다
  return ThemeData(
      // App 의 기본 색상 팔레트를 설정하는 속성입니다.
      primarySwatch: primaryWhite,
      // 다른 화면으로 전환 시 appBar 가 변경될 수 있어서 기본 appBar를 설정하는 거
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.blueAccent),
      ));
}
