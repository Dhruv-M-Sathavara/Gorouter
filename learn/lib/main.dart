import 'package:flutter/material.dart';
import 'package:learn/Widgets/container_sized.dart';
import 'package:learn/Widgets/rows_column.dart';


void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple
      ),
      home: Rows_column()
    );
  }
}

