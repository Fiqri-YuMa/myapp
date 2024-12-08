import 'package:flutter/material.dart';
import 'package:myapp/models/destinasi_wisata.dart';
import 'package:myapp/models/hotel_wisata.dart';
import 'package:myapp/models/kuliner_wisata.dart';
import 'package:myapp/screen/detail_destination.dart';
import 'package:myapp/widget/wisata.dart';

class HalamanWisata extends StatefulWidget {
  final int jenis;
  const HalamanWisata({super.key, required this.jenis});
  @override
  State<HalamanWisata> createState() => _HalamanState();
}

class _HalamanState extends State<HalamanWisata> {
  List<TravelDestination> wisata = listDestination;
  List<hotelDestination> hotel = listHotelDestination;
  List<KulinerDestination> popular = listKulinerDestination;

  PageController pageController = PageController();
  int pageView = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 28, 20),
        actions: [
          Container(
            padding: EdgeInsets.only(top: 12, bottom: 12),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: Container(
                padding: EdgeInsets.only(right: 80, bottom: 25),
                color: Color.fromARGB(255, 0, 16, 12),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.location_on),
                  alignment: Alignment.centerLeft,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 120,
            color: Color.fromARGB(255, 0, 16, 12),
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.only(bottom: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        child: Container(
                          padding: EdgeInsets.all(2),
                          color: Color.fromARGB(255, 30, 30, 30),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image(
                                image: AssetImage(
                                  'image/Vector.png',
                                ),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    ),
                    Text(
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
                      margin: EdgeInsets.only(bottom: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        child: Container(
                          padding: EdgeInsets.all(2),
                          color: Color.fromARGB(255, 30, 30, 30),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image(
                                image: AssetImage(
                                  'image/Vector1.png',
                                ),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    ),
                    Text(
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
                      margin: EdgeInsets.only(bottom: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        child: Container(
                          padding: EdgeInsets.all(2),
                          color: Color.fromARGB(255, 30, 30, 30),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image(
                                image: AssetImage(
                                  'image/Vector2.png',
                                ),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    ),
                    Text(
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
                      margin: EdgeInsets.only(bottom: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        child: Container(
                          padding: EdgeInsets.all(2),
                          color: Color.fromARGB(255, 30, 30, 30),
                          child: IconButton(
                            onPressed: () {},
                            icon: Image(
                              image: AssetImage(
                                'image/Vector3.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
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
          Container(
            width: MediaQuery.sizeOf(context).width,
            color: Color.fromARGB(255, 0, 28, 20),
            padding: EdgeInsets.only(left: 30,top: 10,bottom: 10),
            child: Text(
              'Wisata Cipanas',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'League Spartan',
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              color: Color.fromARGB(255, 3, 22, 17),
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    wisata.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(top: 20, left: 10, right: 10),
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
                        child: halamanDestination(destination: wisata[index]),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 0, 57, 41),
        padding: EdgeInsets.only(bottom: 20, left: 10, right: 10, top: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
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
              // currentIndex: _selectedNavbar,
              backgroundColor: Color.fromARGB(255, 0, 28, 20),
              selectedItemColor: Colors.grey,
              unselectedItemColor: Colors.white,
              showUnselectedLabels: true,
              // onTap: _changeSelectedNavBar,
            ),
          ),
        ),
      ),
    );
  }
}
