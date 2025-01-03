import 'package:flutter/material.dart';

class Stackpositioned extends StatelessWidget {
  const Stackpositioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack & positioned",style: TextStyle(color: Colors.white),
      ),backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Stack(children: [Positioned(child: 
            Container(
              height: 300,
              width: 300,
              color: Colors.orange,
            ),),
           Positioned(child: Container(height: 
            150,width: 150,
            color: Colors.white,)),

            Positioned(
              top: 20, 
              child:Container(height: 
            50,width: 50,
            color: Colors.green,)
            )
          ],)
        ),
      ),
    );
  }
}