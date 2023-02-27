import 'package:coba_lokapin/style/style.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class splashScreenPage extends StatefulWidget {
  const splashScreenPage({Key? key}) : super(key: key);

  @override
  State<splashScreenPage> createState() => _splashScreenPageState();
}

class _splashScreenPageState extends State<splashScreenPage> {
  @override

  void initState(){
    Timer(Duration(seconds: 3),
            ()=> Navigator.of(context).pushNamed('/onBoardingPage'),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/splashScreenLogo.png')),
              ),
            )
          ],
        ),
      ),

    );
  }
}
