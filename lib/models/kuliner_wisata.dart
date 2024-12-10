import 'dart:math';

Random random = Random();

class KulinerDestination {
  final String des;
  final int id, price, review;
  final List<String>? image;
  final String name,  category, location;
  final double rate;

  KulinerDestination( {
    required this.des,
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.location,
    required this.review,
    required this.price,
    required this.rate,
  });
}

List<KulinerDestination> listKulinerDestination = [
  // Popular destinations
  KulinerDestination(
      id: 1,
      name: "Warung Nasi Alam Sunda",
      category: 'Cipanas',
      image: [
        'image/alam-sunda-1.jpg',
        'image/alam-sunda-2.jpg',
        'image/alam-sunda-3.jpg',
      ],
      location: 'Kecamatan Cipanas, Kabupaten Cianjur',
      review: random.nextInt(250) + 20,
      price: 150,
      des : 'Rumah makan sunda yang Banyak aneka menu masakan khas Sunda, tempatnya biasa, parkiran mobil yang cukup, harga relatif, rame saat hari liburan',
      rate: 4.8),
  KulinerDestination(
      id: 2,
      name: "Rumah Makan Bumi Aki",
      category: 'Cipanas',
      image: [
        'image/bumi-aki-1.jpg',
        'image/bumi-aki-2.jpg',
        'image/bumi-aki-3.jpg',
      ],
      location: 'Kecamatan Cipanas, Kabupaten Cianjur',
      review: random.nextInt(250) + 20,
      price: 250,
      des : '',
      rate: 4.9),
  KulinerDestination(
      id: 3,
      name: "Sate Maranggi Sari Asih",
      category: 'Cipanas',
      image: [
        'image/sate-1.jpg',
        'image/sate-2.jpg',
        'image/sate-3.jpg',
      ],
      location: 'Kecamatan Cipanas, Kabupaten Cianjur',
      review: random.nextInt(250) + 20,
      price: 250,
      des : '',
      rate: 4.8),
];
