import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Page3')),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(
                top: 5,
              ),
              //margin: const EdgeInsets.only(left: 50),
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: const Text(
                'text',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.yellow,
              ),
              child: const Text(
                'text',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                  child: const Text(
                    'text',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 120, 123, 215),
                  ),
                  child: const Text(
                    'text',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 176, 231, 88),
                  ),
                  child: const Text(
                    'text',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 26, 200, 219),
                  ),
                  child: const Text(
                    'text',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(
                    top: 20,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 244, 54, 212),
                  ),
                  child: const Text(
                    'text',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: const Text(
                'text',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(
                top: 5,
              ),
              decoration: const BoxDecoration(
                color: Colors.orange,
              ),
              child: const Text(
                'text',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ));
  }
}
