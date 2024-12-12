import 'package:flutter/material.dart';
// import 'package:myapp/models/destinasi_wisata.dart';
// import 'package:myapp/screen/detail_destination.dart';

class informasi_1 extends StatefulWidget {
  final List<String>? destination;
  const informasi_1({super.key, required this.destination});

  @override
  State<informasi_1> createState() => _informasi_1State();
}

class _informasi_1State extends State<informasi_1> {
  PageController pageController = PageController();
  int pageView = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: 
      IconButton(onPressed:(){}, icon: 
      const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      ),
      title: const Text('Gunung Gede',
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'Roboto',
        fontSize: 20,
        ),
        ),
      backgroundColor: const Color.fromARGB(255, 0, 28, 20),
      ),
      body:Stack(
        children: [
              Column(
            children: [
              SizedBox(
                height: 412,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Stack(
                    children: [
                      PageView(
                        controller: pageController,
                        onPageChanged: (value) {
                          setState(() {
                            pageView = value;
                          });
                        },
                        children: List.generate(
                          widget.destination!.length,
                          (index) => Image.asset(
                            widget.destination![index],
                            fit: BoxFit.cover,
                            // (index) => Image.network(
                            //   fit: BoxFit.cover,
                            //   widget.destination.image![index],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Spacer(),
                          Container(
      
                            width: MediaQuery.of(context).size.width*1.0,
                            height: 50,
                            margin: const EdgeInsets.only(bottom: 240),
                            padding: const EdgeInsets.only(left: 340),
                            child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                    Icons.bookmark_border,
                                    color: Colors.white,
                                    ),
                                    iconSize: 40,
                                    ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 70),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                      widget.destination!.length,
                                      (index) => GestureDetector(
                                        onTap: () {
                                          if (pageController.hasClients) {
                                            pageController.animateToPage(index,
                                                duration: const Duration(
                                                    milliseconds: 500),
                                                curve: Curves.easeInOut);
                                          }
                                        },
                                        child: AnimatedContainer(
                                          duration:
                                              const Duration(milliseconds: 500),
                                          height: 8,
                                          width: 50,
                                          margin:
                                              const EdgeInsets.only(right: 5),
                                          decoration: BoxDecoration(
                                            color: pageView == index
                                                ? const Color.fromARGB(255, 201, 255, 250)
                                                : Colors.white.withOpacity(0.4),
                                                boxShadow: [
                                                  BoxShadow(
                                                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5), // Warna bayangan
                                                  spreadRadius: 2, // Jarak penyebaran bayangan
                                                  blurRadius: 5, // Tingkat blur bayangan
                                                  offset: const Offset(0, 3), // Posisi bayangan (x, y)
                                                  ),
                                                  ],
                                            borderRadius:
                                                BorderRadius.circular(70),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //container hejo
          Column(
            children: [
             const Spacer(),
             Container(
               width: MediaQuery.of(context).size.width*1.0,
               height: 480,
               margin: const EdgeInsets.only(bottom:0),
                 decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 0, 28, 20),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                  ),
                  child: Column(
                    children: [
                      //list1
                      Container(
                        margin: const EdgeInsets.only(top: 35),
                        height: 58,
                        width: 337,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 0, 28, 20),
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: Colors.white,
                            width: 3.0,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                          'Pesan Tiket',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'roboto',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ),
                      ),
                      //list1
                      //list2
                      Container(
                        margin: const EdgeInsets.only(top: 25),
                        height: 58,
                        width: 337,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 0, 28, 20),
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: Colors.white,
                            width: 3.0,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                          'Lokasi Wisata',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'roboto',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ),
                      ),
                      //list2
                      //list3
                      Container(
                        margin: const EdgeInsets.only(top: 25),
                        height: 58,
                        width: 337,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 0, 28, 20),
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: Colors.white,
                            width: 3.0,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                          'Instagram',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'roboto',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ),
                      ),
                      //list3
                      //list4
                      Container(
                        margin: const EdgeInsets.only(top: 25),
                        height: 58,
                        width: 337,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 0, 28, 20),
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: Colors.white,
                            width: 3.0,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                          'Facebook',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'roboto',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ),
                      ),
                      //list4
                      //list5
                      Container(
                        margin: const EdgeInsets.only(top: 25),
                        height: 58,
                        width: 337,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 0, 28, 20),
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: Colors.white,
                            width: 3.0,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                          'WhatsApp',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'roboto',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ),
                      ),
                      //list5
                    ],
                  ),
             ),
            ],
          ),
          //end container hejo 
        ],
      ),
    );
  }
}