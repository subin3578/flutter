import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement_v01/common_utils/logger.dart';
import 'package:flutter_statement_v01/main.dart';
import 'package:flutter_statement_v01/riverpot_v01/_02/fruit.dart';

void main() {
  // ProviderScope
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FruitPage(),
    );
  }
}

// 2. 리버팟을 사용하기 위해 소비자 ConsumerWidget 변경해야 한다.
class FruitPage extends ConsumerWidget {
  const FruitPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 사용하는 측 코드에서 배운 2가지
    // ref.read(...) , ref.watch(...)
    // 한번만 데이터를 가져올려면 무엇을 사용해야할까 ?
    logger.d('FruitPage Build() 함수 호출 확인');
    // String getFruit = ref.read(fruitProvider); - 한번 읽고 끝남
    String getFruit = ref.watch(fruitProvider); // 상태 변경이 되면 계속 알림을 받아옴
    logger.d('fruite 데이터 확인 : ${getFruit}');

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('data 확인 : $getFruit'),
              ElevatedButton(
                  onPressed: () {
                    FruitStore fruitStore = ref.read(fruitProvider.notifier);
                    fruitStore.changeData('딸기');
                  },
                  child: Text('딸기로 상태 변경하기'))
            ],
          ),
        ),
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
* - 상태를 관리
*
*
*
*
*/
