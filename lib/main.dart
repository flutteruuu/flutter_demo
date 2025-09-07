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
    var tempList = listData.map((value){
      return Container(
        alignment: Alignment.center,
        decoration:  BoxDecoration(
          border: Border.all(color: Colors.grey)
        ),
        child: Column(
          children: [
            Image.network(value["imgurl"]),
            const SizedBox(height: 10),
            Text(value["title"], style: const TextStyle(
              fontSize: 16,
            ))
          ],
        )
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(10),
      crossAxisCount: 2, // 每行三個
      crossAxisSpacing: 10, // 水平間距
      mainAxisSpacing: 10,  // 垂直間距
      childAspectRatio: 0.8, // 寬高比
      children: _initGridViewData(),
    );
  }
}