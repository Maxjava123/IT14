import 'package:flutter/material.dart';
import 'package:session1/addpage.dart';
import 'package:session1/login.dart';
import 'package:session1/register.dart';
import 'package:session1/registration.dart';
import 'package:session1/task3.dart';
import 'package:session1/task4.dart';
import 'package:session1/task4_0.dart';
/*import 'package:session1/dynamicpage.dart';
import 'package:session1/page1.dart';
import 'package:session1/page2.dart';
import 'package:session1/page3.dart';
import 'package:session1/page3p1.dart';
import 'package:session1/page4.dart';
import 'package:session1/page6.dart';
import 'package:session1/page7.dart';
import 'package:session1/page9.dart';
import 'page5.dart';
import 'page8.dart';*/
import 'session3.dart';
import 'trylang.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // ignore: prefer_const_constructors
      home: Registration(
          // password: '',
          // username: '',
          ),
    );
  }
}
