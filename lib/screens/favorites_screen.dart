import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> _favoriteMeals;
  FavoritesScreen(this._favoriteMeals);
  @override
  Widget build(BuildContext context) {
    if (_favoriteMeals.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: _favoriteMeals[index].id,
            imageUrl: _favoriteMeals[index].imageUrl,
            title: _favoriteMeals[index].title,
            affordability: _favoriteMeals[index].affordability,
            complexity: _favoriteMeals[index].complexity,
            duration: _favoriteMeals[index].duration,
          );
        },
        itemCount: _favoriteMeals.length,
      );
    }
  }
}
