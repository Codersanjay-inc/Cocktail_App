import 'package:cocktail_app/model/drinks_model.dart';
import 'package:flutter/material.dart';

class DrinkDetail extends StatelessWidget {
  final drinks;
  DrinkDetail({
    key,
    Drinks? drinkResp,
    required this.drinks,
  }) : super(key: key);
  var index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          ' ${drinks?.drinks?[index].strDrink}',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: SizedBox(
                height: 40,
                width: 40,
                child: Image.network(
                  '${drinks?.drinks?[index].strDrinkThumb}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
