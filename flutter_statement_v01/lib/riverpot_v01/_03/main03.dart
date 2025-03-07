import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_statement_v01/common_utils/logger.dart';

import 'book.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookPage(),
    );
  }
}

class BookPage extends ConsumerWidget {
  const BookPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String book = ref.watch(myBookProvider);
    logger.d(book);
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              book,
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {
                  MyBookStore myBookStore = ref.read(myBookProvider.notifier);
                  myBookStore.changeData('흐르는 바다처럼');
                },
                child: Text('흐르는 바다처럼으로 변경'))
          ],
        ),
      ),
    );
  }
}
