import 'package:cocktail_app/model/drinks_model.dart';
import 'package:flutter/material.dart';

class DrinkDetail extends StatelessWidget {
  const DrinkDetail({super.key});

  @override
  Widget build(BuildContext context) {
    var drinkResp;
    var index;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          ' ${drinkResp?.drinks?[index].strDrink}',
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
                  '${drinkResp?.drinks?[index].strDrinkThumb}',
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
