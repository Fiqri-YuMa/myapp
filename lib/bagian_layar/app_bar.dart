import 'package:flutter/material.dart';
import 'package:myapp/bagian_layar/cari.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String kecamatan; // Lokasi saat ini
  final int currentIndex; // Indeks halaman saat ini Drawer
  final int halaman2;

  CustomAppBar({
    super.key,
    required this.kecamatan,
    required this.currentIndex, required this.halaman2,
  });

  @override
  Widget build(BuildContext context) {
    if (currentIndex == 0) {
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
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(right: 10, top: 1, left: 10),
                    color: const Color.fromARGB(255, 0, 16, 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Pencarian(
                                    posisi: currentIndex,
                                    kecamatan: kecamatan,
                                    x: 0,
                                  )),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 20,
                            color: Colors.white,
                          ),
                          Text(
                            kecamatan,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
        automaticallyImplyLeading: false,
      );
    } else if (currentIndex == 1) {
      // AppBar untuk halaman Favorit
      return AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Favorit',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 28, 20),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // scaffoldKey.currentState?.openEndDrawer();
            },
            icon: const Icon(Icons.search, color: Colors.white),
          ),
        ],
      );
    } else if (currentIndex == 2) {
      // AppBar untuk halaman lain
      return AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Akun',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 28, 20),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // scaffoldKey.currentState?.openEndDrawer();
            },
            icon: const Icon(Icons.search, color: Colors.white),
          ),
        ],
      );
    } else {
      return AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 28, 20),
        actions: [
          Container(
            padding: const EdgeInsets.only(top: 12, bottom: 12),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(right: 10, top: 1, left: 10),
                    color: const Color.fromARGB(255, 0, 16, 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Pencarian(
                                    posisi: currentIndex,
                                    kecamatan: kecamatan,
                                    x: 0,
                                  ),),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 20,
                            color: Colors.white,
                          ),
                          Text(
                            kecamatan,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
        automaticallyImplyLeading: false,
      );
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
