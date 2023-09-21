import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:one_meal/models/meal_model.dart';
import 'package:one_meal/widgets/top_bar.dart';

class MealDetail extends StatelessWidget {
  const MealDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, MealElement> arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, MealElement>;
    final meal = arguments['meal'];
    inspect(arguments);
    return Scaffold(
        appBar: const TopBar(),
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 16),
                child: Text(
                  meal!.strMeal,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 54, 73, 82),
                      fontWeight: FontWeight.bold,
                      fontSize: 34),
                ),
              ),
              Image.network(
                meal.strMealThumb,
              ),
            ],
          ),
        ));
  }
}
