import 'package:flutter/material.dart';
import 'package:eklbm_bima_ciputra_satrio/config/size.config.dart';

class PageWidget extends StatelessWidget {
  const PageWidget({
    Key? key,
    required this.title,
    required this.image,
    required this.description,
    required this.bgColor,
    required this.titleColor,
  }) : super(key: key);

  final String title;
  final String image;
  final String description;
  final Color bgColor;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: bgColor,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(30),
              vertical: getProportionateScreenHeight(10),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Swipe Up', textAlign:TextAlign.center, style: TextStyle(fontSize: 15, color: Color(0xFFA1B6CC), fontWeight: FontWeight.w300),),
                  SizedBox(height: 15,),
                  Text(
                    'Elektronik Modul Kelistrikan Bodi Mobil',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(20),
                      color: titleColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: getProportionateScreenWidth(350),
              child: Center(
                child: Container(
                  width: getProportionateScreenWidth(230),
                  height: getProportionateScreenWidth(200),
                  child: Image.asset(
                    image,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Mobil Listrik",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(25),
                      color: Color(0xFFA1B6CC),
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(30),
                      color: titleColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenWidth(10)),
                  Divider(color: Colors.white),
                  Text(
                    description,
                    style: TextStyle(
                      color: Color(0xFFA1B6CC),
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.1,
                      fontSize: getProportionateScreenWidth(14),
                    ),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
