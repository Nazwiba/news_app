import 'package:flutter/material.dart';
import 'package:news_app/view/category_screen.dart';
import 'package:news_app/view/search_screen.dart';

import '../view/home_screen.dart';

class BottomNavController with ChangeNotifier {
  int selectedIndex = 0;

  void onItemTap(index) {
    selectedIndex = index;
    notifyListeners();
  }

  List<Widget> myPages = [
    HomeScreen(),
    CategoryScreen(),
    SearchScreen()
  ];

// @override
  // void notifyListeners() {
  //   // TODO: implement notifyListeners
  //   super.notifyListeners();
  // }
}