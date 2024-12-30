import 'package:flutter/material.dart';
import 'package:learn/Widgets/alaert.dart';
import 'package:learn/Widgets/bottomSheet.dart';


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
      home: Bottomsheet()
    );
  }
}

