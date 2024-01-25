import 'package:flutter/material.dart';
import 'package:news_app_with_flutter/const.dart';
import 'package:news_app_with_flutter/presentation/screens/category_view_screen.dart';
import 'package:news_app_with_flutter/presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    initializeHWFSize(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: const HomeScreen(),
      routes: {
        RoutesScreen.homeScreen: (context) => const HomeScreen(),
        RoutesScreen.categoryViewScreen: (context) =>
            const CategoryViewScreen(),
      },
    );
  }
}
