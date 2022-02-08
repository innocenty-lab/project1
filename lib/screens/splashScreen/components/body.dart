
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:eklbm_bima_ciputra_satrio/main.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/halamanUtama/home_page.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: AnimatedSplashScreen(
        backgroundColor: Colors.blue,
        splashIconSize: MediaQuery.of(context).size.height,
        // backgroundColor: Colors.yellow,
        duration: 1000,
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                SizedBox(height: size.aspectRatio * 500,),
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  // decoration: BoxDecoration(
                  //   color: Colors.red,
                  //   // color: Color(0xfffbfbf9)
                  // ),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 200, width: 200,
                  ),
                ),
              ],
            ),
            SizedBox(height: size.aspectRatio * 80),
            CircularProgressIndicator(color: Colors.white,),
            SizedBox(height: size.aspectRatio * 470,),
            Column(
              //mainAxisAlignment: MainAxisAlignment.,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Copyright © 2021 by Bima Ciputra Satrio | Versi 1.0.4', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white70),),
              ],
            ),
            //CircularProgressIndicator(),
          ],
        ),
        nextScreen: MyHomePage(),
      ),
    );
  }
}