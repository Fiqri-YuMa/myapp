// import 'package:myapp/screen/halaman.dart';
// import 'package:myapp/screen/favorit.dart';
// import 'package:myapp/screen/halaman_akun.dart';
// import 'package:myapp/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screen/home.dart';
import 'package:myapp/screen/informasi_wisata.dart';


class explore_cianjur extends StatelessWidget {
  const explore_cianjur({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: informasi_1(destination: [
        'image/ggede.png',
        'image/gede-2.jpg',
        'image/gede-3.jpg',
      ],),
    );
  }
}

void main() {
  runApp(const explore_cianjur());
}
