import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
        // is not restarted.

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key : key);
  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home :  Scaffold(
        appBar: AppBar(
          title: const Text('너와 나의 연결고리'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.access_alarm),
              tooltip: 'Show alarm Snackbar',
              onPressed: () {
                // debugPrint('hi');
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          )
        ],),
        body: const Center(
          child : Text('여기는 뭘 쓸까?')
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              )
            ],
          )
        )
        ),
      );
  }
}