import 'package:flutter/material.dart';

class Uipractice extends StatefulWidget {
  const Uipractice({super.key});

  @override
  State<Uipractice> createState() => _UipracticeState();
}

class _UipracticeState extends State<Uipractice> {

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Column(children: [
          Stack(
            children: [
              Positioned(child: Container(
                height: 500,
                // color: Colors.yellow, 
                child: Stack(children: [Positioned(child: Container(
                  decoration: BoxDecoration(image: DecorationImage(
                    
                    fit: BoxFit.cover,
                    image: NetworkImage('https://i0.wp.com/english.cdn.zeenews.com/sites/default/files/2023/11/03/1310538-untitled-design.jpg?strip=all'))),
                  height:450,
                )),
                Positioned(bottom: 0,right: 24, child: CircleAvatar(
                  radius: 50,backgroundImage: NetworkImage('https://admin.thecricketer.com/weblab/Sites/96c8b790-b593-bfda-0ba4-ecd3a9fdefc2/resources/images/site/dhoniheadshot-min.jpg'),
                ))
                ]
                ),
              )),
              
            ],
          ),
          Container(
                padding: EdgeInsets.all(10),
                // color: Colors.blue,
                child: Column( children: [
                  Text('MS Dhoni',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text('Indian cricketer',style: TextStyle(color: Colors.grey,fontSize: 15),)
                ]
                ),
              ),
              Container(
                height: 50,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  rowIconText('999+', Icons.favorite_rounded),
                  rowIconText('999+', Icons.upload),
                  rowIconText('999+', Icons.message),
                  rowIconText('999+', Icons.face),
                ]),
              ),
              Divider(),
              Container(padding: EdgeInsets.all(10), child: Text("Now is the winter of our discontent Made glorious summer by this sun of York; And all the clouds that lour'd upon our house In the deep bosom of the ocean buried. "),)
        ],),
      ),
    );
  }

  Widget rowIconText(String text,IconData icon){
    return Row(
      children: [
        
      Text(text,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),),
      SizedBox(width: 5,),
      Icon(icon)  
      ],
    );
  }
}