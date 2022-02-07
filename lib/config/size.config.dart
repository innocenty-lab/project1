import 'package:flutter/material.dart';

class SizeConfig {
  static double screenWidht = 0;
  static double screenHeight = 0;
  static double defaultSize = 0;
  static Orientation? orientation;

  void init(BuildContext context) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidht = _mediaQueryData.size.width;
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 812.0) * screenHeight;
}

double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidht;
  return (inputWidth / 375.0) * screenWidth;
}
