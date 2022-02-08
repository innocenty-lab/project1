import 'package:eklbm_bima_ciputra_satrio/screens/menuRPS/model/rps_model.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:path/path.dart';

class ViewSinglePdf extends StatelessWidget {
  String file;

  ViewSinglePdf({
    Key? key,
    required this.file
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final path = file;
    final name = basename(path);
    final replaceFormat = name.replaceAll(".pdf", "");
    final newName = replaceFormat.replaceAll("_", " ");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff11698E),
        // title: Text("assets/pdf/Rencana_Pembelajaran_Semester.pdf"),
        title: Text(newName),
        centerTitle: true,
        titleSpacing: 0,
        leading: MenuWidget(),
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
      // body: SfPdfViewer.asset("assets/pdf/Rencana_Pembelajaran_Semester.pdf"),
      body: SfPdfViewer.asset(file),
    );
  }
}
