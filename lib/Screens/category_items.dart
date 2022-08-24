
import 'package:flutter/material.dart';
// ignore: unused_import

import 'category_meal_screen.dart';

// ignore: use_key_in_widget_constructors
class Categoryitems extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
   const Categoryitems(this.id,this.title,this.color,this.Image);

  final String id;
  final String title;
  final Color color;
  final String Image;

   void selectpage(BuildContext ctx){
    Navigator.of(ctx).pushNamed(  CategoryMeal.routeName,
    arguments: {
      "id":id,
      'title':title,
      "ImageUrl" : Image,
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
          padding: const EdgeInsets.all(10),
          // ignore: sort_child_properties_last
          // child: Center(
            
            child: Container(
              height: 20,
              width: 80,
               margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 18),
               decoration:  BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: Colors.white,
                        ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(              
                    title,
                    textAlign: TextAlign.end,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),),
                ),
              ),
            ),
          // ),
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                              image: AssetImage(Image),
                              fit: BoxFit.cover,
                              ), 

            ),
        
          ),

          

       // ),
    );
  }
}