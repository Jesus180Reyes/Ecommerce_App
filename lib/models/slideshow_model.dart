class SlideShow {
  String title;
  String description;
  String imageUrl;

  SlideShow({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

final List<SlideShow> demoSlideShows = [
  SlideShow(
    title: 'Compra lo mejor en productos',
    description: 'Con promaco compra lo mejor en productos ferreteros.',
    imageUrl: "assets/svgs/undraw_coolness_re_sllr.svg",
  ),
  SlideShow(
    title: 'Compra desde la comodidad de tu casa',
    description: 'Ahora con promaco puedes comprar desde tu casa.',
    imageUrl: 'assets/svgs/undraw_product_explainer_8jbm.svg',
  ),
  SlideShow(
    title: 'Compra con tus tarjetas visa',
    description: 'Puedes comprar con tus tarjetas visa O Mastercard',
    imageUrl: 'assets/svgs/undraw_social_thinking_re_y8cc.svg',
  )
];
