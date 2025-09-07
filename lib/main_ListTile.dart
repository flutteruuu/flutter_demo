import 'package:flutter/material.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter ICON")),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.home), // 列表圖標
          title: Text("首頁")
          ), // 列表項目
        Divider(), // 分隔線
        ListTile(
          leading: Icon(Icons.assignment, color: Colors.red), // 列表圖標
          title: Text("全部訂單")
          ), // 列表項目
        Divider(), // 分隔線
        ListTile(
          leading: Icon(Icons.payment, color: Colors.green), // 列表圖標
          title: Text("待付款")
          ), // 列表項目
        Divider(), // 分隔線
        ListTile(
          leading: Icon(Icons.local_car_wash, color: Colors.orange), // 列表圖標
          title: Text("待收貨")
          ), // 列表項目
        Divider(), // 分隔線

        ListTile(
          leading: Icon(Icons.favorite, color: Colors.lightGreen), // 列表圖標
          title: Text("我的收藏")
          ), // 列表項目
        Divider(), // 分隔線

        ListTile(
          leading: Icon(Icons.people, color: Colors.black54), // 列表圖標
          title: Text("在線客服"),
          trailing: Icon(Icons.chevron_right_sharp),
          ), // 列表項目
        Divider(), // 分隔線

        ListTile(
          leading: Image.network("https://cdn2.ettoday.net/images/8389/8389401.png"),
          title: const Text("午後全台變天 塔巴颱風最新路徑曝"),
          subtitle: const Text("中央氣象局今（16）日發布豪雨特報，預計午後全台各地將有局部短時強降雨，提醒民眾外出注意安全。氣象局也持續觀察今年第4號颱風塔巴（Taba），目前位於鵝鑾鼻東南東方約770公里海面上，未來將朝西北西進行，對台灣沒有直接影響。"),
          ), // 列表項目

        Divider(), // 分隔線

        ListTile(
          leading: Image.network("https://cdn2.ettoday.net/images/8389/8389401.png"),
          title: const Text("午後全台變天 塔巴颱風最新路徑曝"),
          subtitle: const Text("中央氣象局今（16）日發布豪雨特報，預計午後全台各地將有局部短時強降雨，提醒民眾外出注意安全。氣象局也持續觀察今年第4號颱風塔巴（Taba），目前位於鵝鑾鼻東南東方約770公里海面上，未來將朝西北西進行，對台灣沒有直接影響。"),
          ), // 列表項目

        Divider(), // 分隔線  

        ListTile(
          leading: Image.network("https://cdn2.ettoday.net/images/8389/8389401.png"),
          title: const Text("午後全台變天 塔巴颱風最新路徑曝"),
          subtitle: const Text("中央氣象局今（16）日發布豪雨特報，預計午後全台各地將有局部短時強降雨，提醒民眾外出注意安全。氣象局也持續觀察今年第4號颱風塔巴（Taba），目前位於鵝鑾鼻東南東方約770公里海面上，未來將朝西北西進行，對台灣沒有直接影響。"),
          ), // 列表項目

        Container(
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            "我是一個標題",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22)),
          ),
       Image.network("https://p2.bahamut.com.tw/B/2KU/58/5b557e5d73365760887a428da91snz65.JPG?w=1000")

      ],
    );
  }
}