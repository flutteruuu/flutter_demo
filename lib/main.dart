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
    // 需求: 頁面上顯示一個容器, 寬度是螢幕寬度, 高度是寬度的一半
    return ListView(
      children:[
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          elevation: 20,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16/9, 
                child: Image.network("https://www.itying.com/images/flutter/3.png", fit: BoxFit.cover,)
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://www.itying.com/images/flutter/3.png",
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  )
                ),
                title: Text("xxxx"),
                subtitle: Text("xxxxxxxx"),

              ),
            ],
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          elevation: 20,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16/9, 
                child: Image.network("https://www.itying.com/images/flutter/4.png", fit: BoxFit.cover,)
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://www.itying.com/images/flutter/4.png"),
                ),
                title: Text("xxxx"),
                subtitle: Text("xxxxxxxx"),

              ),
            ],
          ),
        ),
      ],
    );
  }
}
