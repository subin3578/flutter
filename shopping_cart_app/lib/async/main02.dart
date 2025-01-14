import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ParentView(),
    );
  }
}

// 부모 클래스

class ParentView extends StatefulWidget {
  const ParentView({super.key});

  @override
  State<ParentView> createState() => _ParentViewState();
}

class _ParentViewState extends State<ParentView> {
  String displayText = '여기는 부모 위젯 변수';

  void handleChildEvent(String message) {
    setState(() {
      displayText = message;
      print('setState() 메서드 실행 - build() 재실행');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    displayText,
                    style: TextStyle(fontSize: 30),
                  ),
                )),
            Expanded(
                flex: 1,
                child: ChildA(
                  onCallbackReceived: handleChildEvent,
                )),
            Expanded(
                flex: 1,
                child: ChildB(
                  onCallbackReceived: handleChildEvent,
                )),
          ],
        ),
      ),
    );
  }
}

class ChildA extends StatelessWidget {
  const ChildA({required this.onCallbackReceived, super.key});

  final Function(String message) onCallbackReceived;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: InkWell(
        onTap: () {
          print('child A 이벤트 발생');
          onCallbackReceived('A가 연산한 데이터를 전달');
        },
        child: Container(
          width: double.infinity,
          color: Colors.orange,
          child: Center(child: Text('CHILD A')),
        ),
      ),
    );
  }
}

class ChildB extends StatelessWidget {
  const ChildB({required this.onCallbackReceived, super.key});

  final Function(String message) onCallbackReceived;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: InkWell(
        onTap: () {
          print('child B 이벤트 발생');
          // Function 데이터 타입
          onCallbackReceived('B가 연산한 데이터를 전달');
          // onCallbackReceived() -> 호출
        },
        child: Container(
          width: double.infinity,
          color: Colors.green,
          child: Center(child: Text('CHILD B')),
        ),
      ),
    );
  }
}
