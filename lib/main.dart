import 'package:flutter/material.dart';
import 'package:flutter_counter_bloc/pages/home/home-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Bloc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Counter With Bloc'),
    );
  }
}
