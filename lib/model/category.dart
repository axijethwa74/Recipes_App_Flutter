// ignore: unused_import
import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;

  //Class allow us to create a instance classes

  const Category({
  required this.id, 
  required this.title, 
  // ignore: invalid_required_named_param
  @required this.color = Colors.orange});
}
