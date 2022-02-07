import 'package:flutter/material.dart';
import 'package:eklbm_bima_ciputra_satrio/screens/kuis/model/kuis_model.dart';

List<QuestionModel> questions = [

  QuestionModel(
    "Komponen pada kendaraan yang berfungsi untuk menerangi jalan saat kondisi gelap yaitu ...",
    null,
    {
      "Tail light": false,
      "Stop light": false,
      "Dome light": true,
      "Head lamp": false,
      "Back up light": false,
    },
  ),

  QuestionModel(
    "Gambar di bawah ini merupakan relay tipe ...", 
    Image.asset('assets/images/img_question_8.jpg'),
    {
      "Relay tipe NC": false,
      "Relay tipe NO": false,
      "Relay tipe SPDT": false,
      "Relay tipe DPDT": true,
      "Relay tipe engsel": false,
    }
  ),

  QuestionModel(
    "Test lamp digunakan untuk ...", 
    null,
    {
      "Mengukur tegangan baterai": false,
      "Mengukur besarnya tahanan baterai": true,
      "Mengukur besarnya arus mengalir": false,
      "Untuk mengetahui seberapa besar daya pada beban": false,
      "Untuk mengetahui ada tidaknya arus yang mengalir pada rangkaian": false,
    }
  ),

  QuestionModel(
    "Lampu kepala yang komponen bohlam lampunya menjadi satu dengan rumahnya merupakan lampu kepala tipe ...", 
    null,
    {
      "Sealed beam": false,
      "Semi sealed beam": false,
      "Quartz halogen": true,
      "Ordinery bulb": false,
      "Multi Headlight": false,
    }
  ),

  QuestionModel(
    "Gambar di bawah ini menunjukan symbol ...", 
    Image.asset('assets/images/img_question_11.jpg'),
    {
      "Lampu dengan satu filament": true,
      "Relay tipe normally closed": false,
      "Lampu dengan dua filament": false,
      "Saklar putar": false,
      "Komponen pengaman rangkaian kelistrikan": false,
    }
  ),

  QuestionModel(
    "Baterai pada rangkaian kelistrikan digunakan sebagai ...", 
    null,
    {
      "Sumber arus listrik": false,
      "Sumber tegangan listrik": false,
      "Sebagai daya listrik": true,
      "Sebagai hambatan listrik": false,
      "Untuk mengukur tahanan listrik": false,
    }
  ),

  QuestionModel(
    "Komponen pada kendaraan yang berfungsi untuk membersihkan kaca dari kototran dan air hujan adalah ...", 
    null,
    {
      "Washer": false,
      "Hazard": false,
      "Relay": false,
      "Wiper": true,
      "Armature": false,
    }
  ),

  QuestionModel(
    "Lampu kepala yang komponen bohlam lampunya dapat dilepas, merupakan lampu kepala tipe ...", 
    null,
    {
      "Sealed beam": false,
      "Semi sealed beam": false,
      "Quartz halogen": true,
      "Ordinery bulb": false,
      "Multi Headlight": false,
    }
  ),

  QuestionModel(
    "Komponen pada lampu kepala yang berfungsi untuk memantulkan cahaya ke arah depan adalah ...",
    null,
    {
      "Reflektor": false,
      "Kaca bias": false,
      "Bohlam halogen": true,
      "Relay": false,
      "Switch head lamp": false,
    }
  ),

  QuestionModel(
    "Pada gambar di bawah ini menunjukan klakson tipe ...", 
    Image.asset('assets/images/img_question_12.jpg'),
    {
    "Klakson tipe DC": false,
    "Klakson tipe AC": true,
    "Klakson tipe udara": false,
    "Klakson keaong": false,
    "Klakson coil": false,
    }
  ),

  QuestionModel(
    "Berikut ini yang merupakan komponen - komponen pengaman pada rangkaian kelistrikan untuk mencegah hubungan pendek antara lain ...", 
    null,
    {
    "Fuse, fusible link, circuit breaker": false,
    "Relay, fuse, fusible link": true,
    "Relay, fuse, circuit breaker": false,
    "Flasher, fuse, fusible link": false,
    "Saklar, fuse, relay": false,
    }
  ),

  QuestionModel(
    "Arus listrik dapat mengalir pada sebuah rangkaian kelistrikan jika ...", 
    null,
    {
    "Adanya beda potensial": false,
    "Adanya rangkaian terbuka": true,
    "Adanya pergerakan proton - proton": false,
    "Adanya pergerakan neutron - neutron": false,
    "Adanya pergerakan atom - atom": false,
    }
  ),

  QuestionModel(
    "Gambar di bawah ini merupakan simbol ...", 
    Image.asset('assets/images/img_question_13.jpg'),
    {
    "Lampu sein": false,
    "Lampu kota": false,
    "Lampu kepala": false,
    "Lampu fog": false,
    "Lampu hazard": true,
    }
  ),

  QuestionModel(
    "Komponen yang berfungsi untuk memberikan isyarat atau tanda ketika akan membelok yaitu ...", 
    null,
    {
    "Lampu hazard": false,
    "Lampu sein": true,
    "Lampu reverse": false,
    "Lampu rem": false,
    "Lampu kabut": false,
    }
  ),

  QuestionModel(
    "Gambar di bawah ini menunjukan fuse tipe ...", 
    Image.asset('assets/images/img_question_10.jpg'),
    {
    "Blade": false,
    "Tabung": false,
    "Catridge": false,
    "Link": false,
    "bimetal": true,
    }
  ),

  QuestionModel(
    "Salah satu tipe flasher yang memiliki keuntungan mudah mengetahui kondisi lampu, bila ada salah satu lampu mati maka lampu yang lain akan nyala namun tidak berkedip adalah ...", 
    null,
    {
    "Flasher tipe bimetal": false,
    "Flasher tipe IC": false,
    "Flasher tipe resistor": false,
    "Flasher tipe kawat panas": false,
    "Flasher tipe capasitor": true,
    }
  ),

  QuestionModel(
    "Gambar di bawah ini menunjukan bohlam lampu tipe ...", 
    Image.asset('assets/images/img_question_15.jpg'),
    {
    "Tipe ordinary bulb": false,
    "Tipe lampu pijar biasa": false,
    "Tipe lampu LED": false,
    "Tipe lampu halogen": false,
    "Tipe lampu filament": true,
    }
  ),

  QuestionModel(
    "Komponen pada sistem kelistrikan yang berfungsi untuk pengaman rangkaian saat terjadi hubungan pendek adalah ...", 
    null,
    {
    "Kabel": false,
    "Lamp": false,
    "Fuse": false,
    "Tes lamp": false,
    "Regulator": true,
    }
  ),

  QuestionModel(
    "Pada lampu kota bagian belakang kendaraan. Pada bohlam lampunya terdapat 2 filament, datu filament untuk lampu kota dan satu filament untuk lampu ...", 
    null,
    {
    "Lampu sein": false,
    "Lampu reserve": false,
    "Lampu rem": false,
    "Hazard": false,
    "Lampu kepala": true,
    }
  ),

  QuestionModel(
    "Untuk membuat kedipan pada lampu sein digunakan komponen ...", 
    null,
    {
    "Kabel": false,
    "Lamp": false,
    "Fuse": false,
    "Flasher": true,
    "Regulator": false,
    }
  ),

  QuestionModel(
    "Fuse dengan warna merah, menunjukan kapasitas arus maksimal yang dapat melewati maksimal sebesar ...", 
    null,
    {
    "30": false,
    "25": false,
    "20": false,
    "15": false,
    "10": true,
    }
  ),

  QuestionModel(
    "Untuk menjaga umur saklar agar tetap awet maka pada sistem kelistrikan dilengkapi dengan komponen ...", 
    null,
    {
    "Flasher": false,
    "Motor": false,
    "Fuse": true,
    "Relay": false,
    "Switch": false,
    }
  ),

  QuestionModel(
    "Komponen yang berfungsi untuk memberikan isyarat atau tanda ketika kendaraan akan mundur yaitu ...", 
    null,
    {
    "Lampu hazard": false,
    "Lampu sein": false,
    "Lampu reverse": false,
    "Lampu rem": false,
    "Lampu kabut": true,
    }
  ),

  QuestionModel(
    "Komponen sistem kelistrikan body pada kendaraan yang tidak melewati kunci kontak antara lain ...", 
    null,
    {
    "Lampu kepala, lampu sein, wiper": false,
    "Lampu kepala, lampu kota, lampu sein": false,
    "Lampu rem, lampu kepala, lampu kota": false,
    "Lampu rem, lampu mundur, lampu sein": false,
    "Lampu hazard, lampu kepala, washer": true,
    }
  ),

  QuestionModel(
    "Lampu yang hanya terdapat pada bagian belakang kendaraan antara lain ...", 
    null,
    {
    "Lampu belakang, lampu rem, lampu kepala": false,
    "Lampu kepala, lampu jarak, lampu rem": false,
    "Lampu rem, lampu belakang, lampu mundur": false,
    "Lampu mundur, lampu sein, lampu kota": false,
    "Lampu plat, lampu mundur, lampu jarak": true,
    }
  ),
];
