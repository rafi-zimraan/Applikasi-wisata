import 'package:flutter/material.dart';

class OnboardingModel {
  String img;
  String text;
  String desc;
  Color bg;
  Color button;

  OnboardingModel({
    required this.img,
    required this.text,
    required this.desc,
    required this.bg,
    required this.button,
  });
}

List<OnboardingModel> screen = <OnboardingModel>[
  OnboardingModel(
    img: 'lib/images/img-2.png',
    text: 'Selamat datang di Applikasi Wonderfly Indonesia',
    desc:
        "Sebuah Komunitas  Wonderfly Indonesia yang ingin menambah networking dan mempererat silaturahmi",
    bg: Colors.white, // Mengacu pada gambar atau asset sebagai latar belakang
    button: const Color(0xFF4756DF), // Menggunakan Color untuk warna tombol
  ),
  OnboardingModel(
      img: 'lib/images/img-3.png',
      text: 'Silahkan melihat komunitas kami',
      desc:
          "Sebuah Komunitas  Wonderfly Indonesia yang ingin menambah networking dan mempererat silaturahmi",
      bg: const Color(
          0xFF4756DF), // Mengacu pada gambar atau asset sebagai latar belakang
      button: Colors.white // Menggunakan Color untuk warna tombol
      ),
];
