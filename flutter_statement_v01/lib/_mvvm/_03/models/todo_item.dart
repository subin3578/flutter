// Model

class TodoItem {
  String title;
  bool isDone;

  TodoItem({required this.title, this.isDone = false});

  // 2단계 코드 시작
  TodoItem CopyWith({String? title, bool? isDone}) {
    return TodoItem(
      title: title ?? this.title,
      isDone: isDone ?? this.isDone,
    );
  }
}
