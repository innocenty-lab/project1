import 'package:flutter/material.dart';

class Planet {
  final String title;
  final String image;
  final String description;
  final Color bgColor;
  final Color titleColor;

  Planet({
    required this.title,
    required this.image,
    required this.description,
    required this.bgColor,
    required this.titleColor,
  });
}

List planets = [
  Planet(
    title: 'Mobil Tesla Model X',
    image: "assets/images/mobil1.png",
    bgColor: Color(0xFFFFFFFF),
    titleColor: Color(0xFF141414),
    description:
        'Model X adalah tipe mobil Sport Utility Vehicle (SUV) dengan kapasitas tujuh orang, ditambah lagi kapasitas kargo yang mencapai 2.491 liter. Adapun, kecanggihan yang yang bisa dinikmati pengemudinya, Tesla model ini telah dilengkapi 12 sensor ultrasonic yang berfungsi untuk menghindarkan pengendara dari kecelakaan.',
  ),
  Planet(
    title: 'Audi R8 LMS',
    image: "assets/images/mobil2.png",
    bgColor: Color(0xFF2e0c00),
    titleColor: Color(0xFFf2c060),
    description:
        'Mobil balap Audi R8 LMS dirancang dan dibangun sesuai dengan peraturan teknis FIA untuk mobil kategori GT3 dan sesuai dengan homologasi FIA.',
  ),
  Planet(
    title: 'Tesla Model 3',
    image: "assets/images/mobil3.png",
    bgColor: Color(0xFF001a28),
    titleColor: Color(0xFF72bb32),
    description:
        'Model 3 tersedia dengan transmisi CVT tergantung variannya. Model 3 adalah Sedan 5 seater dengan panjang 4694 mm, lebar 1850 mm, wheelbase 2875 mm.',
  ),
  Planet(
    title: 'Tesla Model S',
    image: "assets/images/mobil4.png",
    bgColor: Color(0xFF4a0101),
    titleColor: Color(0xFFee5749),
    description:
        'Model S tersedia dengan transmisi CVT tergantung variannya. Model S adalah Sedan 5 seater dengan panjang 4978 mm, lebar 1850 mm, wheelbase 2959 mm.',
  ),
];
