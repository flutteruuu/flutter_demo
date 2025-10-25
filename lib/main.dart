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
    return ListView(
      children:[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            ElevatedButton(
              onPressed: () {}, // 點擊按鈕會觸發的事件
              child: const Text("普通按鈕")
            ),
            TextButton(
              onPressed: () {}, 
              child: const Text("文字按鈕")
            ),
            OutlinedButton(
              onPressed: null, 
              child: Text("邊框按鈕")
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.thumb_up),
            ),
          ]
        ),
      ],
    );
    
  }}
