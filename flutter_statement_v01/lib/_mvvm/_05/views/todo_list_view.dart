import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement_v01/_mvvm/_05/models/todo_item.dart';
import 'package:flutter_statement_v01/_mvvm/_05/view_models/todo_list_view_model.dart';
import 'package:flutter_statement_v01/common_utils/logger.dart';

class TodoListView extends ConsumerWidget {
  // 상태관리 --> 동기화 (공유 데이터를 여러 화면에서 동일한 것을 보장)
  // 의존성 관리 <-- 강한소유를 약하게
  TextEditingController _controller = TextEditingController();
  TodoListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logger.d('build() 메서드 인식');
    // todoItem 객체는 상태가 있다 - 즉 변수가 변화할 가능성 존재
    final todos = ref.watch(todoListViewModelProvider);
    logger.d('todo : $todos');
    // 창고에 직접 접근
    // todoNofier => ViewModel
    final todoNotifier = ref.read(todoListViewModelProvider.notifier);

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
                  todoNotifier.addItem(_controller.text);
                  _controller.clear();
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
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final TodoItem item = todos[index];

              return ListTile(
                title: Text(item.title),
                trailing: Checkbox(
                    value: item.isDone,
                    onChanged: (value) {
                      todoNotifier.toggleItem(item);
                    }),
              );
            },
          ),
        )
      ],
    );
  }
}
