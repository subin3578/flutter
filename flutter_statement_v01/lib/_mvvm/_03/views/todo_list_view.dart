import 'package:flutter/material.dart';
import 'package:flutter_statement_v01/_mvvm/_02/models/todo_item.dart';
import 'package:flutter_statement_v01/riverpot_v01/_01/todo.dart';

class TodoListView extends StatefulWidget {
  const TodoListView({super.key});

  @override
  State<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  TextEditingController _controller = TextEditingController();
  // Model
  List<TodoItem> _todoItems = [
    TodoItem(title: '플러터 공부', isDone: false),
    TodoItem(title: '낮잠 자기', isDone: true),
    TodoItem(title: '자바 공부', isDone: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Enter todo item...',
              suffixIcon: IconButton(
                onPressed: () {
                  // TODO : 로직 추가 예정
                  _todoItems.add(TodoItem(title: _controller.text));
                  setState(() {});
                  _controller.clear(); // 버튼 누르면 값이 없어지도록
                },
                icon: Icon(
                  Icons.add,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Expanded(
          child: ListView.builder(
            itemCount: _todoItems.length,
            itemBuilder: (context, index) {
              final TodoItem item = _todoItems[index];

              return ListTile(
                title: Text(item.title),
                trailing: Checkbox(
                    value: item.isDone,
                    onChanged: (value) {
                      setState(() {
                        item.isDone = !item.isDone;
                      });
                    }),
              );
            },
          ),
        )
      ],
    );
  }
}
