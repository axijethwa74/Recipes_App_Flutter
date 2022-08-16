// ignore_for_file: file_names


import 'package:flutter/material.dart';
import 'package:recipes_app/Screens/filter_Screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key, required }) : super(key: key);
  // ignore: non_constant_identifier_names
  Widget BuildTitle(String title, IconData icon, Function() tapHandler){
    return  ListTile(
            leading:  Icon(icon,
            size: 20,),
            title:Text(title,
             style: const TextStyle(
              fontFamily: "RobotoCondensed",
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
  
            onTap: tapHandler,
          );


  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child :  Column(
       
        children:  [
          Container(
            height: 100,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.bottomLeft,
            color: Theme.of(context).primaryColor,
            child:  const Text("Cooking Up!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              // ignore: deprecated_member_use
              color: Colors.white,
              ),
            ),
          ),

          const SizedBox(height:5,),
          BuildTitle(
            'Meal',
            Icons.restaurant,
            (){
              Navigator.of(context).pushNamed("/");
            }
          ),
          BuildTitle(
             'Filters',
            Icons.settings,
              (){
              Navigator.of(context).pushNamed(FilterScreen.routeName);
            }
          ),
        ],
      ),
    );
  }
}