import 'dart:math';

Random random = Random();

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
      name: "Palace-hotel",
      category: 'Cipanas',
      image: [
        'image/palace-hotel-1.jpg',
        'image/palace-hotel-2.jpg',
        'image/palace-hotel-3.jpg',
      ],
      location: 'Kecamatan Cipanas, Kabupaten Cianjur',
      review: random.nextInt(250) + 20,
      price: 150,
      description: "description",
      rate: 4.8),

  hotelDestination(
      id: 2,
      name: "Puncak in Resort Hotel",
      category: 'Cipanas',
      image: [
        'image/resort-hotel-1.jpg',
        'image/resort-hotel-2.jpg',
        'image/resort-hotel-3.jpg',
        
      ],
      location: 'Kecamatan Cipanas, Kabupaten Cianjur',
      review: random.nextInt(250) + 20,
      price: 150,
      description: "description",
      rate: 4.8),

  hotelDestination(
      id: 1,
      name: "Lembah Hijau Hotel",
      category: 'Cipanas',
      image: [
        'image/lembah-hijau-hotel-1.jpg',
        'image/lembah-hijau-hotel-2.jpg',
        'image/lembah-hijau-hotel-3.jpg',
      ],
      location: 'Kecamatan Cipanas, Kabupaten Cianjur',
      review: random.nextInt(250) + 20,
      price: 150,
      description: "description",
      rate: 4.8),
];
