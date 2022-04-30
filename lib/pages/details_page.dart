import 'package:flutter/material.dart';
import 'package:slideshow_app/models/models.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      body: Center(
        child: Text(
          product.name,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
