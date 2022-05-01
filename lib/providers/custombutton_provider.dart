import 'package:flutter/cupertino.dart';

class CustomButtonProvider extends ChangeNotifier {
  int currentIndex = 1;

  addCandidate() {
    currentIndex++;
    notifyListeners();
  }

  removeCandidate() {
    if (currentIndex < 1) return;
    currentIndex--;
    notifyListeners();
  }

  gotoZero() {
    currentIndex = 1;
    notifyListeners();
  }
}
