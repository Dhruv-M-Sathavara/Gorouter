import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [Container(
          child: Center(
            child: Text('Second'),
          ),
        )],
      ),
    );

  }
}