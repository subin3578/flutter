import 'package:flutter/material.dart';

class BookCartPage extends StatelessWidget {
  final List<String> mySelectedBooks;

  const BookCartPage({required this.mySelectedBooks, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: mySelectedBooks.map(
        (book) {
          return ListTile(
            leading: Container(
              width: 35,
              height: 35,
            ),
            title: Text(
              book,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
