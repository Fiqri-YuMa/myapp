import 'package:flutter/material.dart';
import 'package:myapp/models/destinasi_wisata.dart';
import 'package:myapp/screen/informasi_wisata.dart';

class DetailDestinasi extends StatefulWidget {
  final TravelDestination destination;
  const DetailDestinasi({super.key, required this.destination});

  @override
  State<DetailDestinasi> createState() => _DetailDestinasiState();
}

class _DetailDestinasiState extends State<DetailDestinasi> {
  PageController pageController = PageController();
  int pageView = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
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
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.54,
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
                          widget.destination.image!.length,
                          (index) => Image.asset(
                            widget.destination.image![index],
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
                          GestureDetector(
                            child: Container(
                              height: 75,
                              width: 75,
                              margin:
                                  const EdgeInsets.only(right: 10, bottom: 10),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.white),
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  image: widget.destination.image!.length - 1 !=
                                          pageView
                                      ? AssetImage(
                                          widget
                                              .destination.image![pageView + 1],
                                        )
                                      : AssetImage(
                                          widget.destination.image![0],
          
                                        ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.7),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                      widget.destination.image!.length,
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
                                          height: 4,
                                          width: 17,
                                          margin:
                                              const EdgeInsets.only(right: 5),
                                          decoration: BoxDecoration(
                                            color: pageView == index
                                                ? Colors.white
                                                : Colors.white.withOpacity(0.4),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            widget.destination.name,
                                            style: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              const Icon(
                                                Icons.location_on_outlined,
                                                color: Colors.white,
                                                size: 18,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                widget.destination.location,
                                                style: const TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber[800],
                                                size: 23,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                widget.destination.rate
                                                    .toString(),
                                                style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '(${widget.destination.review} reviews)',
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
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
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.60,
                    child: const TabBar(
                      tabs: [
                        Tab(
                          text: 'Deskripsi',
                        ),
                        Tab(
                          text: 'Review',
                        ),
                      ],
                      labelColor: Colors.blue,
                      labelStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Colors.blue,
                      dividerColor: Colors.transparent,
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            widget.destination.des,
                            maxLines: 3,
                            style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              height: 1.5,
                            ),
                          ),
                        ),
                        const Center(
                          child: Text("tidak ada Review"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Price",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Rp${widget.destination.price}K',
                                style: const TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue,
                                ),
                              ),
                              TextSpan(
                                text: '/Person',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: ())),),
                      // return informasi_1(widget.destination.image),
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue,
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                            size: 14,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Tambahkan ke Keranjang',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAppBar() {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(0, 5)),
        ],
      ),
      child: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
          child: detailAppBar(),
        ),
      )),
    );
  }

  Widget detailAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black12),
            ),
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 30,
            ),
          ),
        ),
        const SizedBox(
          child: Text(
            "Detail Destinasi",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black12),
          ),
          child: const Icon(
            Icons.bookmark_border_rounded,
            size: 30,
          ),
        ),
      ],
    );
  }
}
