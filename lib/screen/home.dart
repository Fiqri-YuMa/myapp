import 'package:flutter/material.dart';
import 'package:myapp/models/destinasi_wisata.dart';
import 'package:myapp/models/hotel_wisata.dart';
import 'package:myapp/models/kuliner_wisata.dart';
import 'package:myapp/screen/detail_destination.dart';
// import 'package:myapp/screen/halaman.dart';
import 'package:myapp/widget/hotel.dart';
import 'package:myapp/widget/kuliner.dart';
import 'package:myapp/widget/wisata.dart';

class BelajarNavBar extends StatefulWidget {
  final String pilihan;
  const BelajarNavBar({super.key, required this.pilihan});

  @override
  _BelajarNavBarState createState() => _BelajarNavBarState();
}

class _BelajarNavBarState extends State<BelajarNavBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late List<TravelDestination> wisata = listDestination
      .where((element) => element.category == widget.pilihan)
      .toList();

  late List<hotelDestination> hotel = listHotelDestination
      .where((element) => element.category == widget.pilihan)
      .toList();

  late List<KulinerDestination> kuliner = listKulinerDestination
      .where((element) => element.category == widget.pilihan)
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 44, 32),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 140,
              padding: const EdgeInsets.only(right: 10, left: 10),
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
            ),
            Container(
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
                                  'image/Vector3.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        'Event',
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
            const SizedBox(
              height: 10,
            ),
            Container(
              color: const Color.fromARGB(255, 0, 28, 20),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wisata ${widget.pilihan}',
                      style: const TextStyle(
                        fontSize: 12,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Lihat Semua >',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
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
                    wisata.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  DetailDestinasi(destination: wisata[index]),
                            ),
                          );
                        },
                        child: PopularDestination(destination: wisata[index]),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 0, 28, 20),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hotel ${widget.pilihan}",
                      style: const TextStyle(
                        fontSize: 12,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Lihat Semua >',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
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
                    hotel.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  DetailDestinasi(destination: wisata[index]),
                            ),
                          );
                        },
                        child:
                            PopularHotelDestination(destination: hotel[index]),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 0, 28, 20),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Kuliner ${widget.pilihan}',
                      style: const TextStyle(
                        fontSize: 12,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Lihat Semua >',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
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
                    kuliner.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  DetailDestinasi(destination: wisata[index]),
                            ),
                          );
                        },
                        child: PopularKulinerDestination(
                            destination: kuliner[index]),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   padding: EdgeInsets.only(left: 15),
            //   child: Row(
            //     children: List.generate(
            //       popular.length,
            //       (index) => Padding(
            //         padding: EdgeInsets.only(right: 10),
            //         child: GestureDetector(
            //           onTap: () {
            //             Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                 builder: (_) =>
            //                     DetailDestinasi(destination: popular[index]),
            //               ),
            //             );
            //           },
            //           child: TravelDestination(destination: popular[index]),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
