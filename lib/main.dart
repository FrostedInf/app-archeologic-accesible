import 'package:flutter/material.dart'; // implementa los wifgets de material design
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
        title: 'Tulum app', // titulo que aparece en el task manager
        theme: ThemeData(
            primaryColor: Color(0xff0f2d52),
            primarySwatch: Colors.blue,
            backgroundColor: Colors.white,
            scaffoldBackgroundColor: Colors.white,
            textTheme: TextTheme(
              headline1: TextStyle(color: Colors.black),
              headline2: TextStyle(color: Colors.black),
              bodyText1: TextStyle(color: Colors.black),
              bodyText2: TextStyle(color: Colors.black),
            )),
        home: NavigationDeafMunal());
  }
}
