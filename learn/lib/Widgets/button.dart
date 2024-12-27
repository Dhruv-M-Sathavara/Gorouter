import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.white,
        height: h,
        width: w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(20)),
              overlayColor: MaterialStateProperty.all(Colors.black12),
              backgroundColor: MaterialStateProperty.all(Colors.blueAccent),elevation: MaterialStateProperty.all(20)
            ),child:Text("Press Me" ,style:TextStyle(fontSize: 20, color: Colors.white),) , onPressed: (){},),


           Container(
            height: 70,
            width: 200,
            child:  ElevatedButton(style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
            ), onPressed:(){}, child: Text('Elevated Button',style: TextStyle(fontSize: 20,color: Colors.white),))) 
          ],
        ),
      )
      
    );
  }
}