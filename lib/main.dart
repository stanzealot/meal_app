import 'screen/category_meal_screen.dart';
import 'screen/meal_detail_screen.dart';
import 'package:flutter/material.dart';
import 'screen/categories_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(225, 224, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(color: Color.fromRGBO(20,51, 51, 1)),
          bodyText2: TextStyle(color: Color.fromRGBO(20,51, 51, 1)),
          headline1: TextStyle( 
            fontSize: 20, 
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
            )
        )
      ),
      home:CategoriesScreen()  ,
      routes: {
        CategoryMealScreen.routeName:(ctx)=>CategoryMealScreen(),
        MealDetailScreen.routeName:(ctx)=>MealDetailScreen(),
      },
    );
  }
}

