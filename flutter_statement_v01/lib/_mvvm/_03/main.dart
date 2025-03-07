import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement_v01/_mvvm/_02/views/todo_list_view.dart';

void main() {
  runApp(ProviderScope(child: const TodoApp()));
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Todo List'),
        ),
        body: TodoListView(),
      )),
    );
  }
}
