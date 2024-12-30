import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  
  
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
      title: Text('Alerts'),),
      body: Center(
        child: ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.blue)), onPressed: (){_showMyDialog(context);}, 
        child: Text('Show elert' ,style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}

Future<void>_showMyDialog(BuildContext context)async{
  return showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      elevation: 0,
        backgroundColor: Colors.blueGrey,
        title: Text('This is alert'),
        content:SingleChildScrollView(child:  ListBody(
          children: [
            Text('This is a Demo'),
            Text('Sathavara Dhruv Mukeshbhai')
          ],
        ),),
        actions: [
          TextButton(onPressed: (){}, child: Text('Approve')),
           TextButton(onPressed: (){
            Navigator.pop(context);
           }, child: Text('Cancel')),
        ],
    );
  });
}