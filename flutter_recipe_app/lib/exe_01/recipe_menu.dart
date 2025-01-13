import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildMenuIcon(Icons.food_bank, 'All'),
      ],
    );
  }
}

Widget _buildMenuIcon(IconData mIcon, String text) {
  return Container(
    width: 60,
    height: 80,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black12),
      borderRadius: BorderRadius.circular(25),
    ),
    child: Column(
      children: [
        Icon(
          mIcon,
          color: Colors.red,
        ),
        SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(color: Colors.black54),
        )
      ],
    ),
  ); // Container
}
