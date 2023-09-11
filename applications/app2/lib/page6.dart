import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {
  const Page6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Page6',
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 40,
            ),
            Icon(
              Icons.audiotrack,
              color: Colors.green,
              size: 40,
            ),
            Icon(
              Icons.beach_access,
              color: Colors.blue,
              size: 40,
            ),
          ],
        ),
      ),
    );
  }
}
