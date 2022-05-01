import 'package:flutter/cupertino.dart';

class DialogProvider extends ChangeNotifier {
  bool isloading = false;

  Future showLoading() async {
    await Future.delayed(
      const Duration(seconds: 3),
      () {
        isloading = true;
        notifyListeners();
      },
    );
  }
}
