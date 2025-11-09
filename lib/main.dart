import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage(),
    );
  }
}

// 有狀態組件:如果我們想改變葉面中的數據的話，這時就需要用到StatefulWidget有狀態組件
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter App")),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          // 改變數據必須加上setState
          setState(() {
            _list.add("我是一個新增列表");
          });
          // 點擊事件
        },
      ),
      body: ListView(
        children: _list.map((v) { // map 方法會遍歷 _list 中的每個元素，並將每個元素（v）轉換為一個 ListTile 小部件
          return ListTile(
            title: Text(v),
          );
        }).toList(),
      ),
    );
  }
}
