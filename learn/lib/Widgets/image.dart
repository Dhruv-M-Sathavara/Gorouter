import 'package:flutter/material.dart';

class ImageWidgets extends StatelessWidget {
  const ImageWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('India'),
        backgroundColor: Colors.blue,
      ),
      body:Center(child: Container( height: 200,
        width: 200,
        decoration: BoxDecoration(
          boxShadow:[BoxShadow(
            blurRadius: 10,
            color: Colors.grey.shade800,
            spreadRadius: 5.0
          ),],
          color: Colors.blue,borderRadius: BorderRadius.circular(20) , 
          image: DecorationImage(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3GksicdUWRYxThejA_NTDl-ezpynV8Cg3BQ&s'),
          fit: BoxFit.cover,)),),
        ),
    );
  }
}