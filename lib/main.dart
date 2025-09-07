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

  // 自定義方法
  List<Widget> _initListData(){  // 有"_"代表私有方法
    List<Widget> list = [];
    for (int i=0; i<20 ; i++){
      list.add(ListTile(
        title: Text("我是一個列表---${i+1}"),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initListData(),
      
    );
  }
}