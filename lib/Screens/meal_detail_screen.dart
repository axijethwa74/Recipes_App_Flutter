// ignore: unused_import
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../dummy_data.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({Key? key}) : super(key: key);

  static const routeName = '/meal-details';


//Styling method: we can
  Widget buildText(BuildContext context,String text){
    return Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Text(text,
          style: Theme.of(context).textTheme.titleMedium,
          ),
          );
  }

   Widget BuildContainer(Widget child){
    return Container(
          height: 150,
          width: 300,
           decoration: BoxDecoration(
            // ignore: deprecated_member_use
            //color:Theme.of(context).accentColor,
            border: Border.all(
            color: Colors.white,
            ),
           ),
            margin: const EdgeInsets.all(10),
            padding:const EdgeInsets.all(10),
            child: child,
        );
}

 
 

  @override
  Widget build(BuildContext context) {

    final Mealid = ModalRoute.of(context)?.settings.arguments as String;
    // ignore: unused_local_variable
    final SelectedMeal = DUMMY_MEALS.firstWhere((Meal) => Meal.id == Mealid);
    return Scaffold(
      appBar: AppBar(
        // ignore: unnecessary_string_interpolations
        title: Text('${SelectedMeal.title}'),
      ),
      // ignore: sized_box_for_whitespace
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ignore: sized_box_for_whitespace
            Container(
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(
            color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(15),
      
          ),
          height: 300,
          width: double.infinity,
          child : Image.network(SelectedMeal.imageUrl,
          fit: BoxFit.cover,),
        ), 
      
         buildText(context,"Indegredient :"),

         BuildContainer(
          ListView.builder(itemBuilder: (ctx,index) => 
         Column(children: [
       ListTile(
              leading:  CircleAvatar(child: Text('#${(index + 1)}')),
              title: Text(SelectedMeal.ingredients[index],
              style: Theme.of(context).textTheme.bodyMedium,
                ),
            ),
            const Divider(),
            ],),
          itemCount: SelectedMeal.ingredients.length,
          ),
          ),           
         buildText(context,"Steps :"),

         Center(
           child: BuildContainer(
            ListView.builder(itemBuilder: (ctx,index)
            // ignore: prefer_const_constructors
            =>Column(children: [
       ListTile(
              leading:  CircleAvatar(child: Text('#${(index + 1)}')),
              title: Text(SelectedMeal.steps[index],
              style: Theme.of(context).textTheme.bodyMedium,
              
              
              ),
            ),
            const Divider(),
            ],),
         itemCount: SelectedMeal.steps.length,
            )
              ),
         ),
          

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
      
      onPressed: (){
        Navigator.of(context).pop(Mealid);
      },
      child: const Icon(Icons.delete),
      ),
);
  }
}

  // Card(
  //           color: Colors.white,
  //           child: Padding(
  //             padding:  const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
  //             child: Text(SelectedMeal.ingredients[index],
  //             style: const TextStyle(
  //               // fontWeight: FontWeight.w600,
  //             ),
  //             ),
  //           ),
  //         ),