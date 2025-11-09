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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter App")),
      body: ListView(
        children: const [
          ListTile(
            title: Text("我是一個列表"),
          ),
          ListTile(
            title: Text("我是一個列表"),
          ),
          ListTile(
            title: Text("我是一個列表"),
          ),
          ListTile(
            title: Text("我是一個列表"),
          ),
        ],
      ),
    );
  }
}
