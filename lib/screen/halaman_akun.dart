import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class isi_akun extends StatefulWidget {
  const isi_akun({super.key});

  @override
  State<isi_akun> createState() => _isi_akunState();
}

class _isi_akunState extends State<isi_akun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: 
      IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back, color: Colors.white,)),
       title: const Text("Akun", 
       style: TextStyle(color: Colors.white, fontSize: 20),
       ),
       backgroundColor: Color.fromARGB(255, 0, 28, 20),
      actions: <Widget>[
        IconButton(onPressed: (){}, 
        icon: const Icon(Icons.search, color: Colors.white,),
        ),
      ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width*1.0,
        height: MediaQuery.of(context).size.height*1.0,
        color: Color.fromARGB(255, 0, 41, 30),
        child: Column(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width*1.0,
            decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/bg_profil.png'),
              fit: BoxFit.cover,
              ),
            ), 
            child: Column(
              children: [
              Container(
              margin: EdgeInsets.only(top: 40, bottom: 10),
              height:140,
              width: 140,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image/neng_selena.png'),
                  fit: BoxFit.contain,
                )
              ),
              ),
              Text(
                "Selena Gomez",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ],
            ) ,
          ),
          
          //akun list
          Container(
          margin: EdgeInsets.only(top: 30),
          width: MediaQuery.of(context).size.width*0.9,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              ),
            color: Color.fromARGB(255, 227, 236, 234),
          ),
            child: ListTile(
            title: const Text(
              'Akun',
              style: TextStyle(
              fontSize: 18, 
              ),
            ),
            leading: Icon(CupertinoIcons.person_fill),
            trailing: Icon(Icons.arrow_forward_ios),
            tileColor: Colors.white,
            iconColor: Colors.grey,

            ),
          ),
           //akun list

          //alamat list
          Container(
          width: MediaQuery.of(context).size.width*0.9,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              ),
            color: Color.fromARGB(255, 227, 236, 234),
          ),
            child: ListTile(
            title: const Text(
              'Alamat',
              style: TextStyle(
              fontSize: 18, 
              ),
            ),
            leading: Icon(Icons.location_on),
            trailing: Icon(Icons.arrow_forward_ios),
            tileColor: Colors.white,
            iconColor: Colors.grey,
            ),
          ),
           //alamat list

          //notifikasi list
          Container(
          margin: EdgeInsets.only(top: 30),
          width: MediaQuery.of(context).size.width*0.9,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              ),
            color: Color.fromARGB(255, 227, 236, 234),
          ),
            child: ListTile(
            title: const Text(
              'notifikasi',
              style: TextStyle(
              fontSize: 18, 
              ),
            ),
            leading: Icon(Icons.notifications),
            trailing: Icon(Icons.arrow_forward_ios),
            tileColor: Colors.white,
            iconColor: Colors.grey,
            ),
          ),
          //notifikasi list

          //kata sandi list
          Container(
          width: MediaQuery.of(context).size.width*0.9,
          height: 60,
          color: Color.fromARGB(255, 227, 236, 234),
            child: ListTile(
            title: const Text(
              'Kata Sandi',
              style: TextStyle(
              fontSize: 18, 
              ),
            ),
            leading: Icon(Icons.location_on),
            trailing: Icon(Icons.arrow_forward_ios),
            tileColor: Colors.white,
            iconColor: Colors.grey,
            ),
          ),
           //kata sandi list 

           //bahasa list
          Container(
          margin: EdgeInsets.only(bottom: 30),
          width: MediaQuery.of(context).size.width*0.9,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              ),
            color: Color.fromARGB(255, 227, 236, 234),
          ),
            child: ListTile(
            title: const Text(
              'Bahasa',
              style: TextStyle(
              fontSize: 18, 
              ),
            ),
            leading: Icon(Icons.language),
            trailing: Icon(Icons.arrow_forward_ios),
            tileColor: Colors.white,
            iconColor: Colors.grey,
            ),
          ),
           //bahasa list

        GestureDetector(
          onTap: () {},
          child: Container(
            width: 150,
            height: 50,
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
            color: const Color.fromARGB(255, 2, 78, 42),
            borderRadius: BorderRadius.circular(10),
             ),
            child: Center(
            child: Text(
            'Edit Akun',
            style: TextStyle(color: Colors.white, fontSize: 16),
             ),
             ),
          ),
        ),
          
          ],
          ),
      ),

      
        
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 0, 57, 41),
        padding: EdgeInsets.only(bottom: 20, left: 6, right: 6, top: 15),
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
                backgroundColor: Color.fromARGB(255, 0, 28, 20),
                selectedItemColor: Colors.teal[100],
                unselectedItemColor: Colors.white,
                showUnselectedLabels: true,
                currentIndex: 2,
              ),
            ),
        ),
      ),
    );
  }
}