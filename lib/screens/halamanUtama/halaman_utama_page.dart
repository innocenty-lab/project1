import 'package:eklbm_bima_ciputra_satrio/screens/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:eklbm_bima_ciputra_satrio/model/panel_widget.dart';

class halamanUtamaPage extends StatelessWidget {
  final panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    final panelHeightOpen = MediaQuery.of(context).size.height * 0.9;
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.15;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Halaman Utama'),
        leading: MenuWidget(),
      ),
      backgroundColor: Color(0xff1F8DF5),
        body: SlidingUpPanel(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          controller: panelController,
          maxHeight: panelHeightOpen,
          minHeight: panelHeightClosed,
          parallaxEnabled: true,
          parallaxOffset: .5,
          body: SafeArea(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Text(
                    'PENGEMBANGAN PEMBELAJARAN KELISTRIKAN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'BODY MOBIL BERBASIS APLIKASI ANDROID UNTUK',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'MAHASISWA S1 TEKNIK MESIN UNJ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 15,),
                  Image.asset('assets/images/logo.png',
                  width: 120, height: 120,
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Mencerdaskan dan \nMemartabatkan Bangsa',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'KONSENTRASI: OTOMOTIF',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Diajukan Sebagai Salah Satu Syarat \nUntuk Memperoleh Gelar Sarjana Pendidikan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Oleh:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Bima Ciputra Satrio \n53151644445',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'PROGRAM STUDI S1 \nPENDIDIKAN VOKASIONAL TEKNIK MESIN \nFAKULTAS TEKNIK \n UNIVERSITAS NEGERI JAKARTA \n2022 ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
          panelBuilder: (controller) => PanelWidget(
            controller: controller,
            panelController: panelController,
          ),
        )
    );
  }
}
