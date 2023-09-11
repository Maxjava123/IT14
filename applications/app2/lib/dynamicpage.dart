import 'package:flutter/material.dart';

class DynamicPage extends StatelessWidget {
  DynamicPage({super.key});

  var txtDesign = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );

  buildNewRow() => Row(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          Image.asset(
            'assets/photo_male_1.jpg',
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dynamic Page',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is a Custom Text',
              style: txtDesign,
            ),
            buildNewRow(),
          ],
        ),
      ),
    );
  }
}
