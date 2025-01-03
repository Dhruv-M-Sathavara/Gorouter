import 'package:flutter/material.dart';

class FormWidg extends StatefulWidget {
  const FormWidg({super.key});

  @override
  State<FormWidg> createState() => _FormWidgState();
}

class _FormWidgState extends State<FormWidg> {

  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';


  trySubmit(){
    final isvalid = _formkey.currentState!.validate();
    if(isvalid){
      _formkey.currentState!.save();
      submitform();
    }
    else{
      print('Error');
    }
  }

  submitform(){
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form',style: TextStyle(color: Colors.white)),backgroundColor: Colors.blue,),
      body: Container(margin: EdgeInsets.all(10), child:Center(
        child: Form(key:_formkey, child: Column(
          children: [TextFormField(
            decoration: InputDecoration(hintText: 'Enter First Name'),
            key: ValueKey('firstname'),
            validator: (value){
              if(value.toString().isEmpty){
                return 'Enter value';
              }
              else{
                return null;
              }

            },
            onSaved: (value){
              firstname = value.toString();
            },
          ),
          TextFormField(decoration: InputDecoration(hintText: "Enter Last Name"), key: ValueKey('lastname'),
          validator: (value){
            if(value.toString().isEmpty){
              return "Empty value";
            }
            else{
              return null;
            }
          },onSaved: (value){
            lastname = value.toString();
          },),
          TextFormField(decoration: InputDecoration(hintText: "Enter Email"), key: ValueKey('email'),
          validator: (value){
            if(value.toString().isEmpty){
              return "Enter Email";
            }
            else{
              return null;
            }
          },
          onSaved: (value){
            email = value.toString();
          },),
              TextFormField(obscureText: true, decoration: InputDecoration(hintText: "Enter Password"), key: ValueKey('password'),
          validator: (value){
            if(value.toString().length<=5){
              return "Min length of password is 6 ";
            }
            else{
              return null;
            }
          },
          onSaved: (value){
            password = value.toString();
          },),

          TextButton(style: ButtonStyle( backgroundColor: WidgetStateProperty.all(Colors.blue)), onPressed: (){
            trySubmit();
          }, child: Text('Submit',style: TextStyle(color: Colors.white),))
          ],
        )),
      ) ,)  
    );
  }
}