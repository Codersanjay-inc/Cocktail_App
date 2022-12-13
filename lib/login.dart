import 'package:cocktail_app/HomePage.dart';
import 'package:flutter/material.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(children: [
            Container(
              padding: const EdgeInsets.only(left: 35, top: 165),
              child: const Text(
                "Welcome",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 33.0,
                ),
              ),
            ),
            SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.5,
                        left: 35,
                        right: 35),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'Email',
                          ),
                        ),
                        const SizedBox(height: 30),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'Password',
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Sign In',
                              style: TextStyle(
                                  fontSize: 27.0, fontWeight: FontWeight.w700),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: const Color(0xff4c505b),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    'HomePage',
                                  );
                                },
                                icon: const Icon(Icons.arrow_forward),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'register');
                                },
                                child: const Text('Register Here',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff4c505b),
                                    ))),
                            TextButton(
                                onPressed: () {},
                                child: const Text('Forget Password',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff4c505b),
                                    ))),
                          ],
                        )
                      ],
                    ))),
          ]),
        ));
  }
}
