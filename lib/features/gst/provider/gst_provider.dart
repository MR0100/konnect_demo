import 'package:flutter/widgets.dart';

class GstProvider extends ChangeNotifier {
  bool isShowVideo = false;

  void toggleVideoAndArticle() {
    isShowVideo = !isShowVideo;
    notifyListeners();
  }
}
