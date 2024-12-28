import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  const Button({super.key});

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
              padding: WidgetStateProperty.all(EdgeInsets.all(20)),
              overlayColor: WidgetStateProperty.all(Colors.black12),
              backgroundColor: WidgetStateProperty.all(Colors.blueAccent),elevation: WidgetStateProperty.all(20)
            ),child:Text("Press Me" ,style:TextStyle(fontSize: 20, color: Colors.white),) , onPressed: (){},),


           SizedBox(
            height: 70,
            width: 200,
            child:  ElevatedButton(style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.blue),
              shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
            ), onPressed:(){}, child: Text('Elevated Button',style: TextStyle(fontSize: 20,color: Colors.white),))) 
          ],
        ),
      )
      
    );
  }
}