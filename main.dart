import 'package:flutter/material.dart';
import 'package:session1/page1.dart';
import 'package:session1/page2.dart';
import 'package:session1/page3.dart';
import 'package:session1/page3p1.dart';
import 'package:session1/page4.dart';

import 'page5.dart';

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
      home:  Page5(),
    );
  }
}
