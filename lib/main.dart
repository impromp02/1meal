import 'package:flutter/material.dart';
import 'package:food_recom/screens/meal_detail.dart';
import 'package:food_recom/screens/home.dart';

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
        '/detail': (context) => const MealDetail()
      },
    );
  }
}
