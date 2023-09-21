import 'package:flutter/material.dart';
import 'package:one_meal/screens/meal_detail.dart';
import 'package:one_meal/screens/home.dart';
import 'package:one_meal/screens/wishlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Home(),
        '/detail': (context) => const MealDetail(),
        '/wishlist': (context) => const Wishlist(),
      },
    );
  }
}
