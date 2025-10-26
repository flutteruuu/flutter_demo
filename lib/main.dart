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
    
    return Padding(
      padding: EdgeInsets.all(10),
      child: Wrap(
        alignment: WrapAlignment.spaceAround,
        spacing: 10, // 水平間距
        runSpacing: 10, // 垂直間距
        direction: Axis.horizontal,
        children: [
          Button("第1集", onPressed: (){}),
          Button("第2集", onPressed: (){}),
          Button("第3集", onPressed: (){}),
          Button("第4集", onPressed: (){}),
          Button("第5集", onPressed: (){}),
          Button("第6集", onPressed: (){}),
          Button("第7集", onPressed: (){}),
          Button("第8集", onPressed: (){}),
          Button("第9集", onPressed: (){}),
          Button("第10集", onPressed: (){}),
          Button("第11集", onPressed: (){}),
          Button("第12集", onPressed: (){}),
          Button("第13集", onPressed: (){}),
          Button("第14集", onPressed: (){}),
        ] 
      ),
    );
  }
}

// 自訂義按鈕組件
class Button extends StatelessWidget {
  String text; // 按鈕的文字
  void Function()? onPressed;  // 方法
  Button(this.text, {super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Color.fromARGB(255, 204, 225, 240)),
        foregroundColor: WidgetStateProperty.all(Colors.black45),
      ),
      onPressed: () {
        
      },
      child: Text(text),
    );
  }
}
