// ignore: unused_import
// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:recipes_app/Screens/meal_Items.dart';
// ignore: unused_import
import 'package:recipes_app/model/meal.dart';

class CategoryMeal extends StatefulWidget {

  static const routeName= '"/categories-meals"';

  final List<Meal> availableMeals;
  // ignore: use_key_in_widget_constructors
  const CategoryMeal(this.availableMeals);

  @override
  State<CategoryMeal> createState() => _CategoryMealState();
}

class _CategoryMealState extends State<CategoryMeal> {

 late String categorytitle;
  late List<Meal> displayedMeals;
  var _loadInitData = false; 

  @override
  void initState() {  
    super.initState();
  }

  @override
  void didChangeDependencies(){
    if(!_loadInitData){
     final routeArgs = ModalRoute.of(context)?.settings.arguments as Map <String,String> ;
     categorytitle = routeArgs['title'] as String;
     // ignore: unused_local_variable
     final categoryid = routeArgs['id'];
      // ignore: unused_local_variable
     displayedMeals= widget.availableMeals.where((Meal)
     {
      return Meal.categories.contains(categoryid);
     }).toList();
     _loadInitData = true;  
    }
     
    super.didChangeDependencies();
  }

  void _removeMeal(String Mealid){
    setState(() {
      displayedMeals.removeWhere((Meal) => Meal.id == Mealid);
    });

  }
   // ignore: use_key_in_widget_constructors
  @override
  Widget build(BuildContext context) {
    
      
    return Scaffold(
     appBar: AppBar(
      title:  Text(categorytitle),
     ),
     body: ListView.builder(itemBuilder: (ctx, index) {
      return Mealitems(
       id: displayedMeals[index].id,
       title : displayedMeals[index].title,
       imageUrl: displayedMeals[index].imageUrl,
       duration: displayedMeals[index].duration,
       affordability: displayedMeals[index].affordability,
       complexity: displayedMeals[index].complexity,
       removeitems: _removeMeal,      
       );
       

     },itemCount:displayedMeals.length),
    );
  }
}