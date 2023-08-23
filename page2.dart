import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Images'),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.green,
            width: 60,
            height: 60,
          ),
          Container(
            color: Colors.yellow,
            width: 80,
            height: 80,
          ),
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
        ],
      )),
    );
  }
}
