import 'package:coba_lokapin/signInUpPage/signInPage.dart';
import 'package:coba_lokapin/style/style.dart';
import 'package:flutter/material.dart';
import 'package:coba_lokapin/bottomNavBarPage/homePage.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:coba_lokapin/onBoardingPage/widget.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
    child: IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Track Your Pet Here',
          body: 'Track, monitor, save your pet from your mobile using Lokapin.',
          image: buildImage('assets/onBoardingScreen.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Track Your Pet Here',
          body: 'Track, monitor, save your pet from your mobile using Lokapin.',
          image: buildImage('assets/onBoardingScreen.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Track Your Pet Here',
          body: 'Track, monitor, save your pet from your mobile using Lokapin.',
          image: buildImage('assets/onBoardingScreen.png'),
          decoration: getPageDecoration(),
        ),
      ],
      done: Text('Next', style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () => goToHome(context),
      showSkipButton: true,
      skip: Text('Skip'),
      onSkip: () => goToHome(context),
      next: Icon(Icons.arrow_forward),
      dotsDecorator: getDotDecoration(),
      onChange: (index) => print('Page $index selected'),
      nextFlex: 0,
      // isProgressTap: false,
      // isProgress: false,
      // showNextButton: false,
      freeze: true,
      animationDuration: 1000,
    ),
  );

  void goToHome(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => signInPage()),
  );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
    color: primaryColor,
    //activeColor: Colors.orange,
    size: Size(10, 10),
    activeSize: Size(22, 10),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  );

  PageDecoration getPageDecoration() => PageDecoration(
    titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    bodyTextStyle: TextStyle(fontSize: 20),
    imagePadding: EdgeInsets.all(24),
    pageColor: Colors.white,
  );
}
