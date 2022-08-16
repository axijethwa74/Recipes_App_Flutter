
// ignore_for_file: non_constant_identifier_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:recipes_app/Screens/category_screen.dart';
import 'package:recipes_app/Screens/favourite_screen.dart';

import '../model/meal.dart';
import 'Drawer.dart';


// ignore: must_be_immutable
class TabScreen extends StatefulWidget {

final List<Meal> FavouritMeals;
const TabScreen(this.FavouritMeals, {Key? key}) : super(key: key);


  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {

   late List<Map<String, Object>> _pages;
   @override
  void initState() {
    _pages=[
   {'pages' : const category_Screen(),
    'titles': 'Categories'},
    
   {'pages' :  FavouoriteScreen(widget.FavouritMeals),
    'titles': 'Favourites'}
    
  ];
    super.initState();
  }

// ignore: unused_field, unused_element
 int _selectedPageIndex = 0;
  
// ignore: unused_element
void _selectedpage(int index){
  setState(() {
    _selectedPageIndex = index;
  });

  
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(_pages[_selectedPageIndex]['titles']as String),
      ),
      // ignore: unnecessary_cast
    
    drawer: const MainDrawer(),
      body: _pages[_selectedPageIndex]['pages'] as Widget,
       bottomNavigationBar: BottomNavigationBar(
        onTap:_selectedpage ,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor:Colors.black,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items:  [
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).primaryColor,
          label: 'Category',
          icon: const Icon(Icons.category), 
        ),

         const BottomNavigationBarItem(
          label: 'Favourite',
          icon: Icon(Icons.star), 
        ),
      ]),
    );
  }
}