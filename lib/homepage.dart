import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/bottom_nav_controller.dart';
import 'controller/category_controller.dart';
import 'controller/home_screen_controller.dart';
import 'controller/search_screen_controller.dart';
import 'view/bottom_nav_bar.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => SearchScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => BottomNavController(),
        ),
        ChangeNotifierProvider(
          create: (context) => CategoryController(),
        )
      ],
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}