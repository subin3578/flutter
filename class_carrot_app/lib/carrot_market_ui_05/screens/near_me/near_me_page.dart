import 'package:class_carrot_app/carrot_market_ui_04/screens/near_me/near_me_appbar.dart';
import 'package:flutter/material.dart';

class NearMePage extends StatelessWidget {
  const NearMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: buildNearMeAppBar(),
      ),
    );
  }
}
