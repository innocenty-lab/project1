import 'package:eklbm_bima_ciputra_satrio/components/view_single_pdf.dart';
import 'package:eklbm_bima_ciputra_satrio/model/menu_item.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/caraKerja/cara_kerja_page.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/daftarMateri/daftar_materi_page.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/halamanUtama/halaman_utama_page.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/kuis/main_kuis_page.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/menuRPS/menu_rps_page.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/menuRPS/model/rps_model.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/menu_page.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/tentangAplikasi/tentang_aplikasi_page.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/troubleshoot/troubleshoot_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MenuItem currentItem = MenuItems.halamanUtama;

  @override
  Widget build(BuildContext context) => SafeArea(
    child: ZoomDrawer(
      style: DrawerStyle.Style1,
      borderRadius: 40,
      angle: -10,
      slideWidth: MediaQuery.of(context).size.width*0.8,
      showShadow: true,
      // backgroundColor: Colors.orangeAccent,
      backgroundColor: Color(0xffB8B5FF),
      mainScreen: getScreen(),
      menuScreen: Builder(
        builder: (context) => MenuPage(
          currentItem: currentItem,
          onSelectedItem: (item) {
            setState(() => currentItem = item);
  
            ZoomDrawer.of(context)!.close();
          },
        ),
      ),
    ),
  );


  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.halamanUtama:
        return halamanUtamaPage();
      case MenuItems.menuRPS:
        return MenuRPSPage();
        // return ViewPdf(file: "assets/pdf/Rencana_Pembelajaran_Semester.pdf");
        // return ViewPdf(file: "assets/pdf/Rencana_Pembelajaran_Semester.pdf");
        // Navigator.push(context, MaterialPageRoute(builder: (context) => ViewPdf(file: "assets/pdf/Rencana_Pembelajaran_Semester.pdf")));
      case MenuItems.daftarMateri:
        return DaftarMateriPage();
      case MenuItems.troubleshoot:
        return TroubleshootPage();
      case MenuItems.caraKerja:
        return CaraKerjaPage();
      case MenuItems.kuis:
        return MainKuisPage();
      default:
        return TentangAplikasiPage();
    }
  }
}
