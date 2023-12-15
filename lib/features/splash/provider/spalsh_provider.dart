import 'package:flutter/material.dart';

class SplashProvider extends ChangeNotifier {
    int index = 0;

  late AnimationController animationController;
  late Animation<double> animation;
  fadeAnimation() async {
    for (;;) {
      await animationController.forward();
      await animationController.reverse();

      index++;
      notifyListeners();
    }
  }
}
