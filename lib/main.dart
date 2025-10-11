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
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color:Colors.black,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 180,
                child: Image.network("https://www.itying.com/images/flutter/2.png",fit: BoxFit.cover)
              ),
              ),
            Expanded(
                flex: 1,
                child:SizedBox(
                  height: 180,
                  child: Column(
                  children:[
                    Expanded(flex: 1,child: SizedBox( 
                      width: double.infinity,
                      child: Image.network("https://www.itying.com/images/flutter/3.png",fit: BoxFit.cover),
                    )),
                    const SizedBox(height: 5),
                    Expanded(flex: 2, child: SizedBox(
                      width: double.infinity,
                      child: Image.network("https://www.itying.com/images/flutter/4.png",fit: BoxFit.cover),
                    )),
                  ],
                )
                ))
          ],
        )
      ],
    );
  }
}
