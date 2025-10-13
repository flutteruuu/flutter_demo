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
    // 獲取螢幕寬度和高度
    final size = MediaQuery.of(context).size;

    return Stack(
      children:[
        ListView(
          padding: const EdgeInsets.only(top: 50),
          children: [
            for (var i = 0; i < 30; i++)
              ListTile(title: Text("我是一個列表$i")),
          ],
        ),
        Positioned(
          left: 0,
          top: 0,
          width: size.width, // 配置子元素的寬度和高度 不能使用double.infinity
          height: 44,        // 配置子元素的寬度和高度
          child: Container(
            alignment: Alignment.center,
            height: 44,
            color: Colors.black,
            child: const Text("二級導航", style: TextStyle(color: Colors.white),),
              ))
        
      ],
    );
    }
}
