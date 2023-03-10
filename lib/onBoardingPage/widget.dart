import 'package:flutter/material.dart';
import 'package:coba_lokapin/onBoardingPage/onBoardingPage.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key ?key,
    required this.text, 
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => RaisedButton(
    onPressed: onClicked,
    color: Theme.of(context).primaryColor,
    shape: StadiumBorder(),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    child: Text(
      text,
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
  );

  RaisedButton({required VoidCallback onPressed, required Color color, required StadiumBorder shape, required EdgeInsets padding, required Text child}) {}
}