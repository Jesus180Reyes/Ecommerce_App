import 'dart:async';

import 'package:flutter/material.dart';

class TimerProvider extends ChangeNotifier {
  int seconds = 59;
  int hour = 6;
  int minute = 20;

  void startCountDown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      seconds--;
      if (seconds == 0) {
        minute--;
        seconds = 59;
      }
      if (minute < 1) {
        hour--;
        minute = 59;
      }
      if (hour < 0) {
        hour = 0;
        minute = 0;
        seconds = 0;
        timer.cancel();
      }

      notifyListeners();
    });
  }
}
