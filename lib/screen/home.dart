import 'package:flutter/material.dart';

class BelajarNavBar extends StatefulWidget {
  @override
  _BelajarNavBarState createState() => _BelajarNavBarState();
}

class _BelajarNavBarState extends State<BelajarNavBar> {
  int _selectedNavbar = 0;

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
              image: AssetImage('assets/image/logo.png'),
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
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Selamat Datang di Cianjur",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
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