import 'dart:math';

Random random = Random();
const description =
    'Tempat-tempat wisata menawarkan beragam pengalaman, masing-masing dengan pesona dan daya tarik yang unik. Dari lanskap alam yang memukau hingga landmark bersejarah, selalu ada sesuatu untuk setiap wisatawan. Wisata PesisirDestinasi seperti pantai tropis mengundang relaksasi dengan air yang jernih, sementara daerah pegunungan menawarkan jalur pendakian yang penuh petualangan dan pemandangan yang menakjubkan.';

class KulinerDestination {
  final int id, price, review;
  final List<String>? image;
  final List<String>? himage;
  final String name, description, category, location;
  final double rate;

  KulinerDestination({
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.himage,
    required this.location,
    required this.review,
    required this.price,
    required this.description,
    required this.rate,
  });
}

List<KulinerDestination> listKulinerDestination = [
  // Popular destinations
  KulinerDestination(
      id: 1,
      name: "Gunung Bromo",
      category: 'popular',
      image: [
        'image/ggede.png',
        'image/ggede.png',
        'image/ggede.png',
        'image/ggede.png',
      ],
      himage: [
        'image/hggede.png',
        'image/hggede.png',
        'image/hggede.png',
        'image/hggede.png',
      ],
      location: 'Jawa Timur, Indonesia',
      review: random.nextInt(250) + 20,
      price: 150,
      description: description,
      rate: 4.8),
  KulinerDestination(
      id: 2,
      name: "Pulau Komodo",
      category: 'popular',
      image: [
        'image/ggede.png',
        'image/ggede.png',
        'image/ggede.png',
        'image/ggede.png',
      ],
      himage: [
        'image/hggede.png',
        'image/hggede.png',
        'image/hggede.png',
        'image/hggede.png',
      ],
      location: 'NTT, Indonesia',
      review: random.nextInt(250) + 20,
      price: 250,
      description: description,
      rate: 4.9),
  KulinerDestination(
      id: 3,
      name: "Raja Ampat",
      category: 'popular',
      image: [
        'image/ggede.png',
        'image/ggede.png',
        'image/ggede.png',
        'image/ggede.png',
      ],
      himage: [
        'image/hggede.png',
        'image/hggede.png',
        'image/hggede.png',
        'image/hggede.png',
      ],
      location: 'Papua Barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 250,
      description: description,
      rate: 4.8),
  KulinerDestination(
      id: 4,
      name: "Tanah Lot",
      category: 'popular',
      image: [
        'image/ggede.png',
        'image/ggede.png',
        'image/ggede.png',
        'image/ggede.png',
      ],
      himage: [
        'image/hggede.png',
        'image/hggede.png',
        'image/hggede.png',
        'image/hggede.png',
      ],
      location: 'Bali, Indonesia',
      review: random.nextInt(250) + 20,
      price: 100,
      description: description,
      rate: 4.7),

  // Recommended destinations
  KulinerDestination(
      id: 5,
      name: "Kawah Ijen",
      category: 'rekomendasi',
      image: [
        'image/ggede.png',
        'image/ggede.png',
        'image/ggede.png',
        'image/ggede.png',
      ],
      himage: [
        'image/hggede.png',
        'image/hggede.png',
        'image/hggede.png',
        'image/hggede.png',
      ],
      location: 'Jawa Timur, Indonesia',
      review: random.nextInt(250) + 20,
      price: 180,
      description: description,
      rate: 4.6),
  KulinerDestination(
      id: 6,
      name: "Danau Toba",
      category: 'rekomendasi',
      image: [
        'image/ggede.png',
        'image/ggede.png',
        'image/ggede.png',
        'image/ggede.png',
      ],
      himage: [
        'image/hggede.png',
        'image/hggede.png',
        'image/hggede.png',
        'image/hggede.png',
      ],
      location: 'Sumatera Utara, Indonesia',
      review: random.nextInt(250) + 20,
      price: 120,
      description: description,
      rate: 4.5),
  KulinerDestination(
      id: 7,
      name: "Pink Beach",
      category: 'rekomendasi',
      image: [
        'image/ggede.png',
        'image/ggede.png',
        'image/ggede.png',
        'image/ggede.png',
      ],
      himage: [
        'image/hggede.png',
        'image/hggede.png',
        'image/hggede.png',
        'image/hggede.png',
      ],
      location: 'NTT, Indonesia',
      review: random.nextInt(250) + 20,
      price: 350,
      description: description,
      rate: 4.7),
  KulinerDestination(
      id: 8,
      name: "Nusa Penida",
      category: 'rekomendasi',
      image: [
        'image/ggede.png',
        'image/ggede.png',
        'image/ggede.png',
        'image/ggede.png',
      ],
      himage: [
        'image/hggede.png',
        'image/hggede.png',
        'image/hggede.png',
        'image/hggede.png',
      ],
      location: 'Bali, Indonesia',
      review: random.nextInt(250) + 20,
      price: 200,
      description: description,
      rate: 4.7),
  KulinerDestination(
      id: 9,
      name: "Candi Borobudur",
      category: 'rekomendasi',
      image: [
        'image/ggede.png',
        'image/ggede.png',
        'image/ggede.png',
        'image/ggede.png',
      ],
      himage: [
        'image/hggede.png',
        'image/hggede.png',
        'image/hggede.png',
        'image/hggede.png',
      ],
      location: 'Jawa Tengah, Indonesia',
      review: random.nextInt(250) + 20,
      price: 150,
      description: description,
      rate: 4.8),
];
