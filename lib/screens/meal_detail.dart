import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_recom/meal_model.dart';
import 'package:food_recom/top_bar.dart';

class MealDetail extends StatelessWidget {
  const MealDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, MealModel> arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, MealModel>;
    final meal = arguments['meal'];
    inspect(arguments);
    return Scaffold(
        appBar: const TopBar(),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                meal!.name,
                style: const TextStyle(
                    fontSize: 30, decoration: TextDecoration.overline),
              ),
            ),
            Image.asset(
              fit: BoxFit.fill,
              alignment: Alignment.center,
              meal.image ?? '',
            ),
          ],
        ));
  }
}
