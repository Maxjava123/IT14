import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DEMO TIME '),
      ),
      // ignore: prefer_const_constructors
      body: Center(
        child: Container(
          color: Colors.green,
          width: 250,
          height: 120,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('HELLLO WORLD'),
              Text('Javamax'),
              Text('Javamaxxx'),
            ],
          ),
        ),
      ),
    );
  }
}
