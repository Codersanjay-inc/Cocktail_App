// To parse this JSON data, do
//
//     final drinks = drinksFromJson(jsonString);

import 'dart:convert';

Drinks drinksFromJson(String str) => Drinks.fromJson(json.decode(str));

String drinksToJson(Drinks data) => json.encode(data.toJson());

class Drinks {
  Drinks({
    this.drinks,
  });

  List<Drink>? drinks;

  factory Drinks.fromJson(Map<String, dynamic> json) => Drinks(
        drinks: List<Drink>.from(json["drinks"]?.map((x) => Drink.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "drinks": List<dynamic>.from(drinks!.map((x) => x.toJson())),
      };
}

class Drink {
  Drink({
    this.strDrink,
    this.strDrinkThumb,
    this.idDrink,
  });

  String? strDrink;
  String? strDrinkThumb;
  String? idDrink;

  factory Drink.fromJson(Map<String, dynamic> json) => Drink(
        strDrink: json["strDrink"],
        strDrinkThumb: json["strDrinkThumb"],
        idDrink: json["idDrink"],
      );

  Map<String, dynamic> toJson() => {
        "strDrink": strDrink,
        "strDrinkThumb": strDrinkThumb,
        "idDrink": idDrink,
      };
}
