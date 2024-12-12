import 'package:flutter/material.dart';
import 'package:myapp/screen/favorit.dart';
import 'package:myapp/screen/halaman_akun.dart';
import 'package:myapp/screen/home.dart';
import 'package:myapp/widget/sidebar.dart';
import 'package:myapp/screen/app_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;
  String posisi = "Cipanas";

  // Callback untuk menerima lokasi dari Sidebar
  void updatePosisi(String newPosisi) {
    setState(() {
      posisi = newPosisi;
    });
  }

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> _getChildren() {
    return [
      BelajarNavBar(pilihan: posisi),
      const FavoritePage(),
      const isi_akun(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Sidebar(onLokasiSelected: updatePosisi), // Pass callback
      appBar: CustomAppBar(
        posisi: posisi,
        currentIndex: _currentIndex,
        scaffoldKey: _scaffoldKey,
      ), // Gunakan CustomAppBar
      body: IndexedStack(
        index: _currentIndex,
        children: _getChildren(),
      ),
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 0, 57, 41),
        padding:
            const EdgeInsets.only(bottom: 20, left: 10, right: 10, top: 15),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: 'Favorit',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Akun',
              ),
            ],
            currentIndex: _currentIndex,
            backgroundColor: const Color.fromARGB(255, 0, 28, 20),
            selectedItemColor: Colors.teal[200],
            unselectedItemColor: Colors.white,
            showUnselectedLabels: true,
            onTap: onTappedBar,
          ),
        ),
      ),
    );
  }
}
