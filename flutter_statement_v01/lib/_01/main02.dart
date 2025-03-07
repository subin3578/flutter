import 'package:flutter/material.dart';
import 'package:flutter_statement_v01/main.dart';

void main() => runApp(
      MaterialApp(home: MyStatefulWidget()),
    );

//////////////////
// 포인트 !
// 사실 상태는 변수에 할당된 값이다. 상태가 있다는 말은
// 값들이 변화할 수 있는 가능성을 이야기 한다.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // 변수 --- 고정 ---> 상수
  final msg = '저는 stateful 위젯 입니다.';

  // 변수에 할당된 값이 상수가 아님 언제든지 변경 가능
  // 즉, 여기를 상태 변수라고도 부른다.
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          child: Text('$msg onTap Count : ${count}'),
          onTap: () {
            setState(() {
              count += 1;
            });
          },
        ),
        // child: Text('$widget.msg onTap Count : ${widget.count}'),
        // widget.msg <- 로 부모의 값을 사용할 수 있음
      ),
    );
  }
}
///////////////////
