import 'package:eklbm_bima_ciputra_satrio/screens/menu_widget.dart';
import 'package:flutter/material.dart';

class MenuRPSPage extends StatefulWidget {
  const MenuRPSPage({Key? key}) : super(key: key);

  @override
  State<MenuRPSPage> createState() => _MenuRPSPageState();
}

class _MenuRPSPageState extends State<MenuRPSPage> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("tes"),);
    // return toPDF();
  }

  // widget toPDF() async {
  //   final path = 'assets/sample.pdf';
  //                         final file = await PDFApi.loadAsset(path);
  //                         openPDF(context, file);
  // }
}