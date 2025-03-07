import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement_v01/_mvvm/_02/views/todo_list_view.dart';
import 'package:flutter_statement_v01/_mvvm/_04/views/chatting_room.dart';

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
          child: ChatRoomPage(),
        ));
  }
}
