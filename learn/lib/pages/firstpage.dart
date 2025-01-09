import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn/Widgets/myappRoutConstance.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),
      backgroundColor: Colors.blue,),
      body: Column(
        children: [Container(
          child: Center(
            child: Text('Home'),
          ),
        ),
        ElevatedButton(onPressed: (){
          GoRouter.of(context).pushNamed(Myapproutconstance.secondroutname);
        }, child: Text('Second Page')),
        ElevatedButton(onPressed: (){
          GoRouter.of(context).pushNamed(Myapproutconstance.thirdroutname);
        }, child: Text('Third Page'))
        ], 
      ),
    );

  }
}