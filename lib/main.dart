<<<<<<< HEAD
import 'package:myapp/screen/halaman.dart';
=======
// import 'package:myapp/screen/halaman.dart';
import 'package:myapp/screen/halaman_akun.dart';
import 'package:myapp/screen/home.dart';
>>>>>>> de664069350a2dd4eafbdea666ba2518b2acc0ef
import 'package:flutter/material.dart';

class explore_cianjur extends StatelessWidget {
  const explore_cianjur({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      home: HalamanWisata(jenis: 1),
=======
      home: isi_akun(),
>>>>>>> de664069350a2dd4eafbdea666ba2518b2acc0ef
    );
  }
}

void main() {
  runApp(const explore_cianjur());
}
