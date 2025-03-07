import 'package:flutter_riverpod/flutter_riverpod.dart';

// 1. 창고 안 데이터
String myBook = "흐르는 강물처럼";

// 2. 창고 만들기 / 규격 - StateNotifier<데이터 타입>
class MyBookStore extends StateNotifier<String> {
  // super.state는 부모 클래스 state 변수에 등록 시키는 코드이다.
  MyBookStore(super.state);

  // 창고 안에 상품을 변경할 수 있는 머신 만들기
  void changeData(String book) {
    this.state = book;
  }
}

// 3. 창고 관리자 만들기
final myBookProvider = StateNotifierProvider<MyBookStore, String>(
  (ref) => MyBookStore(myBook),
);
