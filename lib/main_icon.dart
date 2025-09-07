import 'package:flutter/material.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter ICON")),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const[
        SizedBox(height: 20),
        Icon(Icons.home, size: 50, color: Colors.blue),
        SizedBox(height: 20),
        Icon(Icons.settings, size: 50, color: Colors.blue),
        SizedBox(height: 20),
        Icon(Icons.search, size: 50, color: Colors.blue),
        SizedBox(height: 20),
        Icon(Icons.person, size: 50, color: Colors.blue),
        SizedBox(height: 20),
        Icon(Icons.category, size: 50, color: Colors.blue),
        SizedBox(height: 20),
        Icon(Icons.shop, size: 50, color: Colors.blue),
      ],
    );
  }
}