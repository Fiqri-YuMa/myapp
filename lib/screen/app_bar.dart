import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String posisi; // Lokasi saat ini
  final int currentIndex; // Indeks halaman saat ini
  final GlobalKey<ScaffoldState> scaffoldKey; // Key untuk Drawer

  const CustomAppBar({
    super.key,
    required this.posisi,
    required this.currentIndex,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    if (currentIndex == 1) {
      // AppBar untuk halaman Favorit
      return AppBar(
        title: const Text('Favorit'),
        backgroundColor: Colors.teal,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openEndDrawer();
            },
            icon: const Icon(Icons.search, color: Colors.white),
          ),
        ],
      );
    } else {
      // AppBar untuk halaman lain
      return AppBar(
        title: Text(posisi),
        backgroundColor: const Color.fromARGB(255, 0, 28, 20),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openEndDrawer();
            },
            icon: const Icon(Icons.search, color: Colors.white),
          ),
        ],
      );
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
