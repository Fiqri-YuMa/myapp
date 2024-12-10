import 'package:flutter/material.dart';


// Suggested code may be subject to a license. Learn more: ~LicenseLog:648545984.
class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 28, 20),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 28, 20),
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
            color: const Color.fromARGB(255, 1, 44, 32), // Warna pemisah lebih terang
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryButton(icon: Icons.flight, label: 'Wisata', color: Colors.green),
                CategoryButton(icon: Icons.hotel, label: 'Penginapan', color: Colors.orange),
                CategoryButton(icon: Icons.restaurant, label: 'Kuliner', color: Colors.red),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.insert_drive_file, size: 80, color: Colors.white),
                  SizedBox(height: 16),
                  Text(
                    'Belum Ada Data Favorit',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16), // Radius melengkung di kiri atas
          topRight: Radius.circular(16), // Radius melengkung di kanan atas
        ),
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
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          backgroundColor: Color.fromARGB(255, 1, 44, 32), // Warna latar belakang navigasi bawah
          currentIndex: 1, // Tab Favorit aktif secara default
          onTap: (index) {
            // Tambahkan navigasi jika diperlukan
          },
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