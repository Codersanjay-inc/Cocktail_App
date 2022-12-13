import 'dart:convert';

import 'package:cocktail_app/Drink_Detail.dart';
import 'package:cocktail_app/model/drinks_model.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var api = "www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail"; call krina
  var api = "https://thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail";
  Drinks? drinkResp;
  var drinks;

  @override
  void initState() {
    super.initState();

    fetchData();
  }

  fetchData() async {
    final response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      drinkResp = Drinks.fromJson(jsonDecode(response.body));
      print('dat si $drinkResp');
      setState(() {});
    } else {
      print('dat si $drinkResp');

      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.restaurant_menu_outlined,
          color: Colors.black,
        ),
        actions: const [
          Icon(
            Icons.qr_code_scanner_outlined,
            color: Colors.black,
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Cocktail App',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: drinkResp != null
            ? Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                      Color.fromARGB(255, 244, 235, 224),
                      Color.fromARGB(255, 155, 154, 151),
                    ])),
                child: ListView.builder(
                  itemCount: 59,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ' ${drinkResp?.drinks?[index].strDrink}',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(' ${drinkResp?.drinks?[index].idDrink}',
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                              ],
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        print(
                            'the data is ${drinkResp?.drinks?[index].idDrink}');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => DrinkDetail(
                                    d: index,
                                    myData: drinkResp?.drinks?[index],
                                    allDrinks: drinkResp?.drinks,
                                  ))),
                        );
                      },
                    );
                  },
                ),
              )
            : const CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
      ),
    );
  }
}
