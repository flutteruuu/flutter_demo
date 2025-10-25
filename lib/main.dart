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
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {}, // 點擊按鈕會觸發的事件
              child: const Text("普通按鈕"),
            ),
            TextButton(onPressed: () {}, child: const Text("文字按鈕")),
            OutlinedButton(onPressed: null, child: Text("邊框按鈕")),
            IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_up)),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.send),
              label: const Text("發送"),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.info),
              label: const Text("消息"),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("增加"),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.red), // 設置背景顏色
                foregroundColor: WidgetStateProperty.all(
                  Colors.black,
                ), // 設置文字顏色
              ),
              onPressed: () {
                print("ElevatedButton");
              },
              icon: const Icon(Icons.send),
              label: const Text("發送"),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 60,
              width: 100,
              child: ElevatedButton(onPressed: () {}, child: Text("大按鈕")),
            ),
            SizedBox(
              height: 60,
              width: 100,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.search),
                label: const Text("搜索"),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(20),
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.green),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                  ),
                  child: const Text("login"),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  // 圓角
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text("圓角"),
            ),
            ElevatedButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  // 圓形
                  const CircleBorder(side: BorderSide(color: Colors.yellow)),
                ),
              ),
              onPressed: () {},
              child: const Text("圓形"),
            ),
            SizedBox(
              height: 80,
              width: 80,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all(
                    // 圓形
                    const CircleBorder(
                      side: BorderSide(width: 10, color: Colors.yellow),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text("圓形"),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            OutlinedButton(
              style: ButtonStyle(
                side: WidgetStateProperty.all(
                  const BorderSide(width: 1, color: Colors.red)
                )
              ),
              onPressed: () {},
              child: const Text("帶邊框按鈕"),
            ),
          ]
        ),

      ],
    );
  }
}
