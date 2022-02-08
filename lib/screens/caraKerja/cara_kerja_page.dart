//import 'package:eklbm_bima_ciputra_satrio/screens/caraKerja/model/player_video.dart';
import 'package:eklbm_bima_ciputra_satrio/components/list1.dart';
import 'package:eklbm_bima_ciputra_satrio/model/better_player.dart';
import 'package:eklbm_bima_ciputra_satrio/model/better_player_two.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/menu_widget.dart';
import 'package:flutter/material.dart';

class CaraKerjaPage extends StatelessWidget {
  const CaraKerjaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.teal,
      title: Text(
        'Cara Kerja'
      ),
      centerTitle: true,
      leading: MenuWidget(),
    ),
    body: Container(
      decoration: BoxDecoration(
        color: Colors.tealAccent,
      image: DecorationImage(image: AssetImage('assets/images/mobil3.png'))),
      child: Column(
        children: [
          List1(
            icon: "assets/icons/icon_Edit.svg",
            textJudul: 'Video 1',
            textDeskripsi: 'Kelistrikan',
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AssetPlayerWidget()));
            },
          ),
          List1(
            icon: "assets/icons/icon_Edit.svg",
            textJudul: 'Video 2',
            textDeskripsi: 'Perawatan Sistem Penenrangan dan Panel',
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AssetPlayerWidgetTwo()));
            },),
        ],
      ),
    )
  );
}