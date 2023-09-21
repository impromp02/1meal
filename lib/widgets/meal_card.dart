import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:one_meal/models/meal_model.dart';

class MealCard extends StatelessWidget {
  final MealElement meal;

  const MealCard({
    Key? key,
    required this.meal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: CupertinoColors.systemGrey.withOpacity(0.2),
            spreadRadius: 4,
            blurRadius: 8,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        children: [
          Image.network(meal.strMealThumb),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              meal.strMeal,
              style: const TextStyle(
                  color: Color.fromARGB(255, 54, 73, 82),
                  fontWeight: FontWeight.bold,
                  fontSize: 34),
            ),
          ),
        ],
      ),
    );
  }
}
