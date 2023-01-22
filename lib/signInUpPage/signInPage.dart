import 'package:coba_lokapin/style/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coba_lokapin/routes/routeName.dart';

class signInPage extends StatelessWidget {
  const signInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: double.infinity,
        color: primaryColor,
        child: Column(
          children: [
            // Padding(padding: EdgeInsets.symmetric(horizontal: 10),),
            Text(
              'Welcome Back', style: headerTextStyle,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "Horray! Your pet happy to see You again. Login and keep your pet all around.", style: secondaryHeaderTextStyle,
            )
          ],
        ),
      );
    }
    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 70, bottom: 10, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email Adress",
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                          decoration: InputDecoration.collapsed(
                            hintText: 'Alamat Email',
                          ),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Password",
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Password',
                          ),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget loginButton() {
      return Container(
        height: 90,
        width: double.infinity,
        padding: EdgeInsets.only(top: 40, left: 16, right: 16),
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/mainPage');
            },
            style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )),
            child: Text(
              "LOGIN", style: secondaryHeaderTextStyle,
            )),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(top: 250, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
            ),
            TextButton(
                child: Text('Sign Up'),
                onPressed: () {
                  Navigator.pushNamed(context, '/signUpPage');
                }),
          ],
        ),
      );
    }


    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(),
          child: Column(
            children: [
              header(),
              emailInput(),
              passwordInput(),
              loginButton(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
