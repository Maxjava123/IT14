import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 4'),
      ),
      body: Card(
        child: Container(
          height: 100,
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/photo_male_3.jpg',
                  ),
                  radius: 40,
                ),
                margin: EdgeInsets.only(left: 20),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Max Christian A. Java',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'm.java.522823@umindanao.edu.ph',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '0969 123 6969',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
