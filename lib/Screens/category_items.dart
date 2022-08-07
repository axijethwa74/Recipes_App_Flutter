
import 'package:flutter/material.dart';
// ignore: unused_import

import 'category_meal_screen.dart';

// ignore: use_key_in_widget_constructors
class Categoryitems extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
   const Categoryitems(this.id,this.title,this.color);

  final String id;
  final String title;
  final Color color;

   void selectpage(BuildContext ctx){
    Navigator.of(ctx).pushNamed(  CategoryMeal.routeName,
    arguments: {
      "id":id,
      'title':title
      }
      );
   }

  @override
  Widget build(BuildContext context) {
    //We use Inkell instead of gesture detector because it`s give a ripple effects
    return InkWell(
      onTap: () => selectpage(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),

      child: Container(
        padding: const EdgeInsets.all(15),
        // ignore: sort_child_properties_last
        child: Text(title,
        style: Theme.of(context).textTheme.titleMedium,),
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            colors:[
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}