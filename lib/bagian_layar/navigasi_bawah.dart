import 'package:flutter/material.dart';
import 'package:myapp/benar/favourite.dart';
import 'package:myapp/benar/satu.dart';
import 'package:myapp/benar/halaman_akun.dart';

class tombol_bawah extends StatelessWidget {
  final int index;
  final String kecamatan;
  const tombol_bawah({super.key, required this.index, required this.kecamatan});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.grey,
      unselectedItemColor: Colors.white,
      backgroundColor: const Color.fromARGB(255, 0, 28, 20),
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: Icon(
              Icons.home,
              color: index == 0 ? Colors.grey : Colors.white,
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: Icon(
              Icons.bookmark,
              color: index == 1 ? Colors.grey : Colors.white,
            ),
          ),
          label: 'Favorit',
        ),
        BottomNavigationBarItem(
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: Icon(
              Icons.person,
              color: index == 2 ? Colors.grey : Colors.white,
            ),
          ),
          label: 'Akun',
        ),
      ],
      onTap: (pilihan) {
        switch (pilihan) {
          case 0:
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => Home(pilihan: kecamatan)),
              (Route<dynamic> route) => false,
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FavoriteP(
                        kecamatan: kecamatan,
                      )),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => isi_akun(
                        x: kecamatan,
                      )),
            );
            break;
        }
      },
    );
  }
}
