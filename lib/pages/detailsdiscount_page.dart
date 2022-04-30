import 'package:flutter/material.dart';
import 'package:slideshow_app/models/discount_porduct.dart';

class DetailsDiscountPage extends StatelessWidget {
  const DetailsDiscountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product =
        ModalRoute.of(context)!.settings.arguments as ProductDiscount;
    return Scaffold(
      body: Center(
        child: Text(product.title),
      ),
    );
  }
}
