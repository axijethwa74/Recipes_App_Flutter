 // ignore: file_names
// ignore_for_file: non_constant_identifier_names, unused_field, prefer_final_fields, unused_element

import 'package:flutter/material.dart';

import 'Drawer.dart';

class FilterScreen extends StatefulWidget {

  static const routeName = '/Filterscreen';

  final Function saveFilters;
  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
   FilterScreen(this.saveFilters); 



  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {

 bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;
 

   Widget _buildSwitchTitle(String title, String description , bool Currentvalue, Function(dynamic) UpdateValue ){
     return SwitchListTile(
              title: Text(title),
              value: Currentvalue,
              subtitle: Text(description),
              onChanged:UpdateValue, 
             );
              }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Filters"),
        actions: [
          IconButton(icon: const Icon(Icons.save),
          onPressed: () {
              final selectedFilters = {
                'gluten': _glutenFree,
                'lactose': _lactoseFree,
                'vegan': _vegan,
                'vegetarian': _vegetarian,
              };
              widget.saveFilters(selectedFilters);
            },
          ),
        ],
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(25),
            child:  Text('Adjust your meals Selections',
                style: Theme.of(context).textTheme.titleMedium),
                ),
          Expanded(
            child: ListView(children:  [
            _buildSwitchTitle(
              "Gluten Free",
              "You only includes Gluten Free Meals.",
              _glutenFree,
              (newValue){
                setState(()=>
                _glutenFree = newValue,
                );
              },  
            ),


              _buildSwitchTitle(
              "Lactose Free",
              "You only includes Lactose Free Meals.",
              _lactoseFree,
              (newValue){
                setState(()=>
                _lactoseFree = newValue,

                );
              },  
            ),

              _buildSwitchTitle(
              "Vegan",
              "You only includes Vegan Meals.",
              _vegan,
              (newValue){
                setState(()=>
                _vegan = newValue,
                );
              },  
            ),


            _buildSwitchTitle(
              "Vegetarian",
              "You only includes Vegetarian Meals.",
              _vegetarian,
              (newValue){
                setState(()=>
                _vegetarian = newValue,
                );
              },  
            ),
            ]
            
            ),
          ),
        ],
      ),
    );
  }
              
}
