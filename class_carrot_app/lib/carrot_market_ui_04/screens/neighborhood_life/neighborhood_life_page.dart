import 'package:class_carrot_app/carrot_market_ui_04/screens/neighborhood_life/neighborhood_life_appbar.dart';
import 'package:flutter/material.dart';

class NeighborhoodLifePage extends StatelessWidget {
  const NeighborhoodLifePage({super.key});

  @override
  Widget build(BuildContext context) {
    print('NeighborhoodLifePage() 메모리 호출 확인');
    return Scaffold(
      appBar: buildNeighborhoodLifeAppBar(),
    );
  }
}
