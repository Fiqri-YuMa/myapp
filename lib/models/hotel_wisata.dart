import 'dart:math';

Random random = Random();
const description =
    'Tempat-tempat wisata menawarkan beragam pengalaman, masing-masing dengan pesona dan daya tarik yang unik. Dari lanskap alam yang memukau hingga landmark bersejarah, selalu ada sesuatu untuk setiap wisatawan. Wisata PesisirDestinasi seperti pantai tropis mengundang relaksasi dengan air yang jernih, sementara daerah pegunungan menawarkan jalur pendakian yang penuh petualangan dan pemandangan yang menakjubkan.';

class hotelDestination {
  final int id, price, review;
  final List<String>? image;
  final String name, description, category, location;
  final double rate;

  hotelDestination({
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.location,
    required this.review,
    required this.price,
    required this.description,
    required this.rate,
  });
}

List<hotelDestination> listHotelDestination = [
  // Popular destinations
  hotelDestination(
      id: 1,
      name: "Gunung Bromo",
      category: 'popular',
      image: [
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

  hotelDestination(
      id: 1,
      name: "Gunung Bromo",
      category: 'popular',
      image: [
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

  hotelDestination(
      id: 1,
      name: "Gunung Bromo",
      category: 'popular',
      image: [
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
  
 hotelDestination(
      id: 1,
      name: "Gunung Bromo",
      category: 'popular',
      image: [
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
  
   hotelDestination(
      id: 1,
      name: "Gunung Bromo",
      category: 'popular',
      image: [
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
  

  hotelDestination(
      id: 1,
      name: "Gunung Bromo",
      category: 'rekomendasi',
      image: [
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

  hotelDestination(
      id: 1,
      name: "Gunung Bromo",
      category: 'rekomendasi',
      image: [
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

  hotelDestination(
      id: 1,
      name: "Gunung Bromo",
      category: 'rekomendasi',
      image: [
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
];
