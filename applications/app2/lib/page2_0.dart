import 'package:flutter/material.dart';

class Page2_0 extends StatelessWidget {
  Page2_0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DEMO TIME '),
      ),
      // ignore: prefer_const_constructors
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'PAGE2.0',
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              GestureDetector(
                onTap: () {},
              );
              const SizedBox(
                height: 50,
              );
            },
            child: const Text('Go Back'),
          ),
        ],
      )),
    );
  }
}
