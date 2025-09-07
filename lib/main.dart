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
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.home), // 列表圖標
          title: Text("首頁")
          ), // 列表項目
        Divider(), // 分隔線
        ListTile(
          leading: Icon(Icons.assignment, color: Colors.red), // 列表圖標
          title: Text("全部訂單")
          ), // 列表項目
        Divider(), // 分隔線
        ListTile(
          leading: Icon(Icons.payment, color: Colors.green), // 列表圖標
          title: Text("待付款")
          ), // 列表項目
        Divider(), // 分隔線
        ListTile(
          leading: Icon(Icons.local_car_wash, color: Colors.orange), // 列表圖標
          title: Text("待收貨")
          ), // 列表項目
        Divider(), // 分隔線

        ListTile(
          leading: Icon(Icons.favorite, color: Colors.lightGreen), // 列表圖標
          title: Text("我的收藏")
          ), // 列表項目
        Divider(), // 分隔線

        ListTile(
          leading: Icon(Icons.people, color: Colors.black54), // 列表圖標
          title: Text("在線客服"),
          trailing: Icon(Icons.chevron_right_sharp),
          ), // 列表項目
        Divider(), // 分隔線


      ],
    );
  }
}