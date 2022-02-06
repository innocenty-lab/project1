import 'package:eklbm_bima_ciputra_satrio/screens/kuis/kuis_page.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/menu_widget.dart';
import 'package:eklbm_bima_ciputra_satrio/shared/color.dart';
import 'package:flutter/material.dart';

class MainKuisPage extends StatelessWidget {
  const MainKuisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text(
        'Main Kuis Page'
      ),
      leading: MenuWidget(),
    ),
    body: Center(
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
        fillColor: AppColor.secondaryColor,
        child: const Padding(
          padding:
              EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
          child: Text(
            "Start the Quizz",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ),
  );
}