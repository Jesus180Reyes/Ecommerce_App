import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SlideShowBody extends StatelessWidget {
  final String imgaUrl;
  final String title;
  final String description;
  const SlideShowBody({
    Key? key,
    required this.imgaUrl,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Spacer(),
          SvgPicture.asset(
            imgaUrl,
            height: 250,
          ),
          const Spacer(),
          Text(
            title,
            style: Theme.of(context).textTheme.headline4,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: Theme.of(context).textTheme.subtitle1,
            textAlign: TextAlign.center,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
