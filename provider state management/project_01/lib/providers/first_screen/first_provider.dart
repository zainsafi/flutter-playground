import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FirstProvider extends ChangeNotifier {
  int _counter = 0;
  bool _isDark = false;

  int get counter => _counter;
  bool get isDark => _isDark;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void toggleTheme(bool value) {
    _isDark = value;
    notifyListeners();
  }
}
