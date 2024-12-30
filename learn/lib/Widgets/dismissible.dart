import 'package:flutter/material.dart';

class Diss extends StatefulWidget {
  const Diss({super.key});

  @override
  _DissmissibleWidgetState createState() => _DissmissibleWidgetState();
}

class _DissmissibleWidgetState extends State<Diss> {

  List<String> fruits = ['Apple', 'Banana', 'Mango', 'Orange', 'Pineapple'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible'),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Container(
        color: Colors.white,
        child: ListView.builder( itemCount: fruits.length, itemBuilder: (context , index){
          final item = fruits[index];
          return Dismissible(onDismissed: (direction){
            if(direction == DismissDirection.startToEnd){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),backgroundColor: Colors.red,duration: const Duration(milliseconds: 1000),));
            }
            else{
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(fruits[index]),backgroundColor: Colors.green,duration: const Duration(milliseconds: 1000),));
            }
          },
           key: Key(item),
           background: Container(color: Colors.red,),
           secondaryBackground: Container(color: Colors.green,),
          child: Card( child: ListTile(
            title: Text(fruits[index]),
          ) ,
           ));
        },
      ),),
    ),
    );
  }
}