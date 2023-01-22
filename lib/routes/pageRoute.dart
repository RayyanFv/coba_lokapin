import 'package:coba_lokapin/routes/routeName.dart';
import 'package:coba_lokapin/signInUpPage/signInPage.dart';
import 'package:coba_lokapin/signInUpPage/signUpPage.dart';
import 'package:get/get.dart';


class pageRoute{
  static final pages = [
    GetPage(name: routeName.signInPage, page: ()=> signInPage()),
    GetPage(name: routeName.signUpPage, page: ()=> signUpPage()),
  ];
}