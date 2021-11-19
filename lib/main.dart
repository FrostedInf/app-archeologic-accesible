import 'package:flutter/material.dart'; // implementa los wifgets de material design
import 'package:munal_deafs_app/ui/screens/artwork_types.dart';
import 'package:munal_deafs_app/ui/screens/glossary_list_screen.dart';
import 'package:munal_deafs_app/ui/screens/glossary_description.dart';

import 'navigation_deaf_munal.dart';

void main() {
  runApp(MyApp());
} // funcion main

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MUNAL app', // titulo que aparece en el task manager
        home: NavigationDeafMunal());
  }
}
