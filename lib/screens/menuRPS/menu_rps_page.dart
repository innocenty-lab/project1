import 'package:eklbm_bima_ciputra_satrio/screens/menu_widget.dart';
import 'package:flutter/material.dart';

class MenuRPSPage extends StatelessWidget {
  const MenuRPSPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text(
        'Menu RPS Page'
      ),
      leading: MenuWidget(),
    ),
  );
}