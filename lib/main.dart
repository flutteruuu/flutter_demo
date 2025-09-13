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

  Widget _initGridViewData(context, index){
 return  Container(
            alignment: Alignment.center,
            decoration:  BoxDecoration(
              border: Border.all(color: Colors.grey)
            ),
            child: Column(
              children: [
                Image.network(listData[index]["imgurl"]),
                const SizedBox(height: 10),
                Text(listData[index]["title"], style: const TextStyle(
                  fontSize: 16,
                ))
              ],
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: listData.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      crossAxisSpacing: 10, // 水平間距
      mainAxisSpacing: 10,  // 垂直間距
      childAspectRatio: 0.8, // 寬高比
      maxCrossAxisExtent: 200,
       ),

      itemBuilder: _initGridViewData
    );
  }
}
