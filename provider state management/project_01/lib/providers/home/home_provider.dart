import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  int _counter = 0;
  bool _isDark = false;

  int get counter => _counter;
  bool get isDark => _isDark;

  void increment() {
    _counter++;

    if (_counter % 5 == 0) {
      _isDark = !_isDark;
    }
    notifyListeners();
  }
}
