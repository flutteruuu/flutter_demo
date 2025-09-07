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

  List<Widget> _initGridViewData(){
    List<Widget> tempList = [];
    for (var i = 0; i<12; i++){
      tempList.add(
        Container(
          alignment: Alignment.center,
          decoration:  BoxDecoration(
            color: Colors.blue
          ),
          child: Text("第${i}元素", style: const TextStyle(
            fontSize: 20,
          ))
        )
      );
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      padding: const EdgeInsets.all(10),
      maxCrossAxisExtent: 120, // 每個子項目的最大寬度
      crossAxisSpacing: 10, // 水平間距
      mainAxisSpacing: 10,  // 垂直間距
      childAspectRatio: 1.2, // 寬高比
      children: _initGridViewData(),
    );
  }
}