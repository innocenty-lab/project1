import 'package:eklbm_bima_ciputra_satrio/screens/menu_widget.dart';
import 'package:flutter/material.dart';

class halamanUtamaPage extends StatelessWidget {
  const halamanUtamaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text(
        'Elektronik Modul Kelistrikan Bodi Mobil'
      ),
      leading: MenuWidget(),
    ),
  );
}