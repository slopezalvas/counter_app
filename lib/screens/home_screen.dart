

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
 
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('HomeScreen')),
        elevation: 10,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text('Contador de clicks'),
              Text('0'),
            ],
          ),
      ),
    );
  }

}