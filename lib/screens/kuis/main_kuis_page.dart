import 'package:eklbm_bima_ciputra_satrio/screens/kuis/kuis_page.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/menu_widget.dart';
import 'package:eklbm_bima_ciputra_satrio/shared/color.dart';
import 'package:flutter/material.dart';

class MainKuisPage extends StatelessWidget {
  const MainKuisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.purple,
      title: Text(
        'Main Kuis'
      ),
      centerTitle: true,
      leading: MenuWidget(),
    ),
    body: Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      stops: [
        // 0.1, 
        0.4, 
        0.8, 
        0.9
      ],
      colors: [
        // Colors.indigo, 
        Colors.purple, 
        Colors.indigoAccent, 
        Colors.deepPurpleAccent
      ])),
      child: Center(
        child: RawMaterialButton(
          onPressed: () {
            // Navigating the the Quizz Screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => KuisPage(),
              )
            );
          },
          shape: const StadiumBorder(),
          fillColor: Color(0xff7868E6),
          child: const Padding(
            padding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
            child: Text(
              "Start the Quiz",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}