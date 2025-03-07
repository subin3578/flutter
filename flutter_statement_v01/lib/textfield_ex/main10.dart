import 'package:flutter/material.dart';
import 'package:flutter_statement_v01/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // TextEditing를 사용하여 텍스트 필드의 입력값을 제어
  final username = TextEditingController();
  final password = TextEditingController();
  final scroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('App Bar'),
        ),
        body: Column(
          children: [
            Flexible(
              child: ListView(
                controller: scroll,
                shrinkWrap: true,
                // 자식 컨텐츠 높이만큼 ListView크기를 잡아줌
                children: [
                  Container(
                    color: Colors.yellow,
                    height: 700,
                  ),
                  TextFormField(
                    onTap: () async {
                      print('UserName Textfield');
                      await Future.delayed(Duration(seconds: 2));
                      scroll.jumpTo(scroll.position.maxScrollExtent);
                    },
                    controller: username,
                    decoration: InputDecoration(
                      labelText: 'UserName',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    onTap: () async {
                      await Future.delayed(Duration(milliseconds: 2000));
                      scroll.jumpTo(scroll.position.maxScrollExtent);
                      print('Password Textfield');
                    },
                    controller: password,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16)
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('로그인'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
