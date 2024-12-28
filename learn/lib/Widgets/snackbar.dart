import 'package:flutter/material.dart';

class Snackbarlean extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Snackbar"),
      ),

      body: Container(
        color: Colors.white,
        child: Center(
          child: ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll( Colors.blue)), onPressed: (){
            final snackbar = SnackBar(action: SnackBarAction(label: 'undo',textColor: Colors.white, onPressed: (){}), behavior: SnackBarBehavior.floating
              ,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),  duration: const Duration(milliseconds: 3000 ), backgroundColor: Colors.amber,content: Text("Hello"));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
          }, child: Text('Show Snackbar',style: TextStyle(color: Colors.white),)),
        ),
      ),
      

    );
  }

}