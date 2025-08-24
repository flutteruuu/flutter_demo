import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Hello flutter")),
      body: const MyApp()
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          alignment: Alignment.center, // 配置Container容器元素的方位
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.yellow, // 背景顏色
            border: Border.all( // 邊框
              color: Colors.red,
              width: 2.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)), // 邊框圓角
            boxShadow: const [ // 陰影效果
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10.0, 
              )
            ],
            // LinearGradient 背景線性漸變 RadialGradient徑向漸變
            gradient:const LinearGradient(
              colors: [
                Colors.yellow, Colors.orange
              ])
          ),
          child: const Text("你好 flutter", style: TextStyle(
            color: Colors.black,
            fontSize: 20
          ),),
        ),
      );
  }
}
