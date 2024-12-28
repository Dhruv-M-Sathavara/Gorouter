import 'package:flutter/material.dart';

class Views extends StatelessWidget{
  const Views({super.key});

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('ListView and GrideView'),backgroundColor: Colors.blue,
      elevation: 0,),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Card(
              color: Colors.amberAccent,
              child: ListTile(
                title: Text('Yellow',style: TextStyle(color: Colors.white)),
                subtitle: Text('Dhruv',style: TextStyle(color: Colors.white),),
              ),
            ),
             Card(
              color: Colors.amberAccent,
              child: ListTile(
                title: Text('Yellow',style: TextStyle(color: Colors.white)),
                subtitle: Text('Dhruv',style: TextStyle(color: Colors.white),),
              ),
            ),
             Card(
              color: Colors.amberAccent,
              child: ListTile(
                title: Text('Yellow',style: TextStyle(color: Colors.white)),
                subtitle: Text('Dhruv',style: TextStyle(color: Colors.white),),
              ),
            ),
             Card(
              color: Colors.amberAccent,
              child: ListTile(
                title: Text('Yellow',style: TextStyle(color: Colors.white)),
                subtitle: Text('Dhruv',style: TextStyle(color: Colors.white),),
              ),
            ),
             Card(
              color: Colors.amberAccent,
              child: ListTile(
                title: Text('Yellow',style: TextStyle(color: Colors.white)),
                subtitle: Text('Dhruv',style: TextStyle(color: Colors.white),),
              ),
            ),
             Card(
              color: Colors.amberAccent,
              child: ListTile(
                title: Text('Yellow',style: TextStyle(color: Colors.white)),
                subtitle: Text('Dhruv',style: TextStyle(color: Colors.white),),
              ),
            ),
             Card(
              color: Colors.amberAccent,
              child: ListTile(
                title: Text('Yellow',style: TextStyle(color: Colors.white)),
                subtitle: Text('Dhruv',style: TextStyle(color: Colors.white),),
              ),
            ),
             Card(
              color: Colors.amberAccent,
              child: ListTile(
                title: Text('Yellow',style: TextStyle(color: Colors.white)),
                subtitle: Text('Dhruv',style: TextStyle(color: Colors.white),),
              ),
            ),
             Card(
              color: Colors.amberAccent,
              child: ListTile(
                title: Text('Yellow',style: TextStyle(color: Colors.white)),
                subtitle: Text('Dhruv',style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),

    );
  }
}