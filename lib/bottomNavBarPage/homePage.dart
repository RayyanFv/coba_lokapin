import 'package:coba_lokapin/style/style.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    Widget userHomePage()
    {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 16),
                width:  40,
                height:  40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                    child: Image.asset('assets/logoLokapin.png',
                    fit: BoxFit.cover),
                  ),
                ),
              Text('Hi Joko Wiyono', style: primaryTextStyle,)
       ]
      ),
      );
    }

    Widget yourPet(){
      return Container(
        // bodyeKh (1076:2290)
        margin:  EdgeInsets.only(left: 16, top: 16, bottom: 16),
        width:  double.infinity,
        child:
        Column(
            crossAxisAlignment:  CrossAxisAlignment.start,
            children:  [
        Container(
        // titleZhZ (1076:2291)
        margin:  EdgeInsets.only(left: 11, top: 10),
        width:  double.infinity,
        height:  36,
        child:
        Row(
          crossAxisAlignment:  CrossAxisAlignment.center,
          children:  [
            Container(
              // yourpetgnB (1076:2292)
              margin:  EdgeInsets.fromLTRB(0, 0, 141, 0),
              child:
              Text(
                'Your Pet',
                style:  primaryTextStyle
              ),
            ),
            Container(
              // buttonbasemHq (I1076:2293;867:8633)
              padding:  EdgeInsets.only(left: 20),
              width: 106,
              height: 36,
              decoration:  BoxDecoration (
                color:  Color(0xfff3f1fe),
                borderRadius:  BorderRadius.circular(8),
              ),
              child:
              Row(
                crossAxisAlignment:  CrossAxisAlignment.center,
                children:  [
                  Container(
                    // plus4Xq (I1076:2293;867:8633;867:8472)
                    margin:  EdgeInsets.fromLTRB(0, 0, 12.17, 0),
                    width:  12,
                    height:  12,
                    child:
                    Image.asset('assets/logoLokapin.png')
                  ),
                  Text(
                    // buttonzRV (I1076:2293;867:8633;867:8365)
                    'Add Pet',
                    style:  primaryTextStyle
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
     ]
    )
   );
  }

    // Widget petStatus(){
    //   Container(
    //     padding: EdgeInsets.only(left: 16),
    //     width: double.infinity,
    //     height: 100,
    //     decoration: BoxDecoration(
    //       color: Colors.white,
    //       borderRadius: BorderRadius.circular(8),
    //     ),
    //     child: Row(
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         Container(
    //           margin: EdgeInsets.only(right: 22),
    //           height: double.infinity,
    //           child: Row(
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             children: [
    //               Container(
    //                 margin: EdgeInsets.only(top: 2, right: 16, bottom: 6),
    //                 padding: EdgeInsets.only(left: 44, top: 44),
    //                 height: double.infinity,
    //                 decoration: BoxDecoration(border: Border.all(color: Colors.white),
    //                   color: Color(0xfff9fafb),
    //                   borderRadius: BorderRadius.circular(100),
    //                   image: DecorationImage(image: AssetImage('assets/logoLokapin.png'))
    //                 ),
    //
    //               )
    //             ],
    //           ),
    //
    //         ),
    //
    //       ],
    //     ),
    //   );
    //
    // }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(child: Container(
        margin: EdgeInsets.symmetric(),
        child: ListView(
          children: [
            userHomePage(),
            yourPet(),

          ],
        ),
      )),
    );
  }
}
