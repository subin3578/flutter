// 비동기 처리 1. async/await
// 비동기 코드를 동기 코드처럼 사용할 수 있도록 해주는 문법이다.
// 비동기 작업이 완료될 때 까지 기다린 후 값을 반환한다.
// 코드 가독성이 좋고 디버깅이 용이하다.
// 반드시 async 함수 내에서 적어야함

// main() 함수 입성 - main() 함수 끝 - print()
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
