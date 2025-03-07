import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement_v01/common_utils/logger.dart';
import 'package:flutter_statement_v01/main.dart';
import 'package:flutter_statement_v01/riverpot_v01/_01/todo.dart';

void main() {
  runApp(
      // 1. Riverpod을 사용하기 위해 ProviderScope로 감싼다
      ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoPage(),
    );
  }
} // end of MyApp

// 2. 위젯을 ConsumerWidget으로 만들어 주면 ProviderScope에 접근 가능
class TodoPage extends ConsumerWidget {
  const TodoPage({super.key});

  // 3. ConsumerWidget 클래스의 build 메서드는 WidgetRef 참조 가능
  @override
  // 4. ref를 통해서 ProviderScope가 관리하는 창고 또는 창고가 관리하는 데이터에 접근 가능
  Widget build(BuildContext context, WidgetRef ref) {
    // 5. ref.read() 메서드 사용 가능 - 창고에 직접 접근 or 상태값을 한번만 수신할 때 사용
    // 6. ref.watch() 상태값이 변경되는 것을 계속 수신할 때 사용한다 (구독)
    // 7. 이번 예제에서는 창고 관리자(여러명 중) Provider 창고 관리자 사용 (1회성 데이터 제공) - 알바생
    Todo todo = ref.read(todoProvider);
    logger.d('Todo 데이터 확인 : $todo');
    return SafeArea(
        child: Scaffold(
      body: Center(
          child:
              Text('완료 여부 : ${todo.isCompleted} , 내용 : ${todo.description}')),
    ));
  }
}
