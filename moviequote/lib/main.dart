import 'package:flutter/material.dart';
import 'package:moviequote/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Quote',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Movie Quote',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        ),
        body: HomeScreen(),
      ),
    );
  }
}