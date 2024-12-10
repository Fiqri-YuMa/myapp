import 'package:flutter/material.dart';

// Suggested code may be subject to a license. Learn more: ~LicenseLog:648545984.
class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(255, 0, 28, 20),
      //   elevation: 0,
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back, color: Colors.white),
      //     onPressed: () {
      //       // Tambahkan fungsi untuk kembali di sini
      //     },
      //   ),
      //   title: const Text('Favorit', style: TextStyle(color: Colors.white)),
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.search, color: Colors.white),
      //       onPressed: () {
      //         // Tambahkan fungsi pencarian di sini
      //       },
      //     ),
      //   ],
      // ),
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
          const Expanded(
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
    );
  }
}

class CategoryButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const CategoryButton({super.key, 
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
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 14, color: Colors.white),
        ),
      ],
    );
  }
}
