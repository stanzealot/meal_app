// ignore_for_file: use_key_in_widget_constructors, unnecessary_import, implementation_imports

import 'package:expense_planner/dummy_data.dart';
import 'package:expense_planner/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../widgets/meal_item.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName = '/category-meal';
  // final String id;
  // final String text;

  // CategoryMealScreen(this.id,this.text);
  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context)!.settings.arguments as Map<String,String>;
    final categoryTitle = routeArg['title'];
    final categoryId = routeArg['id'];
    final categoryMeals = DUMMY_MEALS.where((meal){
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle as String)),
      body: ListView.builder(
        itemBuilder: (ctx,index){
          return MealItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title, 
            imageUrl: categoryMeals[index].imageUrl, 
            duration: categoryMeals[index].duration, 
            complexity: categoryMeals[index].complexity, 
            affordability: categoryMeals[index].affordability
            );
        },itemCount: categoryMeals.length,
        ) ,
    );
  }
}