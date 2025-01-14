// 비동기 처리 2. then
// Future 또는 Promise 의 결과를 콜백 함수를 통해 처리한다.
// 즉 이말은 비동기 작업이 완료될 때 실행할 로직을 .then()에 작성한다.
// 여러 비동기 작업을 순차적으로 연결하여 처리할 수 있는 장점이 있다.
// 여러 비동기 작업을 병렬로 실행하거나 결합할 수 있습니다.
// 콜백이 중첩될 경우 콜백 지옥이 발생할 수 있다.

void main() {
  print('main() 함수 입성');

  selectAllUsers().then((users) {
    for (var user in users) {
      print('사용자 이름: ${user.name}, 나이: ${user.age}');
    }
  });

  print('main() 함수 끝');
}

Future<List<User>> selectAllUsers() {
  List<User> users = [User(name: "황수빈", age: 27), User(name: "김민희", age: 30)];
  return Future.delayed(Duration(seconds: 3), () => users);
}

class User {
  String name;
  int age;

  User({required this.name, required this.age});
}
