import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail-screen';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final meal = DUMMY_MEALS.singleWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe'),
      ),
      body: Center(
        child: Text(meal.title),
      ),
    );
  }
}
