import 'package:cocktail_app/model/drinks_model.dart';
import 'package:flutter/material.dart';

class DrinkDetail extends StatelessWidget {
  // final Drinks drink;
  final Drink? myData;
  final List<Drink>? allDrinks;
  final int d;
  DrinkDetail({key, required this.d, this.myData, this.allDrinks})
      : super(key: key);
  var index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        elevation: 0,
        title: Text(
          ' ${allDrinks?[d].strDrink}',
          style: const TextStyle(color: Colors.white),
          // '${myData?.idDrink}'
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image.network(
                  '${allDrinks?[d].strDrinkThumb}',
                  // '${myData?.strDrinkThumb}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text('ID: ${allDrinks?[d].idDrink}',
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w400)),
            const SizedBox(
              height: 8,
            ),
            Text(
              ' ${allDrinks?[d].strDrink}',
              style: const TextStyle(fontSize: 22),
              // '${myData?.idDrink}'
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}
