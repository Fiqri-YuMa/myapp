import 'package:flutter/material.dart';
import 'package:myapp/screen/favorit.dart';
import 'package:myapp/screen/halaman_akun.dart';
import 'package:myapp/screen/home.dart';
import 'package:myapp/widget/sidebar.dart';

class ExploreCianjur extends StatelessWidget {
  const ExploreCianjur({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

void main() {
  runApp(const ExploreCianjur());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;
  String posisi = "Cipanas";

  List<Widget> _getChildren() {
    return [
      BelajarNavBar(pilihan: posisi),
      const FavoritePage(),
      const isi_akun(),
    ];
  }

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void updatePosisi(String newPosisi) {
    setState(() {
      posisi = newPosisi; // Update posisi berdasarkan pilihan dari Sidebar
    });
  }

  AppBar _buildAppBar() {
    if (_currentIndex == 0) {
      return AppBar(
        flexibleSpace: Container(
          height: 100,
          margin: const EdgeInsets.only(left: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('image/logo.png'),
              fit: BoxFit.none,
              scale: 10.0,
              alignment: Alignment.centerLeft,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 28, 20),
        actions: [
          Container(
            padding: const EdgeInsets.only(top: 12, bottom: 12),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              child: Container(
                color: const Color.fromARGB(255, 0, 16, 12),
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding:
                          const EdgeInsets.only(right: 5, top: 1, left: 10),
                      child: const Icon(
                        Icons.location_on,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(posisi, style: const TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              _scaffoldKey.currentState?.openEndDrawer();
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
        automaticallyImplyLeading: false,
      );
    } else if (_currentIndex == 2) {
      return AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: const Text(
          "Akun",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 28, 20),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              _scaffoldKey.currentState?.openEndDrawer();
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      );
    } else {
      return AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 28, 20),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Tambahkan fungsi untuk kembali di sini
          },
        ),
        title: const Text('Favorit', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              _scaffoldKey.currentState?.openEndDrawer();
              // Tambahkan fungsi pencarian di sini
            },
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Sidebar(
        lokasipilihan: updatePosisi,
      ),
      appBar: _buildAppBar(),
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
