import 'package:flutter/material.dart';
import 'package:session1/errorpage.dart';
import 'package:session1/page2_0.dart';

import 'page2.dart';

class Register extends StatelessWidget {
  Register({super.key});

  TextEditingController txtcontroller = TextEditingController();
  TextEditingController txtcontroller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DEMO TIME ',
        ),
      ),
      // ignore: prefer_const_constructors
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: txtcontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Username',
                labelText: 'USERNAME',
              ),
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: txtcontroller1,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Password',
                labelText: 'PASSWORD',
              ),
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 148, 140, 236),
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Page2(
                      username: txtcontroller.text,
                      password: txtcontroller1.text,
                    ),
                  ),
                );
              },
              child: const Text(
                'LOGIN',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => Page2_0())),
                );
              },
              child: const Text('Go to Page 2'),
            ),
          ],
        ),
      ),
    );
  }
}
