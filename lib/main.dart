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


// 有狀態組件 : 如果我們想改變頁面中數據的話，這時就需要用到StatefulWidget有狀態組件
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _numCount=0;
  @override
  Widget build(BuildContext context) {
    print(_numCount);
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$_numCount", style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 60),
            ElevatedButton(onPressed: () {
              setState(() { // 更新狀態
                _numCount ++ ;
              });
            }, child: const Text("增加"))
          ],
        ),
      ),
      floatingActionButton:  FloatingActionButton(
        onPressed: (){
          setState(() {
            _numCount ++;
          });
        },
        child: Icon(Icons.add)
      ),

    );
  }
}

// class HomePage extends StatelessWidget {
//   int countNum = 0;
//   HomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Flutter App")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("$countNum", style: Theme.of(context).textTheme.headlineMedium),
//             SizedBox(height: 100),
//             ElevatedButton(onPressed: () {
//               countNum++;
//               print("按了$countNum 次");
//             }, child: const Text("增加"))
//           ],
//         ),
//       ),
//     );
//   }
// }