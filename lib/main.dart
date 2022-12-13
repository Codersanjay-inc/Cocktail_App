import 'package:cocktail_app/HomePage.dart';
import 'package:cocktail_app/login.dart';
import 'package:cocktail_app/register.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const CockTail());
}

class CockTail extends StatelessWidget {
  const CockTail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginUi(),
        'register': (context) => const SignUi(),
        'HomePage': (context) => const HomePage(),
      },
    );
  }
}
