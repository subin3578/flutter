import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Dio _dio = Dio();
  // 모델링한 타입 추가
  Todo? _todo;

  @override
  void initState() {
    // 한번만 실행하고 싶으면 여기 추가하면 됨
    super.initState();
    _fetchTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: _todo == null
            ? CircularProgressIndicator()
            : Column(
                children: [
                  Text('ID : ${_todo!.id}'),
                  Text('UserId : ${_todo!.userId}'),
                  Text('Title : ${_todo!.title}'),
                  Text('Completed : ${_todo!.completed}'),
                ],
              ));
  }

  _fetchTodos() async {
    // 통신을 담당하는 코드는 기본적으로 예외처리 필수

    try {
      Response response =
          await _dio.get('https://jsonplaceholder.typicode.com/todos/1');

      print('HTTP status code : ${response.statusCode}');
      print('서버 측에서 전달한 데이터 : ${response.data}');
      print('Josn 통신 후 Dart에서는 어떤 타입으로 ?  : ${response.data.runtimeType}');

      // Map 타입에 값을 출력하는 방법
      print('------------------------------------------------------');
      print('data -> title 값 확인 : ${response.data['title']}');
      print('data -> title 값 확인 : ${response.data['id']}');

      print('------------------------------------------------------');
      print('Map 형식인 데이터를 객체로 변경하여 출력하여라');
      Map<String, dynamic> todo = response.data;

      _todo = Todo.fromJson(todo);
      print('todo1 : ${_todo}');
    } catch (e) {
      print('실행 시점 (런타임) 예외가 발생 했어요');
      print(e.toString());
    }
  }
}

class Todo {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Todo(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  // dart 생성자 -> 명명된 생성자
  Todo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        completed = json['completed'];

  @override
  String toString() {
    return 'Todo {userId: $userId, id: $id, title: $title, completed: $completed}';
  }
}
