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
      backgroundColor: Color(0xff808080),
      title: Text(
        'Cara Kerja'
      ),
      centerTitle: true,
      leading: MenuWidget(),
    ),
    body: Container(
      decoration: BoxDecoration(
      color: Color(0xffFFEFD5),
      image: DecorationImage(image: AssetImage('assets/images/mobil3.png'))),
      child: Column(
        children: [
          List1(
            icon: "assets/icons/video.svg",
            textJudul: 'Video 1',
            textDeskripsi: 'Kelistrikan',
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AssetPlayerWidget()));
            }, 
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              stops: [0.1, 0.4, 0.6],
              colors: [Color(0xffA9A9A9), Color(0xffD3D3D3), Color(0xffA9A9A9),],
            ),
          ),
          List1(
            icon: "assets/icons/video.svg",
            textJudul: 'Video 2',
            textDeskripsi: 'Perawatan Sistem Penenrangan dan Panel',
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AssetPlayerWidgetTwo()));
            },
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              stops: [0.1, 0.4, 0.6],
              colors: [Color(0xffA9A9A9), Color(0xffD3D3D3), Color(0xffA9A9A9),],
            ),
          ),
        ],
      ),
    )
  );
}