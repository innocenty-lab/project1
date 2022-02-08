import 'package:eklbm_bima_ciputra_satrio/screens/daftarMateri/data/materi_data.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/daftarMateri/model/daftar_materi_model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:path/path.dart';

class ViewPDF extends StatelessWidget {
  const ViewPDF({
    Key? key,
    required this.materimodel,
  }) : super(key: key);
  final MateriModel materimodel;
  @override
  Widget build(BuildContext context) {
    final path = materimodel.file;
    final name = basename(path);
    final replaceFormat = name.replaceAll(".pdf", "");
    final newName = replaceFormat.replaceAll("_", " ");

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: AppColor.fixsecondarycolor,
        title: Text(newName),
        centerTitle: true,
        titleSpacing: 0,
      ),
      // appBar: AppBar(
      //   backgroundColor: AppColor.mainbackgroundcolor,
      //   centerTitle: true,
      //   title: Text(
      //     bukumodel.judul,
      //     style: TextStyle(
      //         color: AppColor.primaryTextColor,
      //         fontSize: 18,
      //         fontWeight: FontWeight.w800),
      //   ),
      //   // automaticallyImplyLeading: true,
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back_ios,
      //       color: AppColor.primaryIconColor,
      //     ),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      // ),
      body: SfPdfViewer.asset(materimodel.file),
    );
  }
}
