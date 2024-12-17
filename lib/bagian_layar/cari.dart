import 'package:flutter/material.dart';
import 'package:myapp/benar/favourite.dart';
import 'package:myapp/benar/halamankedua.dart';
import 'package:myapp/benar/satu.dart';
import 'package:myapp/models/lokasi.dart';

class Pencarian extends StatefulWidget {
  final String kecamatan;
  final int posisi;
  final int halaman2;
  const Pencarian(
      {super.key,
      required this.posisi,
      required this.kecamatan,
      required this.halaman2});

  @override
  State<Pencarian> createState() => _PencarianState();
}

class _PencarianState extends State<Pencarian> {
  final List<lokasi> allItems = listlokasi;
  List<lokasi> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = allItems; // Inisialisasi dengan data awal
  }

  // Fungsi untuk memfilter hasil berdasarkan input pencarian
  void _filterItems(String query) {
    final results = allItems
        .where((item) => item.nama.toLowerCase().contains(query.toLowerCase()))
        .toList();

    setState(() {
      filteredItems = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Pencarian Lokasi",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 28, 20),
      ),
      body: Container(
        color: Colors.white24,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Input pencarian
              TextField(
                onChanged: _filterItems,
                decoration: const InputDecoration(
                  labelText: 'Cari Lokasi',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              // Menampilkan hasil pencarian
              Expanded(
                child: filteredItems.isEmpty
                    ? notfound()
                    : ListView.builder(
                        itemCount: filteredItems.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              if (widget.posisi == 0) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Home(
                                        pilihan: filteredItems[index].nama,
                                      );
                                    },
                                  ),
                                );
                              } else if (widget.posisi == 1) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return FavoriteP(
                                        kecamatan: filteredItems[index].nama,
                                      );
                                    },
                                  ),
                                );
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Halaman(
                                        jenis: widget.halaman2,
                                        kecamatan: filteredItems[index].nama,
                                      );
                                    },
                                  ),
                                );
                              }
                            },
                            child: ListTile(
                              title: Text(filteredItems[index].nama),
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget untuk ditampilkan jika data tidak ditemukan
Widget notfound() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: Opacity(
            opacity: 0.5,
            child: Image.asset(
              "assets/img/notfound.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Data tidak ditemukan",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
