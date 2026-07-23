import 'package:flutter/material.dart';

class FavouriteProvider with ChangeNotifier {
  final List<int> _selectedItem = [];

  List<int> get selectedItem => _selectedItem;

  void addItemToList(int index) {
    _selectedItem.add(index);
    notifyListeners();
  }

  void removeItemFromList(int index) {
    _selectedItem.remove(index);
    notifyListeners();
  }
}
