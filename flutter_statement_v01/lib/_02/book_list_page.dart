import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookListPage extends StatelessWidget {
  final Function(String) onToggleSaved;
  // 부모 위젯으로 부터 넘겨 받은 장바구니 데이터
  final List<String> selectedBook;
  BookListPage(
      {required this.onToggleSaved, required this.selectedBook, super.key});

  // 임시 데이터 - 교보문고에서 볼 수 있는 책 목록 리스트
  final List<String> books = [
    '호모사피엔스',
    '다트 입문서',
    '홍길동전',
    '코드 리팩토링',
    '전치사 도감',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: books.map(
        (book) {
          final bool isSelectedBook = selectedBook.contains(book);
          // 함수의 바디
          // 사용자가 장바구니에 넣었는지 안 넣었는지
          return ListTile(
            leading: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.black),
              ),
            ),
            title: Text(
              book,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: IconButton(
                onPressed: () {
                  print('버튼 클릭됨 - 부모에게 받은 함수 호출');
                  onToggleSaved(book);
                },
                icon: Icon(
                    isSelectedBook ? Icons.remove_circle : Icons.add_circle),
                color: isSelectedBook ? Colors.red : Colors.green),
          );
        },
      ).toList(),
    );
  }
}
