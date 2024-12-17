import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp/bagian_layar/app_bar.dart';
import 'package:myapp/bagian_layar/navigasi_bawah.dart';
import 'package:myapp/models/data_profile.dart';

class isi_akun extends StatefulWidget {
  final String x;
  const isi_akun({super.key, required this.x});

  @override
  State<isi_akun> createState() => _isi_akunState();
}

class _isi_akunState extends State<isi_akun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(kecamatan: "Cipanas", currentIndex: 2, halaman2: 0),
      body: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: MediaQuery.of(context).size.height * 1.0,
        color: const Color.fromARGB(255, 0, 41, 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width * 1.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image/bg_profil.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 40, bottom: 10),
                      height: 140,
                      width: 140,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/image/neng_selena.png'),
                            fit: BoxFit.contain,
                          )),
                    ),
                    Text(
                      profile.isi[1],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              //akun list
              Container(
                margin: const EdgeInsets.only(top: 30),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  color: Color.fromARGB(255, 227, 236, 234),
                ),
                child: const ListTile(
                  title: Text(
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
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Color.fromARGB(255, 227, 236, 234),
                ),
                child: const ListTile(
                  title: Text(
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
                margin: const EdgeInsets.only(top: 30),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  color: Color.fromARGB(255, 227, 236, 234),
                ),
                child: const ListTile(
                  title: Text(
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
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60,
                color: const Color.fromARGB(255, 227, 236, 234),
                child: const ListTile(
                  title: Text(
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
                margin: const EdgeInsets.only(bottom: 30),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Color.fromARGB(255, 227, 236, 234),
                ),
                child: const ListTile(
                  title: Text(
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
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 2, 78, 42),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
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
      ),
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 0, 57, 41),
        padding:
            const EdgeInsets.only(bottom: 20, left: 10, right: 10, top: 15),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: tombol_bawah(index: 2, kecamatan: widget.x),
        ),
      ),
    );
  }
}
