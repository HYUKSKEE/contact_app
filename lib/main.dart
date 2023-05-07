import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
        // is not restarted.

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key : key);
  @override
  Widget build(BuildContext context){

    return const MaterialApp(
      home: Icon(
        Icons.favorite,
        color: Colors.blue,
        size: 52.0,
        semanticLabel: 'Text to announce in accessibility modes',
      )
    );
  }
}