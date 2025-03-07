import 'package:flutter_riverpod/flutter_riverpod.dart';

// Book 객체
class Book {
  final String title;
  final String author;

  Book({required this.title, required this.author});
}

// Book 상태를 관리하는 StateNotifier
class BookStore extends StateNotifier<Book> {
  BookStore(super.state);

  // Book 상태를 변경하는 함수
  void changeBook(String title, String author) {
    state = Book(title: title, author: author);
  }
}

// 초기 Book 객체
Book myBook = Book(title: "흐르는 강물처럼", author: "홍길동");

// Book 상태를 관리할 provider
final bookProvider = StateNotifierProvider<BookStore, Book>(
  (ref) => BookStore(myBook),
);
