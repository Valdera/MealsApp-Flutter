import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);
  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          final _currentMeal = favoriteMeals[index];
          return MealItem(
            id: _currentMeal.id,
            title: _currentMeal.title,
            imageUrl: _currentMeal.imageUrl,
            duration: _currentMeal.duration,
            affordability: _currentMeal.affordability,
            complexity: _currentMeal.complexity,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
