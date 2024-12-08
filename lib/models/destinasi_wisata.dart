import 'dart:math';

Random random = Random();

class TravelDestination {
  final String des;
  final int id, price, review;
  final List<String>? image;
  final String name,  category, location;
  final double rate;

  TravelDestination( {
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

List<TravelDestination> listDestination = [
  // Popular destinations
  TravelDestination(
      id: 1,
      name: "Gunung Gede",
      category: 'popular',
      image: [
        'image/ggede.png',
        'image/gede-2.jpg',
        'image/gede-3.jpg',
      ],
      location: 'Kecamatan Cipanas, Kabupaten Cianjur',
      review: random.nextInt(250) + 20,
      price: 150,
      des : 'Taman Nasional Gunung Gede Pangrango adalah salah satu taman nasional yang terletak di Provinsi Jawa Barat. Ditetapkan pada tahun 1980, taman nasional ini merupakan salah satu yang tertua di Indonesia.',
      rate: 4.8),
  TravelDestination(
      id: 2,
      name: "cibodas",
      category: 'popular',
      image: [
        'image/cibodas-1.jpg',
        'image/cibodas-2.jpg',
        'image/cibodas-3.jpg',
      ],
      location: 'Kecamatan Cipanas, Kabupaten Cianjur',
      review: random.nextInt(250) + 20,
      price: 250,
      des : 'Kebun Raya Cibodas merupakan tempat Taman hijau yang indah dengan koleksi ratusan pepohonan, termasuk pohon kina yang pertama kali didatangkan pada tahun 1852. Kebun Raya Cibodas juga memiliki Taman Lumut terbesar di Indonesia dan terbesar di dunia yang berada di luar ruangan. ',
      rate: 4.9),
  TravelDestination(
      id: 3,
      name: "Sevillage Cipanas",
      category: 'popular',
      image: [
        'image/sevillage-1.jpg',
        'image/sevillage-2.jpg',
        'image/sevillage-3.jpg',
      ],
      location: 'Kecamatan Cipanas, Kabupaten Cianjur',
      review: random.nextInt(250) + 20,
      price: 250,
      des : 'Sevillage merupakan Taman di lereng bukit dengan jalan kayu, yang menawarkan bangunan untuk berfoto, restoran, dan tenda glamping.',
      rate: 4.7),
];
