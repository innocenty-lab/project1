import 'package:flutter/material.dart';
import 'package:eklbm_bima_ciputra_satrio/model/menu_item.dart';

class MenuItems {
  static const halamanUtama = MenuItem('Halaman Utama', Icons.home_outlined);
  static const menuRPS = MenuItem('Menu RPS', Icons.school_outlined);
  static const daftarMateri = MenuItem('Daftar Materi', Icons.auto_stories_outlined);
  static const troubleshoot = MenuItem('Troubleshoot', Icons.build_outlined);
  static const caraKerja = MenuItem('Cara Kerja', Icons.handyman_outlined);
  static const kuis = MenuItem('Kuis', Icons.quiz_outlined);
  static const tentangAplikasi = MenuItem('Tentang Aplikasi', Icons.person_outline);

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

class MenuPage extends StatelessWidget {
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
  Widget build(BuildContext context) => Theme(
    data: ThemeData.dark(),
    child: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'E-KLBM'
        ),
        // leading:,
      ),
      body: SafeArea(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              ...MenuItems.all.map(buildMenuItem).toList(),
              Spacer(flex: 2),
            ],
          )
        ),
      ),
    ),
  );

  Widget buildMenuItem(MenuItem item) => ListTileTheme(
    selectedColor: Colors.white,
    child: ListTile(
      selectedTileColor: Colors.black26,
      selected: currentItem == item,
      minLeadingWidth: 20,
      leading: Icon(item.icon),
      title: Text(item.title),
      onTap: () => onSelectedItem(item),
    ),
  );
}