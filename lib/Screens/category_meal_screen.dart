// ignore: unused_import
// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:recipes_app/Screens/meal_Items.dart';
import 'package:recipes_app/dummy_data.dart';
// ignore: unused_import
import 'package:recipes_app/model/meal.dart';

class CategoryMeal extends StatelessWidget {
  const CategoryMeal({Key? key}) : super(key: key);

  static const routeName= '"/categories-meals"';

   // ignore: use_key_in_widget_constructors
  //  const CategoryMeal(this.categoryid,this.categorytitle);

  // final String categoryid;
  // final String categorytitle;


  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map <String,String> ;
    final categorytitle = routeArgs['title'];
     // ignore: unused_local_variable
     final categoryid = routeArgs['id'];
     

     // ignore: unused_local_variable
     final CategoryMeal = DUMMY_MEALS.where((Meal)
     {
      return Meal.categories.contains(categoryid);
     
     }).toList();
      
    return Scaffold(
     appBar: AppBar(
      title:  Text(categorytitle!),
     ),
     body: ListView.builder(itemBuilder: (ctx, index) {
      return Mealitems(
       title : CategoryMeal[index].title,
       imageUrl: CategoryMeal[index].imageUrl,
       duration: CategoryMeal[index].duration,
       affordability: CategoryMeal[index].affordability,
       complexity: CategoryMeal[index].complexity,
       );
       

     },itemCount:CategoryMeal.length),
    );
  }
}