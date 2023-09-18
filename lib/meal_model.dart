import 'package:flutter/material.dart';

enum MealType { breakfast, lunch, dinner, brunch }

class MealModel {
  final String name;
  final MealType type;
  final int calories;
  final LinearGradient? color;
  final String? image;

  MealModel(
      {required this.name,
      required this.type,
      required this.calories,
      this.color,
      this.image});
}

List<MealModel> meals = [
  MealModel(
      name: 'Masala Dosa',
      type: MealType.breakfast,
      calories: 250,
      color: gradientPink,
      image: 'images/masala_dosa.jpeg'),
  MealModel(
      name: 'Vegetable Rice',
      type: MealType.lunch,
      calories: 200,
      color: gradientPurple,
      image: 'images/vegetable_rice.jpg'),
  MealModel(
      name: 'Samosa',
      type: MealType.breakfast,
      calories: 140,
      color: gradientRed,
      image: 'images/samosa.jpeg'),
  MealModel(
      name: 'Thali',
      type: MealType.dinner,
      calories: 600,
      color: gradientPurple,
      image: 'images/thali.jpg'),
  MealModel(
      name: 'Pav Bhaji',
      type: MealType.brunch,
      calories: 610,
      color: gradientBlue),
];

const LinearGradient gradientRed = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFFFF3868),
    Color(0xFFFFB49A),
  ],
);

const LinearGradient gradientPurple = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF736EFE),
    Color(0xFF62E4EC),
  ],
);

const LinearGradient gradientBlue = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF0BA4E0),
    Color(0xFFA9E4BD),
  ],
);

const LinearGradient gradientPink = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFFFF6864),
    Color(0xFFFFB92F),
  ],
);

const LinearGradient kNewFeedCardColorsIdentityGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF7960F1),
    Color(0xFFE1A5C9),
  ],
);
