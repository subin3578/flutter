import 'package:flutter/material.dart';

// 보통 협업 ---> 디자이너
// 전역 함수로 만들어 보자.

// const MaterialColor primaryWhite = MaterialColor(primary, swatch)
/*
  1. const 키워드 사용
  - 컴파일 시점에 값이 고정되어 메모리 효율성이 향상됩니다.

  2. 성능 최적화 팁
  - 테마 설정은 앱 전체에 영향을 미치므로 신중하게 설정해야 합니다.
  - 불필요한 테마 변경은 피하는 것이 좋습니다.



 */

const MaterialColor primaryWhite = MaterialColor(
  // 0xFFFFFF, // int primary --> 기본이 되는 대표 색상 값
  0xFFFFFF, //  primary : 대표 색상 (흰색)
  // <>{}
  // Map<int, Color> swatch
  <int, Color>{
    // swatch : 색상 견본 모음
    50: Color(0xFFFFFFFF), // 50% opacity (가장 밝은 단계)
    100: Color(0xFFF9F9F9), // Lighter shade (점점 어두워짐)
    200: Color(0xFFF2F2F2),
    300: Color(0xFFE6E6E6),
    400: Color(0xFFD9D9D9),
    500: Color(0xCCCCCC), // Mid-light gray
    600: Color(0xB3B3B3), // Darker gray
    700: Color(0x999999), // Darker shade
    800: Color(0x808080), // Even darker shade
    900: Color(0x666666), // Very dark gray (가장 어두운 단계)
  },
);

/*
    MaterialColor
    - 머터리얼 디자인의 색상 시스템 준수
    - 다양한 상황에서 일관된 색상 사용 가능
    - 자동으로 적절한 명암비 계산 가능

     * 실제 앱에서의 활용
     Container(color: primaryWhite[50]) // 밝은 버전 활용

     * 개발자가 알아야 할 점
     - primary 색상은 앱의 브랜드 색상으로 신중하게 선택
     - swatch의 각 단계는 접근성 가이드라인 준수 필요
     - 디자이너와의 협업 시 색상 팔레트 문서화 중요

     * MaterialColor는 단순한 색상이 아닌,
       앱 전체의 일관된 디자인 구축하는 기초가 됨
 */

// 전역 함수
// 앱의 전체 디자인 테마를 설정하는 함수를 선언
ThemeData theme() {
  // 앱의 기본 디자인 설정을 담고 있음
  return ThemeData(
    // 앱의 주요 색상을 하얀색으로 설정
    primarySwatch: primaryWhite,

    // 앱 상단 바(AppBar)의 디자인을 설정합니다.
    appBarTheme: const AppBarTheme(
      // 아이콘의 색상을 파란색 계열로 설정합니다.
      iconTheme: IconThemeData(color: Colors.blueAccent),
      // 배경색 명시적으로 설정
      backgroundColor: Colors.white,
      // 그림자 효과 제거
      elevation: 0,
    ),
  );
}
