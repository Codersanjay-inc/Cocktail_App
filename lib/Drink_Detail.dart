import 'package:cocktail_app/model/drinks_model.dart';
import 'package:flutter/material.dart';

class DrinkDetail extends StatelessWidget {
  final drink;
  const DrinkDetail({super.key, required this.drink});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('drink detail')),
    );
  }
}
