import 'package:flutter/material.dart';

class Rows_column extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Rows and column'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: h,
        width: 200,
        color: Colors.yellow,
        child:Wrap(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          Container(
            height: 60,
            width: 60,
            color: Colors.blueAccent,
          ),
          Container(
            height: 60,
            width: 60,
            color: Colors.orange,
          ),
          Container(
            height: 60,
            width: 60,
            color: Colors.white,
          ),
          Container(
            height: 60,
            width: 60,
            color: Colors.green,
          )
        ],)
      ),
    );
    
  }
}