import 'package:flutter/material.dart';
import './res/listData.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter DEMO",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter App")),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        SizedBox(
          height: 40,
          width: double.infinity,
          child: Stack(
            children: const[
              Align(
                alignment: Alignment.topLeft,
                child: Text("收藏"),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text("購買"),
              )
            ]
          ),
        ),
        SizedBox(
          height: 40,
          width: double.infinity,
          child: Stack(
            children: const[
              Positioned(
                left: 10,
                child: Text("收藏"),
              ),
              Positioned(
                right: 10,
                child: Text("購買"),
              )
            ]
          ),
        ),
        
      ],
    );
  }
}
