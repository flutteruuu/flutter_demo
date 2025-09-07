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
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: <Widget>[
        Container(
          width: 120,
          decoration: const BoxDecoration( color: Colors.red,),
          child: Column(
            children: [
              SizedBox(
                height: 80,
                child: Image.network("https://cdn2.ettoday.net/images/8389/8389401.png", fit: BoxFit.cover,)
              ),
              const Text("文字"),
            ],
          ),
        ),

        Container(
          width: 120,
          decoration: const BoxDecoration(
            color: Colors.orange,
          ),
        ),

        Container(
          width: 120,
          decoration: const BoxDecoration(
            color: Colors.yellow,
          ),
        ),

        Container(
          width: 120,
          decoration: const BoxDecoration(
            color: Colors.green,
          ),
        ),

        Container(
          width: 120,
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
        ),

        Container(
          width: 120,
          decoration: const BoxDecoration(
            color: Colors.purple,
          ),
        ),

        Container(
          width: 120,
          decoration: const BoxDecoration(
            color: Colors.pink,
          ),
        ),

        ],
      ),
    );
  }
}