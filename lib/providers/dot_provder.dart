import 'package:flutter/cupertino.dart';

class DotProvider extends ChangeNotifier {
  int index = 0;
  double currentPage = 0;
  pageindex(int page) {
    index = page;
    notifyListeners();
  }
}
