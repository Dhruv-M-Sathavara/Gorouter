import 'package:flutter/material.dart';
import 'package:learn/Widgets/dropdownpractice.dart';
import 'package:learn/Widgets/form.dart';
import 'package:learn/Widgets/imagepicker.dart';
import 'package:learn/Widgets/stack&positioned.dart';
import 'package:learn/Widgets/tabbar.dart';



void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple
      ),
      home: ImagepickerLearn()
    );
  }
}

