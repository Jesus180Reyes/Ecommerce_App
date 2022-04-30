class ProductDiscount {
  final String title;
  final String image;
  final String description;
  final String price;
  final int discount;

  ProductDiscount({
    required this.title,
    required this.image,
    required this.description,
    required this.price,
    required this.discount,
  });
}

final List demoproductDiscount = [
  ProductDiscount(
    title: 'BOMBA DE PIE BOM-TR TRUPER 14863',
    image: 'assets/imgs/img5.jpg',
    description: 'BOMBA DE PIE BOM-TR TRUPER 14863',
    price: '202.00',
    discount: 20,
  ),
  ProductDiscount(
    title: 'ANTENA PARA TV GIRATORIA 360 GRADOS VOLTECK 48115',
    image: 'assets/imgs/img6.jpg',
    description: 'Estructura sólida resistente a humedad.',
    price: '547.00',
    discount: 50,
  ),
  ProductDiscount(
    title: 'CINTA AISLANTE 3/4X18MTS M-33 TRUPER NEGRO 12500',
    image: 'assets/imgs/img7.jpg',
    description: 'Truper m-33 cinta de aislar, color negro, 18 m x 19 mm.',
    price: '23.00',
    discount: 10,
  ),
  ProductDiscount(
    title: 'BOMBA PARA AGUA 1/2-HP 50 LTRS TRUPER HIDRO HIDR-1/2X50 12254',
    image: 'assets/imgs/img8.jpg',
    description: 'Motor tipo "jet" con devanado de cobre, impulsor de latón',
    price: '7280.00',
    discount: 50,
  ),
];
