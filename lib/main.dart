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
  MyHomePage({super.key}){
      print(listData);
  }

  List<Widget> _initListData(){
    List<Widget> tempList = [];
    for (var i=0; i<listData.length ; i++){
      tempList.add(ListTile(
        leading: Image.network("${listData[i]["imgurl"]}"),
        title: Text("${listData[i]["title"]}"),
        subtitle: Text("${listData[i]["author"]}"),
      ));
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initListData(),
      
    );
  }
}