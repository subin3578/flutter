import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement_v01/riverpot_v01/_05/book.dart';

import 'book.dart';

void main() {
  // 1. ProviderScope 사용
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyBookPage(),
    );
  }
}

// 2.
class MyBookPage extends ConsumerWidget {
  const MyBookPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 한 번 데이터 가져오거나 창고 자체를 접근할 수 있음
    String getBook = ref.read(myBookStoreNotiProvider);
    //
    ref.watch(myBookStoreNotiProvider);

    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Column(
          children: [
            Text(
              '$getBook',
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
                onPressed: () {
                  MyBookStore notiStore =
                      ref.read(myBookStoreNotiProvider.notifier);
                  notiStore.changeData('홍길동전 개정판');
                },
                child: Text('책 변경하기'))
          ],
        )),
      ),
    );
  }
}
/* 정리
* Provider (01 예제) - 1회 알바생
* - 데이터를 단순히 한 번 제공하는 역할, 상태가 변하지 않는 데이터를 관리할 때 사용
* - 즉, 주로 정적인 데이터를 제공할 때 사용한다. (단순 문자열, 정적 객체 등)
*
* StateNotifierProvider (02 예제) - 창고 관리자이다.
*   riverpod 1.x.x..
* - 상태를 관리(State) 변경할 수 있는 창고 관리자이다.
* - 상태가 변경이 되면 이를 구독(watch)중인 모든 위젯에게 알려준다.
*   ref.read() 창고(FruitStore) 자체 접근할 수 있고,
*   ref.watch() 계속 구독하여 상태 변경을 감지할 수 있다
*
*
*
*
*/
