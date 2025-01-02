import 'package:flutter/material.dart';

class Drpdown extends StatefulWidget {
  const Drpdown({super.key});

  @override
  State<Drpdown> createState() => _DrpdownState();
}

class _DrpdownState extends State<Drpdown> {
  
  String selectedvalue = 'CSK';
  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: Text('Dropdown' , style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ) ,
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            color:Colors.white,
            height: 70,
            width: MediaQuery.of(context).size.width,
            child: DropdownButton(isExpanded: true, value: selectedvalue,icon: Icon(Icons.arrow_back_ios_new_rounded) ,onChanged: (String? newvalue){
              setState(() => selectedvalue = newvalue!);},items: <String>[
              'CSK',
              'GT',
              'RR',
              'SS',
              'SS'
            ].map<DropdownMenuItem<String>>((String value){
                return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),))
            
          
        ],),),
    );
  }
}