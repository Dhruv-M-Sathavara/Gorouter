import 'package:flutter/material.dart';
import 'package:learn/Widgets/Gorouter.dart';




void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  static var router;

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: Myapprout().router.routeInformationParser,
      routerDelegate: Myapprout().router.routerDelegate,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple
      ),

    
    );
  }
}

