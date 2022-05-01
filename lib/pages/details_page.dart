import 'package:flutter/material.dart';
import 'package:slideshow_app/models/models.dart';
import 'package:slideshow_app/ui/dialog.dart';
import 'package:slideshow_app/widgets/widgets.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Column(
            children: [
              DetailsImageWidget(
                product: product,
                size: size,
              ),
              Descriptions(
                product: product,
                size: size,
              ),
              const Spacer(),
              const AddCandidateWidget(),
              const _Button(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: MaterialButton(
          minWidth: double.infinity,
          padding: const EdgeInsets.all(20),
          onPressed: () => {
            showDialogUi(context),
          },
          textColor: Colors.white,
          color: Colors.orange,
          child: const Text(
            'Add to Cart',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
