import 'package:flutter/material.dart';

// 비동기 프로그래밍 테스트 코드
// 동기성 - 모든 코드가 순차적으로 진행되는 형태
// 비동기성 - 코드가 동시 다발적으로 실행, 순차적 실행을 보장할 수 없다/

// 키워드 묶음
// async / await -> Future : 1회만 응답을 돌려 받는 경우 사용

// 규칙 - 함수 내부에서 awiat 키워드를 가지고 있으면
// 그 함수를 감싸는 블록은 무조건 async 키워드 붙혀야 함
// 컴파일러에게 비동기 코드의 존재유무를 알리기 위해

void main() async {
  print('main() 함수 입구 - tast 1 ...');
  var data1 = await fetchData();
  print('task 2 ...');
  print('tast 3 ...');
  print('data1 확인 ${data1}');
}

Future<String> fetchData() {
  return Future.delayed(
    Duration(seconds: 3),
    () {
      return '3초동안 기다렸어 !';
    },
  );
}
