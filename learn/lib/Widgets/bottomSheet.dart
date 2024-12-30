import 'package:flutter/material.dart';

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet',style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.blueAccent)), onPressed: (){
          showModalBottomSheet(isDismissible: false,
            context: context, builder:(context){
            return Column(mainAxisSize: MainAxisSize.min,
              children: [
              ListTile(
                title: Text('Rutu'),
                subtitle: Text('CSK'),
              ),
               ListTile(
                title: Text('MSD'),
                subtitle: Text('CSK'),
              ),
               ListTile(
                title: Text('Jaddu'),
                subtitle: Text('CSK'),
              ),
               ListTile(
                title: Text('Dube'),
                subtitle: Text('CSK'),
              ),
               ListTile(
                title: Text('Pathi'),
                subtitle: Text('CSK'),
              ),

            ],);
          } );
        }, child: Text('Show Bottom Sheet',style: TextStyle(color: Colors.white),)),
      ),

    );
  }
}