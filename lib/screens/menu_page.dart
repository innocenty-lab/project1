import 'package:flutter/material.dart';
import 'package:eklbm_bima_ciputra_satrio/model/menu_item.dart';

class MenuItems {
  static const halamanUtama = MenuItem('Home', Icons.home_outlined);
  static const menuRPS = MenuItem('RPS', Icons.school_outlined);
  static const daftarMateri = MenuItem('Daftar Materi', Icons.auto_stories_outlined);
  static const troubleshoot = MenuItem('Troubleshoot', Icons.build_outlined);
  static const caraKerja = MenuItem('Cara Kerja', Icons.videocam_outlined);
  static const kuis = MenuItem('Kuis', Icons.assignment);
  static const tentangAplikasi = MenuItem('Tentang Aplikasi', Icons.smartphone_outlined);

  static const all = <MenuItem>[
    halamanUtama,
    menuRPS,
    daftarMateri,
    troubleshoot,
    caraKerja,
    kuis,
    tentangAplikasi,
  ];
}

class MenuPage extends StatefulWidget {
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;

  const MenuPage(
    {
      Key? key,
      required this.currentItem,
      required this.onSelectedItem,
    }
  ) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Theme(
      data: ThemeData.dark(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff5297f4),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'E-KLBM'
            ),
            // leading:,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Spacer(),
                SizedBox(
                  height: size.height * 0.05,
                ),
                ...MenuItems.all.map(buildMenuItem).toList(),
                // Spacer(flex: 2),
                SizedBox(
                  height: size.height * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(MenuItem item) => ListTileTheme(
    selectedColor: Colors.white,
    child: ListTile(
      selectedTileColor: Colors.black26,
      selected: widget.currentItem == item,
      minLeadingWidth: 20,
      leading: Icon(item.icon),
      title: Text(item.title),
      onTap: () => widget.onSelectedItem(item),
    ),
  );
}