import 'package:flutter/material.dart';

class PracticeDrpDown extends StatefulWidget {
  const PracticeDrpDown({super.key});

  @override
  State<PracticeDrpDown> createState() => _PracticeDrpDownState();
}

class _PracticeDrpDownState extends State<PracticeDrpDown> {

  String selectedvalue = 'MALE';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Practice Drop Down',style:TextStyle(color: Colors.white),),
      backgroundColor: Colors.blue,),
      body: Center(child: Column(
        children: [
          Container(
            color: Colors.white,
            margin: EdgeInsets.all(10) ,
            height: 70,
            width: MediaQuery.of(context).size.width,
            child: DropdownButton(isExpanded: true, value: selectedvalue, icon: Icon(Icons.arrow_back), items:<String> [
              'MALE',
              'FEMALE',
              'OTHER'
            ].map<DropdownMenuItem<String>>((String value){
              return DropdownMenuItem(value: value ,child: Text(value));
            }).toList(), onChanged:(String? newvalue){
              setState(() {
                selectedvalue = newvalue!;
              });
            } ),
          )
        ],
      ),),
    );
    
  }
}