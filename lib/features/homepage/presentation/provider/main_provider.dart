import 'package:flutter/cupertino.dart';


class MainProvider extends ChangeNotifier {
  int _currentPage = 0;
  int _selectedIndex = 0;

  int get currentPage => _currentPage;

  int get selectedIndex => _selectedIndex;

  void onPageChanged(int index) {
    _currentPage = index;
    notifyListeners();
  }

  void onItemTapped(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
