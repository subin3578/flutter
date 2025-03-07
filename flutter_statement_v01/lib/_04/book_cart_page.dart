import 'package:flutter/material.dart';
import 'package:flutter_statement_v01/_04/inherited_parent.dart';

class BookCartPage extends StatelessWidget {
  const BookCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    InheritedParent inheritedParent =
        context.dependOnInheritedWidgetOfExactType<InheritedParent>()!;

    return ListView(
      children: inheritedParent.state.map(
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
