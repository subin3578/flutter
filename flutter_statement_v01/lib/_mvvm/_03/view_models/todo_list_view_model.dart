import 'package:flutter_statement_v01/_mvvm/_02/models/todo_item.dart';
import 'package:flutter_statement_v01/riverpot_v01/_01/todo.dart';

class TodoListViewModel {
  List<TodoItem> _items = [];

  List<TodoItem> get items => _items;

  void addItem(String title) {
    _items.add(TodoItem(title: title));
  }

  void toggleItem(TodoItem todo) {
    todo.isDone = !todo.isDone;
  }
}
