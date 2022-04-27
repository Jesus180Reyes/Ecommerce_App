class Product {
  int id;
  String name;
  String description;
  String imageUrl;
  String price;
  bool isFavorite;
  String isDiscount;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    this.isFavorite = false,
    this.isDiscount = '',
  });
}

final List<Product> demoProducts = [
  Product(
    id: 1,
    name: 'Herramienta de pintura',
    description: 'Herramienta de pintura para pintar',
    imageUrl: 'assets/imgs/img1.jpg',
    price: '199.99',
    isDiscount: '50% off',
  ),
  Product(
    id: 2,
    name: 'Tubos de Metal',
    description: 'Tubos de metal para el uso cotidiano',
    imageUrl: 'assets/imgs/img2.jpg',
    price: '99.99',
  ),
  Product(
    id: 3,
    name: 'PORT-14040 TALADRO P...',
    description: 'PORT-14040 TALADRO PERCUTOR 7 AMP 2-VELOCIDADES PC70THD',
    imageUrl: 'assets/imgs/img3.jpg',
    price: '2,122.10',
  ),
  Product(
    id: 4,
    name:
        'CIERVO-LAMPARA DE SODIO PARA CALLE CON BRAZO TIPO COBRA SL-400A 220V 400W EXCL',
    description:
        'CIERVO-LAMPARA DE SODIO PARA CALLE CON BRAZO TIPO COBRA SL-400A 220V 400W EXCL',
    imageUrl: 'assets/imgs/img4.jpg',
    price: '1,542.50',
    isDiscount: '5% off',
  ),
];
