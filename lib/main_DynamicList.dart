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
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter ICON")),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<String> list=[];
  MyHomePage({super.key}){
    for (var i = 0; i < 20 ; i++){
      list.add("我是第${i}條數據");
    }

  }

  // Method1 : For Loop
  // List<Widget> _initListData(){
  //   List<Widget> tempList = [];
  //   for (var i=0; i<listData.length ; i++){
  //     tempList.add(ListTile(
  //       leading: Image.network("${listData[i]["imgurl"]}"),
  //       title: Text("${listData[i]["title"]}"),
  //       subtitle: Text("${listData[i]["author"]}"),
  //     ));
  //   }
  //   return tempList;
  // }

  // Method2 : Map (map可以歷遍和修改數據)
  // List <Widget> _initListData(){
  //   var tempList = listData.map((value){
  //     return ListTile(
  //       leading: Image.network("${value["imgurl"]}"),
  //       title: Text("${value["title"]}"),
  //       subtitle: Text("${value["author"]}"),
  //     );
  //   });
  //   return tempList.toList();
  // }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index){
        return ListTile(
          title: Text(list[index]),
        );
      }
      );
  }
}