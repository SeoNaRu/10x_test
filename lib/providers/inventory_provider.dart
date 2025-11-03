import 'package:flutter/foundation.dart';

class InventoryProvider extends ChangeNotifier {
  final List<String> _items = [];

  List<String> get items => List.unmodifiable(_items);

  void addItem(String item) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(String item) {
    _items.remove(item);
    notifyListeners();
  }

  void clearInventory() {
    _items.clear();
    notifyListeners();
  }
}

