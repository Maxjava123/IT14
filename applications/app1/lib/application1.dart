import 'package:flutter/material.dart';

class Application1 extends StatelessWidget {
  Application1({super.key});
  var txtBold = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  var txtBold2 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  var txtOnly = const TextStyle(
    fontSize: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Profile',
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
                    'assets/354542045_1392503911593188_2943288517308488976_n.jpg',
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
                height: 5,
              ),
              const Divider(),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Followers',
                    style: txtBold,
                  ),
                  Text(
                    'Post',
                    style: txtBold,
                  ),
                  Text(
                    'Following',
                    style: txtBold,
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const Divider(),
              const Row(children: [
                Text(
                  '   Friends',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ]),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/uly.jpg',
                    height: 120,
                    width: 120,
                  ),
                  Image.asset(
                    'assets/clyde.jpg',
                    height: 120,
                    width: 120,
                  ),
                  Image.asset(
                    'assets/roho.jpg',
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
                    style: txtBold,
                  ),
                  Text(
                    'John Abo-abo',
                    style: txtBold,
                  ),
                  Text(
                    'Michael Rojo',
                    style: txtBold,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/pord.jpg',
                    height: 120,
                    width: 120,
                  ),
                  Image.asset(
                    'assets/eros.jpg',
                    height: 120,
                    width: 120,
                  ),
                  Image.asset(
                    'assets/lance.jpg',
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
                    style: txtBold,
                  ),
                  Text(
                    'Eros Teanilla',
                    style: txtBold,
                  ),
                  Text(
                    'Lance Sayamba',
                    style: txtBold,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(),
              Container(
                //margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      '   Posts',
                      style: txtOnly,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/photo_female_1.jpg',
                          ),
                          radius: 33,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Kath Ty Co', style: txtBold),
                            const Row(
                              children: [
                                Text('1 min. ago'),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.group,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      'A coffe a days gives you anxiety all the way ',
                      style: txtBold,
                    ),
                    Image.asset('assets/image_10.jpg'),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
