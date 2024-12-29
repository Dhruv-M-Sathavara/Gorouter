import 'package:flutter/material.dart';
import 'package:learn/Widgets/ListView_and_grideView.dart';
import 'package:learn/Widgets/button.dart';
import 'package:learn/Widgets/container_sized.dart';
import 'package:learn/Widgets/dismissible.dart';
import 'package:learn/Widgets/drawer.dart';
import 'package:learn/Widgets/image.dart';
import 'package:learn/Widgets/rows_column.dart';
import 'package:learn/Widgets/snackbar.dart';


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple
      ),
      home: ImageWidgets()
    );
  }
}

