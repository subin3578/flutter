import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statement_v01/_02/book_cart_page.dart';
import 'package:flutter_statement_v01/_02/book_list_page.dart';
import 'package:flutter_statement_v01/common_utils/logger.dart';
import 'package:logger/logger.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // 로컬 상태 : 하단에 활동화 된 탭 인덱스 번호
  int pageIndex = 0;

  // 공유 상태 카드에 담긴 북 정보(책 리스트화면, 장바구니 화면에서 공유하는 데이터)
  // 상품 --> 책 (String) 데이터 타입으로 관리하자.
  List<String> mySelectedBook = [];

  void _toggleSaveStates(String book) {
    // 다시 화면을 그려 - build() 재요청
    setState(() {
      if (mySelectedBook.contains(book)) {
        mySelectedBook.remove(book);
      } else {
        mySelectedBook.add(book);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    logger.d('HomeScreen build메서드 호출 됨');
    logger.d('데이터 확인 : ${mySelectedBook.toString()}');
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('텐코의 서재'),
          backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
        ),
        body: IndexedStack(
          index: pageIndex,
          children: [
            BookListPage(
              // _toggleSaveStates - 함수라는 그 자체
              // _toggleSaveStates() - 실행이 됨 / return값이 도출
              selectedBook: mySelectedBook,
              onToggleSaved: _toggleSaveStates,
            ),
            BookCartPage(mySelectedBooks: mySelectedBook),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: (index) {
            // 행위 .. 생략 .. (상태와 행위를 하나의 단위로 묶어서 외부에서 직접 접근을 못하게 하려는 것)
            setState(() {
              pageIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.list_bullet),
              label: 'book-list',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart_fill),
              label: 'book-cart',
            )
          ],
        ),
      ),
    );
  }
}
