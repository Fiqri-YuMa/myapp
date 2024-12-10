import 'dart:math';

Random random = Random();

class EventDestination {
  final String des;
  final int id, price, review;
  final List<String>? image;
  final List<String>? himage;
  final String name, category, location;

  EventDestination({
    required this.des,
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.himage,
    required this.location,
    required this.review,
    required this.price,
  });
}


List<EventDestination> listEventDestination = [
  // Popular destinations
  EventDestination(
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
      des: "eventnya rame bosss",)
];
