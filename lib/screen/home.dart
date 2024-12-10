import 'package:flutter/material.dart';
import 'package:myapp/models/destinasi_wisata.dart';
import 'package:myapp/models/hotel_wisata.dart';
import 'package:myapp/screen/detail_destination.dart';
import 'package:myapp/widget/hotel.dart';
import 'package:myapp/widget/wisata.dart';

class BelajarNavBar extends StatefulWidget {
  const BelajarNavBar({super.key});

  @override
  _BelajarNavBarState createState() => _BelajarNavBarState();
}

class _BelajarNavBarState extends State<BelajarNavBar> {
  int _selectedNavbar = 0;

  List<TravelDestination> popular = listDestination
      .where((element) => element.category == 'popular')
      .toList();

  List<TravelDestination> rekomendasi = listDestination
      .where((element) => element.category == 'rekomendasi')
      .toList();

  List<hotelDestination> rekomendasihotel = listHotelDestination
      .where((element) => element.category == 'rekomendasi')
      .toList();

  List<hotelDestination> popularhotel = listHotelDestination
      .where((element) => element.category == 'popular')
      .toList();

  List<IconData> icons = [
    Icons.home_filled,
    Icons.bookmark_border_rounded,
    Icons.shopping_cart_outlined,
    Icons.person_outline_outlined,
  ];

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              child: Container(
                padding: const EdgeInsets.only(right: 80, bottom: 25),
                color: const Color.fromARGB(255, 0, 16, 12),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.location_on),
                  alignment: Alignment.centerLeft,
                  color: Colors.white,
                ),
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
      ),
      backgroundColor: const Color.fromARGB(255, 1, 44, 32),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 110,
                padding: const EdgeInsets.only(right: 10, left: 10),
                color: const Color.fromARGB(255, 0, 57, 41),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Wellcome Kabupaten Cianjur",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
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
                ),),
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
                          borderRadius: const BorderRadius.all(Radius.circular(50)),
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
                          borderRadius: const BorderRadius.all(Radius.circular(50)),
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
                          borderRadius: const BorderRadius.all(Radius.circular(50)),
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
                          borderRadius: const BorderRadius.all(Radius.circular(50)),
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
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wisata Populer Cipanas',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Text(
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
                    popular.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  DetailDestinasi(destination: popular[index]),
                            ),
                          );
                        },
                        child: PopularDestination(destination: popular[index]),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 0, 28, 20),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hotel Populer Cipanas',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'League Spartan',
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Text(
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
                    popular.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  DetailDestinasi(destination: popular[index]),
                            ),
                          );
                        },
                        child: PopularHotelDestination(
                            destination: popularhotel[index]),
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
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 0, 57, 41),
        padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10, top: 15),
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
              backgroundColor: const Color.fromARGB(255, 0, 28, 20),
              selectedItemColor: Colors.grey,
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
