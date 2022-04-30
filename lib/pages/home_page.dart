import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slideshow_app/helpers/helpers.dart';
import 'package:slideshow_app/ui/custom_appbar.dart';
import 'package:slideshow_app/ui/ui.dart';
import 'package:slideshow_app/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    cambiarStatusDark();
    return Scaffold(
      appBar: customAppbar(context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            CarouselWidget(),
            SizedBox(height: 20),
            CustomTitle(title: 'Categories'),
            SizedBox(height: 10),
            CategoryWidget(),
            SizedBox(height: 20),
            CustomTitle(title: 'Popular Products'),
            SizedBox(height: 10),
            ProductWidget(),
            SizedBox(height: 20),
            BannerSaleOff(),
            SizedBox(height: 30),
            CustomTitle(title: 'Flash Sale'),
            ProductDiscountWidget(),
          ],
        ),
      ),
    );
  }
}
