import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement_v01/_mvvm/_05/models/todo_item.dart';

// 1. 뷰 모델을 사용 하고 있다.
// 2. 뷰 모델의 날개를 달아 주자(riverpod 상태관리 기능 추가)
// 3. 우리의 규칙 뷰 모델 - 창고의 역할
// 4. get, set 사용 하지 말자
class TodoListViewModel extends Notifier<List<TodoItem>> {
  // 리버팟 1에서는 super.

  List<TodoItem> build() {
    return [];
  }
  // List<TodoItem> _items = [];

  // 비즈니스 로직
  void addItem(String title) {
    // state.add <-- 원래 사용하고 있는 객체에 접근해서 추가 했더니
    // 위젯이 변경파악을 못함 왜? 참조 타입이니까 - 기존 객체에 변화주는 것
    // Riverpod 이럴 때 상태 변경 감지 못함
    // 아래 방식은 새로운 객체를 만드는 것이므로 변화 인지함

    if (title.isEmpty) return;
    // 기존 리스트를 복사해 새로운 리스트를 만듬
    state = [
      ...state,
      TodoItem(title: title),
    ];
  }
  // 1단계 코드
  // void toggleItem(TodoItem todo) {
  //   state = [
  //     for (final item in state)
  //       if (item == todo)
  //         TodoItem(
  //           title: item.title,
  //           isDone: !item.isDone,
  //         )
  //       else
  //         item
  //   ];
  // }

  // 2단계 코드
  void toggleItem(TodoItem todo) {
    state = state
        .map(
            (item) => item == todo ? item.CopyWith(isDone: !todo.isDone) : item)
        .toList();
  }

  // 불변성 원칙 위배 (버그 위험 증가)
  // 기존 리스트의 참조를 유지한 채, 리스트 안에 특정 객체의 속성을 직접 수정하는 것
  // flutter 상태 관리에서는 가변 객체 대신 불변 객체를 사용한다

  // 즉, 한 번 만들어진 객체는 변경되지 않으며
  // 새로운 상태를 만들 때는 새 객체를 생성해야 합니다. -> 상태 변경 부작용 최소화
}

// 3. 창고 관리자를 만들고 관리할 창고를 만들어보자
final todoListViewModelProvider =
    NotifierProvider<TodoListViewModel, List<TodoItem>>(() {
  return TodoListViewModel();
});
