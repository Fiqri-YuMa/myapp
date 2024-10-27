import 'package:myapp/screen/home.dart';
import 'package:flutter/material.dart';

class explore_cianjur extends StatelessWidget {
  const explore_cianjur({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarNavBar(),
    );
  }
}

void main() {
  runApp(explore_cianjur());
}
