import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
     appBar: AppBar(
       title: Text("Container and sized box"),
       backgroundColor: Colors.deepPurple,
     ),
     body:Center(child:  Container(
      // padding: EdgeInsets.all(20),
      // margin: EdgeInsets.all(20),
        height: 100,
        width: 100,
        child:Center(child: Container(margin: EdgeInsets.all(10),
          color: Colors.red,
        )),
        // Text("Hello", style: TextStyle(fontSize: 20))),
        decoration: BoxDecoration(
          color: Colors.yellow,
          // shape: BoxShape.circle,
          // borderRadius:BorderRadius.circular(20)
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(5,5)
          )
        ]
        )
        
     )
     )
    //  Center(
    //   child: SizedBox(
    //     height: 10,
    //     width: 50,
    //     child:Text("Hello")
    //   ),
    //  ),
     
    );

  }
}