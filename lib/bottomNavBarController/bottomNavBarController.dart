import 'package:coba_lokapin/style/style.dart';
import 'package:flutter/material.dart';
import 'package:coba_lokapin/bottomNavBarPage/homePage.dart';
import 'package:coba_lokapin/bottomNavBarPage/communityPage.dart';
import 'package:coba_lokapin/bottomNavBarPage/petCheckerPage.dart';
import 'package:coba_lokapin/bottomNavBarPage/trackingPage.dart';
import 'package:coba_lokapin/bottomNavBarPage/vetPage.dart';

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int currentIndex = 0;
  final List<Widget> _pages = [homePage(),petCheckerPage(),trackingPage(),vetPage(), communityPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: primaryColor,
          onTap: (value){
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Image.asset('assets/homeIcon.png',width: 21,),label: 'Home', activeIcon: Image.asset('assets/homeSelected.png', width: 21,)),
            BottomNavigationBarItem(icon: Image.asset('assets/communityIcon.png', width: 20,),label: 'Community'),
            BottomNavigationBarItem(icon: Image.asset('assets/locationIcon.png', width: 20,),label: 'Tracking', activeIcon: Image.asset('assets/locationSelected.png', width: 21,)),
            BottomNavigationBarItem(icon: Image.asset('assets/calendarIcon.png', width: 20,),label: 'Pet checker'),
            BottomNavigationBarItem(icon: Image.asset('assets/homeIcon.png', width: 20,),label: 'Vet'),
          ]
      ),
    );

  }
}