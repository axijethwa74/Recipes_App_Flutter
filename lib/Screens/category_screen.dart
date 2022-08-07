// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:recipes_app/Screens/category_items.dart';
// ignore: unused_import
import 'package:recipes_app/dummy_data.dart';
// ignore: camel_case_types
class category_Screen extends StatelessWidget {
  const category_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyMeals"),
      ),
      
      body:GridView(

        padding:const EdgeInsets.all(25),
      // ignore: sort_child_properties_last
      children: DUMMY_CATEGORIES.map((catData) => Categoryitems(
        catData.id,
        catData.title,
        catData.color,
        )).toList(),

        //Grid Delegate is just caring about the structure layout 
        // Silver just scrollable area in flutter 
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(

        //masCrossAxisExtent it`s a pre configured class which allow you to give max width to each item 
        maxCrossAxisExtent: 200,
        //ChildAspect for height
        childAspectRatio: 3/2,
        //for space btw col & row
        crossAxisSpacing : 20,
        mainAxisSpacing: 20, 
      ),
    ),
    ); 
  }
}