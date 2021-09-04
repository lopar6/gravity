import 'package:flutter/material.dart';
import 'package:gravity/pages/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.black,
          secondaryHeaderColor: Colors.deepPurpleAccent),
      home: HomePage(initialTitle: 'Gravity Totality'),
    );
  }
}
