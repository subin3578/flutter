void main() async {
  await addNumber1(10, 20);
  print('메인 함수 완료');
}
// await/async 를 안걸면 저 함수에서 3초 딜레이가 존재하므로
// addNumber1함수 시작 - 메인 함수 완료 - addNumber1  연산 완료

// await/async 를 걸면 저 함수에서 3초 딜레이 기다려주고
// addNumber1 함수 시작 - addNumber1 연산 완료 - 메인 함수 완료

Future<void> addNumber1(int n1, int n2) async {
  print('addNumber1 함수 시작');
  // 함수 내부에 결과값은 지역 변수를 무조건 만드는 것이 권장..
  // 가독성, 안정성, 유지보수성을 높이기 위해서
  var result = 0;
  await Future.delayed(Duration(seconds: 3), () {
    result = n1 + n2;
  });
  print('addNumber1 연산 완료 : ${result}');
}

// Future<int> addNumber(int n1, int n2) {
//   print('addNumber1 함수 시작');
//   // 함수 내부에 결과값은 지역 변수를 무조건 만드는 것이 권장..
//   // 가독성, 안정성, 유지보수성을 높이기 위해서
//   var result = 0;
//   Future.delayed(Duration(seconds: 3), () {
//     result = n1 + n2;
//   });
//   print('addNumber1 연산 완료 : ${result}');
//   return result;
// }
