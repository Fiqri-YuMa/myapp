import 'package:flutter/material.dart';


class ExploreCianjurApp extends StatelessWidget {
  const ExploreCianjurApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001C14), 
      body: Center(
        child: Image.asset(
          'assets/image/logo copy.png', 
          width: 200, 
        ),
      ),
    );
  }
}