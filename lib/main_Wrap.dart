import 'package:flutter/material.dart';
import './res/listData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter DEMO",
      theme: ThemeData(primarySwatch: Colors.teal),
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
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Row(
          children: [Text("熱搜", style: Theme.of(context).textTheme.titleLarge)],
        ),
        const Divider(),
        Wrap(
          spacing: 10, // 水平間距
          runSpacing: 10, // 垂直間距
          children: [
            Button("女裝", onPressed: () {}),
            Button("筆記本", onPressed: () {}),
            Button("文具", onPressed: () {}),
            Button("書", onPressed: () {}),
            Button("電子產品", onPressed: () {}),
            Button("時尚", onPressed: () {}),
            Button("襪子", onPressed: () {}),
            Button("上衣", onPressed: () {}),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text("歷史紀錄", style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
        const Divider(),
        Column(
          children: [
            ListTile(title: Text("女裝")),
            Divider(),
            ListTile(title: Text("筆記本")),
            Divider(),
            ListTile(title: Text("文具")),
          ],
        ),
        const SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.all(40),
          child:
            OutlinedButton.icon(
              // 自適應
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all(Colors.black45),
              ),
              onPressed: () {},
              icon: Icon(Icons.delete),
              label: Text("清除歷史紀錄"),
            ),
          
        ),
      ],
    );
  }
}

// 自訂義按鈕組件
class Button extends StatelessWidget {
  String text; // 按鈕的文字
  void Function()? onPressed; // 方法
  Button(this.text, {super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          Color.fromARGB(255, 204, 225, 240),
        ),
        foregroundColor: WidgetStateProperty.all(Colors.black45),
      ),
      onPressed: () {},
      child: Text(text),
    );
  }
}
