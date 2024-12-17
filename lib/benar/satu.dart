import 'package:flutter/material.dart';
import 'package:myapp/bagian_layar/app_bar.dart';
import 'package:myapp/bagian_layar/navigasi_bawah.dart';
import 'package:myapp/benar/halamankedua.dart';
import 'package:myapp/models/destinasi_wisata.dart';
import 'package:myapp/models/hotel_wisata.dart';
import 'package:myapp/models/kuliner_wisata.dart';
import 'package:myapp/screen/detail_destination.dart';
import 'package:myapp/screen/halaman.dart';
import 'package:myapp/widget/hotel.dart';
import 'package:myapp/widget/kuliner.dart';
import 'package:myapp/widget/wisata.dart';

class Home extends StatefulWidget {
  final String pilihan;

  const Home({super.key, required this.pilihan});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<TravelDestination> wisata;
  late List<hotelDestination> hotel;
  late List<KulinerDestination> kuliner;

  @override
  void initState() {
    super.initState();
    wisata = listDestination
        .where((element) => element.category == widget.pilihan)
        .toList();
    hotel = listHotelDestination
        .where((element) => element.category == widget.pilihan)
        .toList();
    kuliner = listKulinerDestination
        .where((element) => element.category == widget.pilihan)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    int x = 0;
    return Scaffold(
      appBar: CustomAppBar(kecamatan: widget.pilihan, currentIndex: x,halaman2: 0,),
      backgroundColor: const Color.fromARGB(255, 1, 44, 32),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            _buildCategoryRow(context),
            const SizedBox(height: 10),
            _buildSection("Wisata", wisata, 1),
            _buildSection("Hotel", hotel, 2),
            _buildSection("Kuliner", kuliner, 3),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 0, 57, 41),
        padding:
            const EdgeInsets.only(bottom: 20, left: 10, right: 10, top: 15),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: tombol_bawah(index: x, kecamatan: widget.pilihan),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 120,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      color: const Color.fromARGB(255, 0, 57, 41),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(right: 110),
            child: const Text(
              "Wellcome Kabupaten Cianjur",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              "Cari dan tentukan wisata pilihan di tiap-tiap kecamatan yang ada di kabupaten Cianjur",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryRow(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildCategoryButton(context, 'image/Vector.png', 'Wisata', 1),
          _buildCategoryButton(context, 'image/Vector1.png', 'Penginapan', 2),
          _buildCategoryButton(context, 'image/Vector2.png', 'Kuliner', 3),
          _buildCategoryButton(context, 'image/Vector3.png', 'Event', 4),
        ],
      ),
    );
  }

  Widget _buildCategoryButton(
      BuildContext context, String iconPath, String label, int jenis) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(bottom: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              color: const Color.fromARGB(255, 30, 30, 30),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Halaman(
                        jenis: jenis,
                        kecamatan: widget.pilihan,
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
          label,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Roboto',
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildSection(String title, List<dynamic> items, int jenis) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: const Color.fromARGB(255, 0, 28, 20),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$title ${widget.pilihan}",
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'League Spartan',
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Halaman(jenis: jenis,kecamatan: widget.pilihan,),
                    ),
                  );
                },
                child: const Text(
                  'Lihat Semua >',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'League Spartan',
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 349,
          color: const Color.fromARGB(255, 3, 22, 17),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: List.generate(
                items.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => _getDetailPage(title, items[index]),
                        ),
                      );
                    },
                    child: _getCardWidget(title, items[index]),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getCardWidget(String title, dynamic item) {
    switch (title) {
      case "Wisata":
        return PopularDestination(destination: item);
      case "Hotel":
        return PopularHotelDestination(destination: item);
      case "Kuliner":
        return PopularKulinerDestination(destination: item);
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _getDetailPage(String title, dynamic item) {
    switch (title) {
      case "Wisata":
        return DetailDestinasi(destination: item);
      case "Hotel":
        return DetailDestinasi1(destination: item);
      case "Kuliner":
        return DetailDestinasi2(destination: item);
      default:
        return const SizedBox.shrink();
    }
  }
}
