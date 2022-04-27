class Carousel {
  String imgUrl;
  String? title;
  String? description;

  Carousel({
    required this.imgUrl,
    this.title,
    this.description,
  });
}

final List<Carousel> demoCarousel = [
  Carousel(
    imgUrl: 'assets/imgs/Banner1.png',
    title: 'Summer Sale',
    description: 'Up to 50% off',
  ),
  Carousel(
    imgUrl: 'assets/imgs/Banner2.png',
    description: 'Up to 50% off',
    title: 'Summer Sale',
  ),
  Carousel(
    imgUrl: 'assets/imgs/Banner3.jpg',
    description: 'Up to 50% off en Electronica',
    title: 'Disfruta con tu familia y amigos',
  ),
];
