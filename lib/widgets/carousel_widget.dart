import 'package:flutter/material.dart';
import 'package:slideshow_app/models/models.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: 250,
      width: size.width,
      child: Stack(
        children: [
          PageView.builder(
            controller: controller,
            physics: const ClampingScrollPhysics(),
            itemCount: demoCarousel.length,
            itemBuilder: (context, index) => _CustomCarousel(
              size: size,
              carousel: demoCarousel[index],
              controller: controller,
            ),
          ),
          _CustomSmoothIndicator(controller: controller),
        ],
      ),
    );
  }
}

class _CustomCarousel extends StatelessWidget {
  final PageController controller;
  final Carousel carousel;
  const _CustomCarousel({
    Key? key,
    required this.size,
    required this.carousel,
    required this.controller,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FadeInImage(
          height: 250,
          width: size.width,
          fit: BoxFit.cover,
          placeholder: const AssetImage('assets/imgs/loaidng.gif'),
          image: AssetImage(carousel.imgUrl),
        ),
        Container(
          width: size.width,
          height: 250,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black26,
                // Colors.black12,
                Colors.black.withOpacity(0.2),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        ...demoCarousel
            .map((e) => _Titles(
                  carousel: carousel,
                  controller: controller,
                ))
            .toList(),
      ],
    );
  }
}

class _CustomSmoothIndicator extends StatelessWidget {
  const _CustomSmoothIndicator({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      right: 10,
      child: SmoothPageIndicator(
        controller: controller,
        count: demoCarousel.length,
        effect: CustomizableEffect(
          spacing: 8,
          activeDotDecoration: DotDecoration(
              width: 8,
              height: 18,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)),
          dotDecoration: const DotDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class _Titles extends StatelessWidget {
  final PageController controller;
  final Carousel carousel;
  const _Titles({
    Key? key,
    required this.carousel,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 250,
      // color: Colors.red,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                margin: const EdgeInsets.only(bottom: 5),
                color: Colors.grey.withOpacity(1),
                child: Text(
                  'Special Offer'.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: size.width * 0.6,
                  ),
                  child: Text(
                    carousel.title!.toUpperCase(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  carousel.description!.toUpperCase(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.white,
                      ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: size.width * 0.2,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () => controller.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              ),
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.black,
                size: 32,
              ),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
