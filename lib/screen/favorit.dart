import 'package:flutter/material.dart';

// Suggested code may be subject to a license. Learn more: ~LicenseLog:648545984.
class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  int _selectedNavbar = 0;
  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 28, 20),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Tambahkan fungsi untuk kembali di sini
          },
        ),
        title: Text('Favorit', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Tambahkan fungsi pencarian di sini
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Container untuk pemisah area kategori
          Container(
            color: const Color.fromARGB(255, 0, 57, 41),
            height: 120,
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      margin: const EdgeInsets.only(bottom: 5),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          color: const Color.fromARGB(255, 30, 30, 30),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Image(
                                image: AssetImage(
                                  'image/Vector.png',
                                ),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    ),
                    const Text(
                      'Wisata',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      margin: const EdgeInsets.only(bottom: 5),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          color: const Color.fromARGB(255, 30, 30, 30),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Image(
                                image: AssetImage(
                                  'image/Vector1.png',
                                ),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    ),
                    const Text(
                      'Penginapan',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      margin: const EdgeInsets.only(bottom: 5),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          color: const Color.fromARGB(255, 30, 30, 30),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Image(
                                image: AssetImage(
                                  'image/Vector2.png',
                                ),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    ),
                    const Text(
                      'Kuliner',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.insert_drive_file, size: 80, color: Colors.grey),
                  SizedBox(height: 16),
                  Text(
                    'Belum Ada Data Favorit',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 0, 57, 41),
        padding:
            const EdgeInsets.only(bottom: 20, left: 10, right: 10, top: 15),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Container(
            child: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
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
              currentIndex: _selectedNavbar,
              backgroundColor: Color.fromARGB(255, 0, 28, 20),
              selectedItemColor: Colors.teal[200],
              unselectedItemColor: Colors.white,
              showUnselectedLabels: true,
              onTap: _changeSelectedNavBar,
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const CategoryButton({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color.withOpacity(0.2),
          child: Icon(icon, size: 30, color: color),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ],
    );
  }
}
