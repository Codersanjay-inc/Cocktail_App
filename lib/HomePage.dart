import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var api = "www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail";
  var res;

  @override
  void initState() {
    super.initState();

    fetchData();
  }

  fetchData() async {
    res = await Uri.http(api);
    print(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        leading: const Icon(Icons.restaurant_menu_outlined),
        actions: const [
          Icon(
            Icons.qr_code_scanner_outlined,
          )
        ],
        elevation: 0,
        backgroundColor: Colors.orange,
        title: const Text('Cocktail App'),
        centerTitle: true,
      ),
      body: Center(
        child: res != null
            ? ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Text('item $index');
                },
              )
            : const CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
      ),
    );
  }
}
