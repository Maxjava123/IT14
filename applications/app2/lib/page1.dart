import 'package:flutter/material.dart';

class Session3 extends StatelessWidget {
  const Session3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DEMO TIME '),
      ),
      // ignore: prefer_const_constructors
      body: Center(
          child: Column(
        children: [
          Text(
            'Hello',
          ),
        ],
      )),
    );
  }
}
