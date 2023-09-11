import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  Page5({super.key});
  var txtbold = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  var txtBold2 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Page 5 Profile',
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 199, 222, 26),
                radius: 60,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/photo_male_4.jpg',
                  ),
                  radius: 55,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              const Text(
                'Max Christian A. Java',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'm.java.522823@umindanao.edu.ph',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Followers',
                    style: txtbold,
                  ),
                  Text(
                    'Post',
                    style: txtbold,
                  ),
                  Text(
                    'Following',
                    style: txtbold,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '100k',
                    style: txtBold2,
                  ),
                  Text(
                    '12k',
                    style: txtBold2,
                  ),
                  Text(
                    '500',
                    style: txtBold2,
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const Divider(),
              const Row(children: [
                Text(
                  '   Friends',
                  style: TextStyle(fontSize: 20),
                ),
              ]),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/photo_male_1.jpg',
                    height: 120,
                    width: 120,
                  ),
                  Image.asset(
                    'assets/photo_male_2.jpg',
                    height: 120,
                    width: 120,
                  ),
                  Image.asset(
                    'assets/photo_male_3.jpg',
                    height: 120,
                    width: 120,
                  ),
                ],
              ),
              const SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Elyses Tadlas',
                    style: txtbold,
                  ),
                  Text(
                    'John Abo-abo',
                    style: txtbold,
                  ),
                  Text(
                    'Michael Rojo',
                    style: txtbold,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/photo_male_5.jpg',
                    height: 120,
                    width: 120,
                  ),
                  Image.asset(
                    'assets/photo_male_6.jpg',
                    height: 120,
                    width: 120,
                  ),
                  Image.asset(
                    'assets/photo_male_7.jpg',
                    height: 120,
                    width: 120,
                  ),
                ],
              ),
              const SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Clifford Gomez',
                    style: txtbold,
                  ),
                  Text(
                    'Eros Teanilla',
                    style: txtbold,
                  ),
                  Text(
                    'Lance Sayamba',
                    style: txtbold,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
