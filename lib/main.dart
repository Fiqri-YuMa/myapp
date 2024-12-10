<<<<<<< HEAD
import 'package:myapp/screen/halaman.dart';
=======
// import 'package:myapp/screen/halaman.dart';
import 'package:myapp/screen/favorit.dart';
import 'package:myapp/screen/halaman_akun.dart';
import 'package:myapp/screen/home.dart';
>>>>>>> 24c23be89c6bca099c570d3b2371d6e1bcd18a4b
import 'package:flutter/material.dart';

class explore_cianjur extends StatelessWidget {
  const explore_cianjur({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FavoritePage(),
    );
  }
}

void main() {
  runApp(const explore_cianjur());
}
