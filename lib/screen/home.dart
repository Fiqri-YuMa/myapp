import 'package:flutter/material.dart';
import 'package:myapp/models/destinasi_wisata.dart';
import 'package:myapp/screen/detail_destination.dart';
import 'package:myapp/widget/populer.dart';

class BelajarNavBar extends StatefulWidget {
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
          margin: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('image/logo.png'),
              fit: BoxFit.none,
              scale: 10.0,
              alignment: Alignment.centerLeft,
            ),
          ),
        ),
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
      backgroundColor: Color.fromARGB(255, 1, 44, 32),
      body: Column(
        children: [
          Container(
            height: 110,
            color: Color.fromARGB(255, 0, 57, 41),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text("Wellcome Kabupaten Cianjur",style: TextStyle(color: Colors.white,fontSize: 24),),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("Cari dan tentukan wisata pilihan di tiap-tiap kecamatan yang ada di kabupaten Cianjur",style: TextStyle(color: Colors.white,fontSize: 14,),
                ),),
              ],
            )
          ),
          Container(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Container(
                      padding: EdgeInsets.all(2),
                      color: Color.fromARGB(255, 30, 30, 30),
                      child: IconButton(onPressed: (){}, icon: Image(image: AssetImage('image/Vector.png',),fit: BoxFit.cover,)),
                    ),
                  ),
                ),
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Container(
                      padding: EdgeInsets.all(2),
                      color: Color.fromARGB(255, 30, 30, 30),
                      child: IconButton(onPressed: (){}, icon: Image(image: AssetImage('image/Vector1.png',),fit: BoxFit.cover,)),
                    ),
                  ),
                ),
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Container(
                      padding: EdgeInsets.all(2),
                      color: Color.fromARGB(255, 30, 30, 30),
                      child: IconButton(onPressed: (){}, icon: Image(image: AssetImage('image/Vector2.png',),fit: BoxFit.cover,)),
                    ),
                  ),
                ),
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Container(
                      padding: EdgeInsets.all(2),
                      color: Color.fromARGB(255, 30, 30, 30),
                      child: IconButton(onPressed: (){}, icon: Image(image: AssetImage('image/Vector3.png',),fit: BoxFit.cover,)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Wisata Populer Cipanas',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Lihat Semua',
                  style: TextStyle(fontSize: 12, color: Colors.blue),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: List.generate(
                popular.length,
                (index) => Padding(
                  padding: EdgeInsets.only(right: 10),
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hotel Populer Cipanas',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Lihat Semua',
                  style: TextStyle(fontSize: 12, color: Colors.blue),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: List.generate(
                popular.length,
                (index) => Padding(
                  padding: EdgeInsets.only(right: 10),
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
                    child: hotelDestination(destination: popular[index]),
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
                currentIndex: _selectedNavbar,
                backgroundColor: Color.fromARGB(255, 0, 28, 20),
                selectedItemColor: Colors.grey,
                unselectedItemColor: Colors.white,
                showUnselectedLabels: true,
                onTap: _changeSelectedNavBar,
              ),
            )),
      ),
    );
  }
}
