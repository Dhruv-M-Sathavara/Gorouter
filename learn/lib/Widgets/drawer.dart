import 'package:flutter/material.dart';

class DrawerWidg extends StatefulWidget {
  const DrawerWidg({super.key});

  @override
  State<DrawerWidg> createState() => _DrawerWidgState();
}

class _DrawerWidgState extends State<DrawerWidg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(padding: EdgeInsets.all(0), child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    CircleAvatar(radius: 40,
                    backgroundImage:NetworkImage('https://static.toiimg.com/thumb/msid-108681057,width-400,resizemode-4/108681057.jpg') ),
                    SizedBox(width: 10,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text('MS Dhoni' , style: TextStyle(color: Colors.white , fontSize: 16),),
                      Text('India EX-Captain',style: TextStyle(color: Colors.white , fontSize: 16),)
                    ],)
                  ],
                ),
              )),
              ListTile(leading: Icon(Icons.folder , color: Colors.black,),
              title: Text('My files' ,style: TextStyle(color: Colors.black),),),
               ListTile(leading: Icon(Icons.group , color: Colors.black,) ,
              title: Text('Shared with me',style: TextStyle(color: Colors.black),),),
               ListTile(leading: Icon(Icons.delete, color: Colors.black,),
              title: Text('Trash',style: TextStyle(color: Colors.black),),),
              
               ListTile(leading: Icon(Icons.star, color: Colors.black,),
              title: Text('Starred',style: TextStyle(color: Colors.black),),),
               ListTile(leading: Icon(Icons.upload, color: Colors.black,),
              title: Text('Upload',style: TextStyle(color: Colors.black),),),
              ListTile(leading: Icon(Icons.logout, color: Colors.black,),
              title: Text('LogOut',style: TextStyle(color: Colors.black),),),
            ],
          ),
        ),
      ) ,
      appBar: AppBar(
        title: Text('Drawer'),
        backgroundColor: Colors.blue,
      ),
      body: Container( color: Colors.white,
        child: Center(
          child: Text('Hello' , style: TextStyle(color: Colors.black),),
        
        ),
      ),
    );
}
}