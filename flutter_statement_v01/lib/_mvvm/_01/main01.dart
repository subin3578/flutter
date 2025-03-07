import 'package:flutter/material.dart';

void main() {
  runApp(MyApp01());
}

class MyApp01 extends StatelessWidget {
  const MyApp01({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

// View
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('뷰 모델이 없는 코드를 작성중')),
      body: Column(
        children: [
          Text(
            '${_counter}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          ElevatedButton(
              onPressed: () {
                setState(() {});
                _counter += 1;
              },
              child: Text('+버튼'))
        ],
      ),
    );
  }
}
