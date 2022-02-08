
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
        splash: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.15),
              Image.asset(
                'assets/images/logo.png',
                scale: size.height * 0.03,
              ),
              SizedBox(height: size.height * 0.08),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
                child: Text(
                  "Elektronik Modul Kelistrikan Bodi Mobil",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.center,
                  ),
              ),
              SizedBox(height: size.height * 0.10),
              CircularProgressIndicator(color: Colors.white,),
              SizedBox(height: size.height * 0.15),
              Text('Copyright © 2021 by Bima Ciputra Satrio | Versi 1.0.4', 
                style: TextStyle(
                  fontSize: 12, 
                  fontWeight: FontWeight.w600, 
                  color: Colors.white70
                ),
              ),
              //CircularProgressIndicator(),
            ],
          ),
        ),
        nextScreen: MyHomePage(),
      ),
    );
  }
}