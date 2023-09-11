import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key, required this.username, required this.password});

  final String username;
  final String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sample Images',
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('username: $username'),
          Text('password: $password'),
          const Text('This is a new page'),
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
