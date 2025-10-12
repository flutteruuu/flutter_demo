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
    return Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: Stack( // Note: 相對於外部容器進行定位 如果沒有外部容器，則相對於整個螢幕定位
        children:[
          Positioned(
            left: 10,
            bottom: 10,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
          )),
          const Positioned(
            right: 0,
            bottom: 190,
            child: Text("你好 Flutter"),
          ),
        ],
      ),
      );
    }
}
