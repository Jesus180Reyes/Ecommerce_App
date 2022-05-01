import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slideshow_app/models/models.dart';
import 'package:slideshow_app/providers/custombutton_provider.dart';

class DetailsImageWidget extends StatelessWidget {
  final Product product;
  final Size size;

  const DetailsImageWidget({
    Key? key,
    required this.product,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ImageCard(product: product, size: size);
  }
}

class Descriptions extends StatelessWidget {
  const Descriptions({
    Key? key,
    required this.product,
    required this.size,
  }) : super(key: key);

  final Product product;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Text(
            product.name,
            maxLines: 3,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50),
          Text(
            product.description,
            maxLines: 2,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontSize: 18,
                ),
          ),
        ],
      ),
    );
  }
}

class _ImageCard extends StatelessWidget {
  const _ImageCard({
    Key? key,
    required this.product,
    required this.size,
  }) : super(key: key);

  final Product product;
  final Size size;

  @override
  Widget build(BuildContext context) {
    final addnumber = Provider.of<CustomButtonProvider>(context, listen: true);
    return Stack(
      children: [
        Hero(
          tag: product.id,
          child: Image(
            width: size.width,
            height: size.height * 0.5,
            fit: BoxFit.contain,
            image: AssetImage(product.imageUrl),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                      addnumber.gotoZero();
                    },
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Text(
                    'L. ${product.price}',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
