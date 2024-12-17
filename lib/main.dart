import 'package:flutter/material.dart';
import 'package:myapp/benar/login.dart';
import 'package:myapp/benar/satu.dart';
import 'package:myapp/benar/register.dart';

void main() {
  runApp(const cianjur_explore());
}

class cianjur_explore extends StatelessWidget {
  const cianjur_explore({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      // home: Home(pilihan: "Cipanas",),
    );
  }
}
