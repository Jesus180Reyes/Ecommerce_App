import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:slideshow_app/models/models.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          ...demoProducts
              .map(
                (product) => _CardWidget(
                  size: size,
                  product: product,
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}

class _CardWidget extends StatelessWidget {
  final Product product;
  const _CardWidget({
    Key? key,
    required this.size,
    required this.product,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SlideInLeft(
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(10),
        height: 280,
        width: 170,
        decoration: BoxDecoration(
          // color: Colors.red,
          border: Border.all(
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    height: 150,
                    width: size.width,
                    fit: BoxFit.cover,
                    image: AssetImage(product.imageUrl),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Product Name',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                Text(
                  product.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontSize: 18),
                ),
                const SizedBox(height: 5),
                Text(
                  'L.${product.price}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 16),
                ),
              ],
            ),
            product.isDiscount != ''
                ? _IsDiscountWidget(product: product)
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}

class _IsDiscountWidget extends StatelessWidget {
  final Product product;
  const _IsDiscountWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 5,
      right: 5,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          product.isDiscount != '' ? product.isDiscount : '',
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
