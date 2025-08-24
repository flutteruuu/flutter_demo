import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Hello flutter")),
      body: const Center(
        child: Text('Hello World1234', 
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.red,
            fontSize: 40.0)),
      ),
    ),
  ));
}