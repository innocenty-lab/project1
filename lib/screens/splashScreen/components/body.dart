
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
        splashIconSize: MediaQuery.of(context).size.height,
        // backgroundColor: Colors.yellow,
        duration: 3000,
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              // decoration: BoxDecoration(
              //   color: Colors.red,
              //   // color: Color(0xfffbfbf9)
              // ),
              child: Image.asset(
                'assets/images/ic_launcher_round.png',
              ),
            ),
            CircularProgressIndicator(),
            Padding(
              padding: EdgeInsets.fromLTRB(0, size.aspectRatio * 150, 0, 0),
              child: Text("Copyright © 2021 by Bima Ciputra Satrio | Versi 1.0.3"),
            ),
          ],
        ),
        nextScreen: MyHomePage(),
      ),
    );
  }
}