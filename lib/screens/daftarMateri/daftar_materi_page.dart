import 'dart:io';
import 'package:eklbm_bima_ciputra_satrio/api/pdf_api.dart';
import 'package:eklbm_bima_ciputra_satrio/components/list1.dart';
import 'package:eklbm_bima_ciputra_satrio/components/pdf_viewer_page.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/daftarMateri/data/materi_data.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DaftarMateriPage extends StatefulWidget {
  const DaftarMateriPage({Key? key}) : super(key: key);

  @override
  State<DaftarMateriPage> createState() => _DaftarMateriPageState();
}

class _DaftarMateriPageState extends State<DaftarMateriPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // return SafeArea(
    //   child: Scaffold(
    //     appBar: AppBar(
    //       backgroundColor: Colors.blue,
    //       title: Text(
    //         'Daftar Materi Page'
    //       ),
    //       leading: MenuWidget(),
    //     ),
    //     body: Column(
    //       children: [
    //         Expanded(
    //           child: Container(
    //             decoration: BoxDecoration(
    //               color: Colors.green
    //             ),

    //             child: ListView.builder(
    //               itemCount: materi.length,
    //               itemBuilder: (context, index) {
    //                 return Padding(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: InkWell(
    //                     highlightColor: Colors.grey,
    //                     onTap: () async {
    //                       print("Tampil Dokumen");
    //                       final path = materi[index].file;
    //                       final file = await PDFApi.loadAsset(path);
    //                       openPDF(context, file);
    //                     },
    
    //                     child: Container(
    //                       decoration: BoxDecoration(
    //                         border: Border.all(color: Colors.blueAccent),
    //                         borderRadius: BorderRadius.circular(5),
    //                         // color: Colors.white,
    //                         // boxShadow: [
    //                         //   BoxShadow(
    //                         //     color: Colors.grey.withOpacity(0.5),
    //                         //     spreadRadius: 5,
    //                         //     blurRadius: 7,
    //                         //     offset: Offset(0, 5), // changes position of shadow
    //                         //   ),
    //                         // ],
    //                       ),
    //                       child: Row(
    //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                         crossAxisAlignment: CrossAxisAlignment.center,
    //                         children: <Widget>[
    //                           Row(
    //                             crossAxisAlignment: CrossAxisAlignment.center,
    //                             mainAxisAlignment: MainAxisAlignment.start,
    //                             children: <Widget>[
    //                               Container(
    //                                 decoration: BoxDecoration(
    //                                   color: Colors.brown[200],
    //                                   borderRadius: BorderRadius.circular(5)
    //                                 ),
    //                                 padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
    //                                 width: 70,
    //                                 height: 70,
    //                                 child: Icon(
    //                                   Icons.auto_stories_outlined,
    //                                   size: 35,
    //                                 ),
    //                               ),
    //                               SizedBox(
    //                                 width: 6.0,
    //                               ),
    //                               Column(
    //                                 crossAxisAlignment: CrossAxisAlignment.start,
    //                                 children: <Widget>[
    //                                   Text(
    //                                     materi[index].judul,
    //                                     style: TextStyle(
    //                                       fontSize: 20,
    //                                       fontWeight: FontWeight.bold,
    //                                     ),
    //                                   ),
    //                                   SizedBox(
    //                                     height: size.height * 0.010,
    //                                   ),
    //                                   Text(
    //                                     materi[index].deskripsi,
    //                                     style: TextStyle(
    //                                       fontSize: 14,
    //                                     ),
    //                                   ),
    //                                 ],
    //                               ),
    //                             ]
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    
    //                   ),
    //                 );
    //               }
    //             ),


    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Daftar Materi'
          ),
          centerTitle: true,
          leading: MenuWidget(),
        ),
        body: ListView.builder(
          itemCount: materi.length,
          itemBuilder: (context, index) {
            return Container(
              child: List1(
                textJudul: materi[index].judul,
                textDeskripsi: materi[index].deskripsi,
                icon: "assets/icons/icon_Edit.svg",
                press: () async {
                  print("Tampil Dokumen");
                  final path = materi[index].file;
                  final file = await PDFApi.loadAsset(path);
                  openPDF(context, file);
                },
              ),
            );
          }
        ),
      )
    );
  }
  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)),
  );
}