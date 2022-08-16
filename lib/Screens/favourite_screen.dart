import 'package:flutter/material.dart';
import 'package:recipes_app/model/meal.dart';

import 'meal_Items.dart';



// ignore: must_be_immutable
class FavouoriteScreen extends StatelessWidget {
  
   // ignore: non_constant_identifier_names
   List<Meal> FavouriteMeals;
  FavouoriteScreen(this.FavouriteMeals, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
  if(FavouriteMeals.isEmpty){
      return const Center(child: Text("You have no Favourite Meals Yet!",
      style: TextStyle(fontSize: 19,
      fontWeight: FontWeight.bold),),
    );

  }
  else{
    return ListView.builder(itemBuilder: (ctx, index) {
      return Mealitems(
       id: FavouriteMeals[index].id,
       title : FavouriteMeals[index].title,
       imageUrl: FavouriteMeals[index].imageUrl,
       duration: FavouriteMeals[index].duration,
       affordability: FavouriteMeals[index].affordability,
       complexity: FavouriteMeals[index].complexity,
          
       );
       

     },itemCount:FavouriteMeals.length);
  }
  }
}