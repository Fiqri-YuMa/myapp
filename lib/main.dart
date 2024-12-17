import 'package:flutter/material.dart';
import 'package:myapp/bagian_layar/splasscreen.dart';

void main() {
  runApp(const cianjur_explore());
}

class cianjur_explore extends StatelessWidget {
  const cianjur_explore({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash(),
      // home: Home(pilihan: "Cipanas",),
    );
  }
}
