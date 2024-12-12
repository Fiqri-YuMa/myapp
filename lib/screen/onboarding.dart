import 'package:flutter/material.dart';

class ExploreCianjur extends StatelessWidget {
  const ExploreCianjur({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}



class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  List<Widget> _getChildren() {
    return [
      ExploreCianjurScreen(),
      const Center(child: Text('Favorit')), 
      const Center(child: Text('Akun')),    
    ];
  }

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _getChildren(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
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
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onTappedBar,
      ),
    );
  }
}

class ExploreCianjurScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00361C),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text Header
          const Text(
            'Explore.\nCianjur.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 20),

          const CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('asset/image/curug.jpg'), 
          ),

          const SizedBox(height: 20),

          
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Jelajahi tempat wisata, kuliner lezat, dan penginapan terbaik di Cianjur dengan mudah. Semua ada di genggaman Anda.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 40),

          
          ElevatedButton(
            onPressed: () {
              
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF005B35),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text(
              'Mulai',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 20),

          
          TextButton(
            onPressed: () {
              
            },
            child: const Text(
              'Sudah punya akun? Masuk',
              style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
