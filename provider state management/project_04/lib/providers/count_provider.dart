import 'package:flutter/foundation.dart';

class CountProvider extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void incrementCount() {
    if (count < 10) {
      _count++;
    } else {
      _count = 0;
    }
    notifyListeners();
  }
}
