import 'package:flutter/material.dart';
import 'package:myapp/bagian_layar/app_bar.dart';
import 'package:myapp/bagian_layar/navigasi_bawah.dart';
import 'package:myapp/models/destinasi_wisata.dart';
import 'package:myapp/models/event_wisata.dart';
import 'package:myapp/models/hotel_wisata.dart';
import 'package:myapp/models/kuliner_wisata.dart';
import 'package:myapp/screen/detail_destination.dart';
import 'package:myapp/widget/event.dart';
import 'package:myapp/widget/hotel.dart';
import 'package:myapp/widget/kuliner.dart';
import 'package:myapp/widget/wisata.dart';

class Halaman extends StatefulWidget {
  final String kecamatan;
  final int jenis;

  const Halaman({super.key, required this.jenis, required this.kecamatan});

  @override
  State<Halaman> createState() => _HalamanState();
}

class _HalamanState extends State<Halaman> {
  List<dynamic> pilihan = [];

  @override
  void initState() {
    super.initState();
    _loadPilihan();
  }

  // Fungsi untuk memuat data berdasarkan jenis
  void _loadPilihan() {
    switch (widget.jenis) {
      case 1:
        pilihan = listDestination
            .where((element) => element.category == widget.kecamatan)
            .toList();
        break;
      case 2:
        pilihan = listHotelDestination
            .where((element) => element.category == widget.kecamatan)
            .toList();
        break;
      case 3:
        pilihan = listKulinerDestination
            .where((element) => element.category == widget.kecamatan)
            .toList();
        break;
      case 4:
        pilihan = listEventDestination
            .where((element) => element.category == widget.kecamatan)
            .toList();
        break;
      default:
        pilihan = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(kecamatan: widget.kecamatan, currentIndex: 3,halaman2: widget.jenis,),
      body: Column(
        children: [
          _buildHeader(),
          _buildTitle(),
          _buildListDestinations(),
        ],
      ),
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 0, 57, 41),
        padding:
            const EdgeInsets.only(bottom: 20, left: 10, right: 10, top: 15),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: tombol_bawah(index: 0, kecamatan: widget.kecamatan),
        ),
      ),
    );
  }

  // Header dengan tombol kategori
  Widget _buildHeader() {
    return Container(
      height: 120,
      color: const Color.fromARGB(255, 0, 16, 12),
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildCategoryButton('Wisata', 'image/Vector.png', 1),
          _buildCategoryButton('Penginapan', 'image/Vector1.png', 2),
          _buildCategoryButton('Kuliner', 'image/Vector2.png', 3),
          _buildCategoryButton('Event', 'image/Vector3.png', 4),
        ],
      ),
    );
  }

  // Tombol kategori
  Widget _buildCategoryButton(String title, String iconPath, int jenis) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(bottom: 5),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            child: Container(
              padding: const EdgeInsets.all(2),
              color: const Color.fromARGB(255, 30, 30, 30),
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Halaman(
                        jenis: jenis,
                        kecamatan: widget.kecamatan,
                      ),
                    ),
                  );
                },
                icon: Image.asset(iconPath, fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Roboto',
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  // Judul bagian
  Widget _buildTitle() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color.fromARGB(255, 0, 28, 20),
      padding: const EdgeInsets.only(left: 30, top: 10, bottom: 10),
      child: Text(
        'Wisata ${widget.kecamatan}',
        style: const TextStyle(
          fontSize: 12,
          fontFamily: 'League Spartan',
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }

  // Daftar destinasi
  Widget _buildListDestinations() {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: const Color.fromARGB(255, 3, 22, 17),
        child: ListView.builder(
          itemCount: pilihan.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => _navigateToDetail(index),
              child: _buildDestinationCard(index),
            );
          },
        ),
      ),
    );
  }

  // Navigasi ke detail
  void _navigateToDetail(int index) {
    Widget detailPage;
    switch (widget.jenis) {
      case 1:
        detailPage = DetailDestinasi(destination: pilihan[index]);
        break;
      case 2:
        detailPage = DetailDestinasi1(destination: pilihan[index]);
        break;
      case 3:
        detailPage = DetailDestinasi2(destination: pilihan[index]);
        break;
      default:
        detailPage = DetailDestinasi3(destination: pilihan[index]);
    }
    Navigator.push(context, MaterialPageRoute(builder: (_) => detailPage));
  }

  // Kartu destinasi
  Widget _buildDestinationCard(int index) {
    if (widget.jenis == 1) {
      return halamanDestination(destination: pilihan[index]);
    } else if (widget.jenis == 2) {
      return halamanDestination2(destination: pilihan[index]);
    } else if (widget.jenis == 3) {
      return halamanDestination3(destination: pilihan[index]);
    } else {
      return halamanDestination4(destination: pilihan[index]);
    }
  }
}
