import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [Container(
          child: Center(
            child: Text('Third'),
          ),
        )],
      ),
    );

  }
}