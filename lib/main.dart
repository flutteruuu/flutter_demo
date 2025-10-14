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
    // 需求: 頁面上顯示一個容器, 寬度是螢幕寬度, 高度是寬度的一半
    return ListView(
      children:[
        
        Card(
          shape: RoundedRectangleBorder( //設定圓角 Card的陰影效果
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 10,
          margin: EdgeInsets.all(10),
          child: Column(
            children: const[
              ListTile(
                title: Text("張三", style: TextStyle(fontSize: 28),),
                subtitle: Text("軟體工程師"),
              ),
              Divider(),
              ListTile(
                title: Text("電話: 123456789"),
              ),
              ListTile(
                title: Text("地址: 台北市中正區"),
              ),
            ],)
        ),
        
        Card(
          elevation: 10,
          margin: EdgeInsets.all(10),
          // color: Colors.black12,  // Card的背景顏色
          child: Column(
            children: const[
              ListTile(
                title: Text("李四", style: TextStyle(fontSize: 28),),
                subtitle: Text("Flutter軟體工程師"),
              ),
              Divider(),
              ListTile(
                title: Text("電話: 123456789"),
              ),
              ListTile(
                title: Text("地址: 台北市中正區"),
              ),
            ],)
        )
      ]
    );
  }
}
