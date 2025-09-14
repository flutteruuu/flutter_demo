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
    return Flex( // 外部沒有Container 行是自適應的
        direction: Axis.horizontal,
        children: [
          Expanded(
            flex: 1,
            child: IconContainer(Icons.home), // 這個元素設置寬度是沒有效果的
            ),
          Expanded(
            flex: 2,
            child: IconContainer(Icons.ac_unit_sharp, color: Colors.orange),
            ),
          // IconContainer(Icons.ac_unit_sharp, color: Colors.orange),
        ],
      );
  }
}


// 自訂義IconContainer
class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;
  IconContainer(this.icon,{super.key, this.color=Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: 100,
      color: color,
      child: Icon(icon, color: Colors.white, size: 28),
    );
  }
}