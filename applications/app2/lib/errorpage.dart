import 'package:flutter/material.dart';

class Errorpage extends StatelessWidget {
  Errorpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DEMO TIME '),
      ),
      // ignore: prefer_const_constructors
      body: Center(
          child: const Column(
        children: [
          Text(
            'Incorrect username or password',
          ),
        ],
      )),
    );
  }
}
