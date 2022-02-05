import 'package:eklbm_bima_ciputra_satrio/screens/menu_widget.dart';
import 'package:flutter/material.dart';

class TroubleshootPage extends StatelessWidget {
  const TroubleshootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text(
        'Troubleshoot Page'
      ),
      leading: MenuWidget(),
    ),
  );
}