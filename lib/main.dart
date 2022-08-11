import 'package:flutter/material.dart';
import 'package:recipes_app/Screens/meal_detail_screen.dart';
import 'Screens/category_meal_screen.dart';
// ignore: unused_import
import 'Screens/category_screen.dart';
import 'Screens/tabscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        // ignore: deprecated_member_use
        accentColor: Colors.pink,
        canvasColor:  const Color.fromARGB(255, 255, 255, 255),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: const TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1)
          ),

          bodyText2: const TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
            fontFamily: 'RobotoCondensed-Italic'
          ),
          subtitle1 : 
            const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          ),

          )
        ),
     


    //  initialRoute: '/', // default is '/'
    //   routes: {
    //    '/': (ctx) => const category_Screen(),
    //     CategoryMeal.routeName: (ctx) => const CategoryMeal(),
    //     MealDetails.routeName: (ctx) => const MealDetails(),
    //   },
    //   onGenerateRoute: (settings) {
    //     // ignore: avoid_print
    //     print(settings.arguments);
    //     return null;
    //     // if (settings.name == '/meal-detail') {
    //     //   return ...;
    //     // } else if (settings.name == '/something-else') {
    //     //   return ...;
    //     // }
    //     // return MaterialPageRoute(builder: (ctx) => CategoriesScreen(),);
    //   },
    //   onUnknownRoute: (settings) {
    //     return MaterialPageRoute(builder: (ctx) => const category_Screen(),);
    //   },


    initialRoute: '/',
      routes: {
       '/':(ctx) => const TabScreen(),
        CategoryMeal.routeName: (ctx) =>   const CategoryMeal(),
        MealDetails.routeName:(ctx) =>const MealDetails(),
 },
    );
    
  }
}
