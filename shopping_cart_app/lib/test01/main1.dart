import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// 이벤트가 일어나면 다시 화면을 그려야 한다.

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // 현재 시간 상태를 저장하는 변수
  String timeOfDay = '낮';

  @override
  Widget build(BuildContext context) {
    print('build()메서드 입성 - 재 호출');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: Container(
          color: Colors.pink,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 텍스트
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    print('onTap() - 이벤트 리스너 생성');
                    timeOfDay = (timeOfDay == '낮' ? '밤' : '낮');
                    print('현재 상태 값 : ${timeOfDay}');

                    setState(() {
                      print('setState() - 화면 다시 그려줘');
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    color: (timeOfDay == '낮' ? Colors.green : Colors.yellow),
                    child: Text(
                      timeOfDay,
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlutterLogo(
                  size: 300,
                  style: FlutterLogoStyle.markOnly,
                  textColor: Colors.red,
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
