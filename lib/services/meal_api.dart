import 'dart:async';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:one_meal/models/meal_model.dart';

Future<Meal> fetchMeals(String region) async {
  final response = await http.get(Uri.parse(
      'https://www.themealdb.com/api/json/v1/1/filter.php?a=$region'));
  if (response.statusCode == 200) {
    inspect(response.body);
    return mealFromJson(response.body);
  } else {
    throw Exception('Failed to load meals');
  }
}
