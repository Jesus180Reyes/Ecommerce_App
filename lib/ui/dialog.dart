import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:slideshow_app/providers/custombutton_provider.dart';

void showDialogUi(BuildContext context) {
  final index =
      Provider.of<CustomButtonProvider>(context, listen: false).currentIndex;
  showCupertinoDialog(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      title: const Text('Anadido al Carrito Exitosamente'),
      content: Text(
          'El articulo a sido agregado al carrito, se han anadido $index articulos al carrito'),
      actions: [
        CupertinoDialogAction(
          child: const Text('Ok'),
          isDestructiveAction: true,
          isDefaultAction: true,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    ),
  );
}
