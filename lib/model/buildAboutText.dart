import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:eklbm_bima_ciputra_satrio/model/model_halaman_utama.dart';

import 'package:eklbm_bima_ciputra_satrio/components/page_widget_halaman_utama.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final pages = [
    ...List.generate(
      planets.length,
      (index) => Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.vertical(top: Radius.circular(20)),),
        child: PageWidget(
          title: planets[index].title,
          description: planets[index].description,
          image: planets[index].image,
          bgColor: planets[index].bgColor,
          titleColor: planets[index].titleColor,
        ),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.vertical(top: Radius.circular(20)),),
      child: LiquidSwipe(
        pages: pages,
        enableLoop: true,
        fullTransitionValue: 600,
        waveType: WaveType.liquidReveal,
      ),
    );
  }
}
