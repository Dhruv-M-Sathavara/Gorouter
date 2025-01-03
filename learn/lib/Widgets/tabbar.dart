import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp" ,style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        bottom: TabBar(indicatorColor: Colors.white, tabs: [
          Tab(icon: Icon(Icons.chat, color: Colors.white,) ,text: 'Chat',),
          Tab(icon: Icon(Icons.chat_bubble, color: Colors.white,),text: 'Status',),
          Tab(icon: Icon(Icons.phone,color: Colors.white,),text: 'Call',),
        ]),
      ),
      body: TabBarView(children: [
        Container(child: Center(child: Text('Chat',style: TextStyle(fontSize: 30),),),),
        Container(child: Center(child: Text('Status',style: TextStyle(fontSize: 30),),),),
        Container(child: Center(child: Text('Call',style: TextStyle(fontSize: 30),),),),
      ]),
    ));
  }
}