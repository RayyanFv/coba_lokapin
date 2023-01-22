import 'package:coba_lokapin/bottomNavBarController/bottomNavBarController.dart';
import 'package:coba_lokapin/signInUpPage/signInPage.dart';
import 'package:coba_lokapin/signInUpPage/signUpPage.dart';
import 'package:coba_lokapin/signInUpPage/splashScreenPage.dart';
import 'package:flutter/material.dart';

void main () => runApp(myApp());

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => splashScreenPage(),
        '/signInPage': (context) => signInPage(),
        '/signUpPage' : (context) => signUpPage(),
        '/mainPage' : (context) => mainPage(),

      },
    );
  }
}
