import 'package:flutter/material.dart';
import 'package:imc/lib/pages/home-page.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cálculo del IMC',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white24,
        canvasColor: Colors.black,
      ),
     home: HomePage(title: 'Cálculo del IMC'),
    );
  }
}