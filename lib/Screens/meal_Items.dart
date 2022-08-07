// ignore_for_file: file_names

// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:recipes_app/model/meal.dart';

class Mealitems extends StatelessWidget {


// ignore: use_key_in_widget_constructors
const Mealitems(
  {
  required this.title,
  required this.imageUrl,
  required this.duration,
  required this.affordability,
  required this.complexity, 
  }
 );

final String title;
final String imageUrl;
final int duration;
final Affordability affordability;
final Complexity complexity;

// ignore: non_constant_identifier_names
String get Complexitytext{
  switch(complexity){
    case Complexity.Simple:
    return 'Simple';
    // ignore: dead_code
    break;

    case Complexity.Challenging:
    return 'Challenging';
     // ignore: dead_code
     break;
    case Complexity.Hard:
     return 'Hard';
      // ignore: dead_code
    break;
    default:
    return 'Unknown';
  }
}


// ignore: non_constant_identifier_names
String get affordabilityText{
  switch(affordability){
    case Affordability.Affordable:
    return 'Affordable';
    // ignore: dead_code
    break;

    case Affordability.Pricey:
    return 'Pricey';
     // ignore: dead_code
     break;
    case Affordability.Luxurious:
     return 'Luxurious';
      // ignore: dead_code
    break;
    default:
    return 'Unknown';
  }
}





void selectitem(){

}



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectitem,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children:  [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    color: Colors.black54,
                    width: 300,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20
                    ),
                    child: Text(title, style: const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround
                ,
                children: [
                  Row(
                    children:  [
                      const Icon(Icons.schedule),
                      const SizedBox(width: 6),
                      Text('$duration min'),

                    ],
                  ),
                  Row(
                    children:  [
                      const Icon(Icons.work),
                      const SizedBox(width: 6),
                      Text(Complexitytext),

                    ],
                  ),

                  Row(
                    children:  [
                      const Icon(Icons.work),
                      const SizedBox(width: 6),
                      Text(affordabilityText),

                    ],
                  ),
                ],
              ),
              
              
            ),
          ],
                  ),

      ),
    );
  }
}
