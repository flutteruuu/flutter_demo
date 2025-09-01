import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Hello flutter")),
      body: Column(
        children: const[
          MyApp(),
          MyButton(),
          MyText(),
          MyPicture(),
          SizedBox(height: 20,), // 添加間距
          Circular(),
        ],
      )
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
          margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
          alignment: Alignment.center, // 配置Container容器元素的方位
          width: 200,
          height: 200,
          // transform:  Matrix4.translationValues(40, 0, 0), // 位移
          // transform: Matrix4.rotationZ(0.2), //旋轉
          // transform: Matrix4.skewY(0.2), // 沿著 Y 軸傾斜 0.2 弧度
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

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      alignment: Alignment.center,
      width: 200,
      height: 40,
      // margin: const EdgeInsets.all(10), // 四周margin
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0), // 指定margin (和外面元素的距離)
      // padding: const EdgeInsets.fromLTRB(40, 10, 0, 0), // 指定padding (和裡面元素的距離)
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text("Button", style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0), // 指定margin (和外面元素的距離)
      decoration: const BoxDecoration(
        color: Colors.yellow,
      ),
      child: Text(
        "你好我是Flutter你好我是Flutter你好我是Flutter你好我是Flutter你好我是Flutter", 
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis, // 溢出顯示幾個點
        maxLines: 1,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.w900,
          fontStyle: FontStyle.italic,
          letterSpacing: 2,
          decoration: TextDecoration.underline,
          decorationColor: Colors.black,
          decorationStyle: TextDecorationStyle.dashed
        ),
      ),
    );
  }
}

class MyPicture extends StatelessWidget {
  const MyPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 0), // 指定margin (和外面元素的距離)
        width: 150,
        height: 150,
        decoration: const BoxDecoration(
          color: Colors.yellow
        ), 
        child: Image.network(
          "https://www.itying.com/themes/itying/images/ionic4.png",
          // 
          // https://miro.medium.com/v2/resize:fit:2000/format:webp/1*KLn6ye1qAU9vAI3zgIhLCg.png
          // alignment: Alignment.centerLeft,
          // scale: 3,
          // fit:BoxFit.cover,
          // repeat: ImageRepeat.repeat,
          ),
      ),
    );
  }
}

// 實現一個圓形圖片
class Circular extends StatelessWidget {
  const Circular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(75), // 圓形邊框
        image: const DecorationImage(
          image: NetworkImage("https://www.itying.com/themes/itying/images/ionic4.png"),
          fit: BoxFit.cover
        ),
      ),
    );
  }
}