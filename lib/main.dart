import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Hello flutter")),
      body: const MyApp(),
    ),
  ));
}

// Shortcut:stless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const Center(
        child: Text('Hello World1234 我是一個自定義組件', 
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.red,
            fontSize: 40.0)),
      );
  }
}
