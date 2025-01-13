import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('AppBar'),
        ),
        body: FormPage(),
      )),
    );
  }
}

// 변경 가능한 위젯
class FormPage extends StatefulWidget {
  const FormPage({super.key});

  // 컴포지션 관계 - 강한 소유의 관계
  @override
  State<FormPage> createState() => _FormPageState();
}

String _username = '';
String _password = '';

// 타입추론 - var , const

// 폼 상태를 추적하기 위해 관리하는 고유키 하나 선언
// 즉 폼의 상태에 접근 가능
final _formKey = GlobalKey<FormState>();

class _FormPageState extends State<FormPage> {
  // 화면을 그리는 메서드
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey, // 여기에 key 적어줌
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'username을 입력하시오';
                }
                print('텍스트 필드 사용자 이름 : ${value}');
                return null;
              },
              onSaved: (value) {
                print('사용자 이름 필드 onSaved 호출됨');
                _username = value!;
              },
            ),
            const SizedBox(height: 24.0),
            TextFormField(
              obscureText: true, // password 입력 시 ****
              validator: (value) {
                if (value == null || value.isEmpty) {
                  // 유효성을 통과하지 못하면 텍스트 필드에 알려줘
                  return '패스워드를 입력하시오';
                }
                return null;
                // print('텍스트 필드 사용자 비밀번호 : ${value}');
              },
              onSaved: (value) {
                print('사용자 비밀번호 필드 onSaved 호출됨');
                _password = value!;
              },
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
                onPressed: () {
                  // 유효성 검사 호출
                  if (_formKey.currentState!.validate()) {
                    // true 일 경우 들어옴
                    print('true 반환');
                    // onSaved 함수 호출
                    _formKey.currentState?.save();

                    // 통신 하는 코드 - 즉 서버 측으로 데이터를 보냄
                    // 멤버 변수를 활용
                  } else {
                    // false 일 경우 들어옴
                    print('false 반환');
                  }
                },
                child: Text('Login'))
          ],
        ));
  }
}
