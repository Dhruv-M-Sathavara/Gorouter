import 'package:flutter/material.dart';

class Views extends StatelessWidget{
  
  Map Captain_team = {
    'captain' : ['RUTU', 'HARDIK' , 'FAF','PAT','GILL','SANJU'],
    'team' : ['CSK', 'MI','RCB','SRH','GT','RR']
  };
  List<String> fruits = ['Orange','Mango','Banana','Guvava','kk','ss'];
  @override
  

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('ListView and GrideView'),backgroundColor: Colors.blue,
      elevation: 0,),
      body: Container(
        // child: ListView.builder(
        //   itemCount:fruits.length,
        //   itemBuilder: (context,index){
        //     return Card(child: ListTile(
        //       onTap: (){
        //         print(Captain_team['captain'][index]);
        //       },
        //       leading: Icon(Icons.person),
        //       title: Text(Captain_team['captain'][index]),
        //       subtitle: Text(Captain_team['team'][index]),
        //     ),);
        //   },),
      // 
      
      child: GridView.builder(itemCount: fruits.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder:(context,index){
        return Card(child: Center(
          child:  Text(Captain_team['captain'][index])
        ),);
      },),
      
      ),

    );
  }
}