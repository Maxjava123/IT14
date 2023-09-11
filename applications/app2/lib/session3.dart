import 'package:flutter/material.dart';
import 'package:session1/errorpage.dart';

import 'page2.dart';

class Session3 extends StatelessWidget {
  Session3({super.key, required this.username, required this.password});

  TextEditingController txtcontroller = TextEditingController();
  TextEditingController txtcontroller1 = TextEditingController();

  final String username;
  final String password;

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
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => Page2(
                //       username: txtcontroller.text,
                //       password: txtcontroller1.text,
                //     ),
                //   ),
                // );
                if (txtcontroller.text == 'user12' &&
                    txtcontroller1.text == 'pass12') {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Page2(
                        username: txtcontroller.text,
                        password: txtcontroller1.text,
                      ),
                    ),
                  );
                } else {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: ((context) => Errorpage()),
                  // ));
                  // const AlertDialog(
                  //     title: Text('ERROR MESSAGE'),
                  //     content: const SingleChildScrollView(
                  //       child: ListBody(
                  //         children: <Widget>[
                  //           Text('This is a demo alert dialog.'),
                  //           Text('Would you like to approve of this message?'),
                  //         ],
                  //       ),
                  //     ));
                }
              },
              child: const Text(
                'LOGIN',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
