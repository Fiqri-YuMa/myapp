import 'package:myapp/screen/halaman.dart';
import 'package:flutter/material.dart';

class explore_cianjur extends StatelessWidget {
  const explore_cianjur({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isi_akun(),
    );
  }
}

void main() {
  runApp(const explore_cianjur());
}
