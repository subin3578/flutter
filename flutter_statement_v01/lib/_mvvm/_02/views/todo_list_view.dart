import 'package:flutter/material.dart';
import 'package:flutter_statement_v01/_mvvm/_02/models/todo_item.dart';
import 'package:flutter_statement_v01/_mvvm/_02/view_models/todo_list_view_model.dart';
import 'package:flutter_statement_v01/riverpot_v01/_01/todo.dart';

class TodoListView extends StatefulWidget {
  const TodoListView({super.key});

  @override
  State<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  // View는 ViewModel만 바라봄
  TodoListViewModel _listViewModel = TodoListViewModel();
  TextEditingController _controller = TextEditingController();

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
                  _listViewModel.addItem(_controller.text);
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
            itemCount: _listViewModel.items.length,
            itemBuilder: (context, index) {
              final TodoItem item = _listViewModel.items[index];

              return ListTile(
                title: Text(item.title),
                trailing: Checkbox(
                    value: item.isDone,
                    onChanged: (value) {
                      setState(() {
                        _listViewModel.toggleItem(item);
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
