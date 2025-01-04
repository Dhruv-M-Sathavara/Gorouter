import 'package:flutter/material.dart';

class Uipractice extends StatefulWidget {
  const Uipractice({super.key});

  @override
  State<Uipractice> createState() => _UipracticeState();
}

class _UipracticeState extends State<Uipractice> {

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Column(children: [
          Stack(
            children: [
              Positioned(child: Container(
                height: 500,
                color: Colors.yellow, 
                child: Stack(children: [Positioned(child: Container(
                  color:  Colors.red,
                  height:450,
                )),
                Positioned(bottom: 0,right: 24, child: CircleAvatar(
                  radius: 50,
                ))
                ]
                ),
              )),
              
            ],
          ),
          Container(
                color: Colors.blue,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Sathavara Dhruv Mukexhbhai',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text('Discription',style: TextStyle(color: Colors.grey.shade200,fontSize: 15),)
                ]
                ),
              )
        ],),
      ),
    );
  }
}