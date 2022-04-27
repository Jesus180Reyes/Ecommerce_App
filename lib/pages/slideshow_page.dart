import 'package:flutter/material.dart';
import 'package:slideshow_app/helpers/helpers.dart';
import 'package:slideshow_app/models/models.dart';
import 'package:slideshow_app/widgets/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SlideShowPage extends StatefulWidget {
  const SlideShowPage({Key? key}) : super(key: key);

  @override
  State<SlideShowPage> createState() => _SlideShowPageState();
}

class _SlideShowPageState extends State<SlideShowPage> {
  final controller = PageController();
  int pageIndex = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    cambiarStatusDark();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller,
                physics: const ClampingScrollPhysics(),
                onPageChanged: (index) {
                  pageIndex = index;
                },
                itemCount: demoSlideShows.length,
                itemBuilder: (context, index) => SlideShowBody(
                  description: demoSlideShows[index].description,
                  imgaUrl: demoSlideShows[index].imageUrl,
                  title: demoSlideShows[index].title,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  SmoothPageIndicator(
                    controller: controller,
                    count: demoSlideShows.length,
                    effect: CustomizableEffect(
                      spacing: 8,
                      activeDotDecoration: DotDecoration(
                          width: 8,
                          height: 18,
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(20)),
                      dotDecoration: const DotDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  const Spacer(),
                  _Dotindicator(controller: controller),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Dotindicator extends StatelessWidget {
  const _Dotindicator({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      // color: Colors.red,
      child: ElevatedButton(
        onPressed: () async {
          await controller.animateToPage(
            demoSlideShows.length - 1,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
          Navigator.pushReplacementNamed(context, 'home');

          // controller.nextPage(
          //   duration: const Duration(milliseconds: 300),
          //   curve: Curves.ease,
          // );
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.indigo,
          shape: const CircleBorder(),
        ),
        child: Icon(
          controller.page == demoSlideShows.length - 1
              ? Icons.home
              : Icons.arrow_forward,
          size: 30,
        ),
      ),
    );
  }
}
