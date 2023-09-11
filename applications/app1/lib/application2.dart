import 'package:flutter/material.dart';

class Application2 extends StatelessWidget {
  Application2({super.key});

  var txtbold = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
  var txtBold2 = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
  Post post1 = Post(
    
  )

  friendsList(name, picture) => Card(
        child: Column(
          children: [
            Image.asset(
              picture,
              width: 123,
              height: 123,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: Text(
                name,
                style: txtbold,
              ),
            ),
          ],
        ),
      );
  buttonActions(iconVal, txtButton) => TextButton.icon(
        onPressed: () {},
        icon: Icon(
          iconVal,
          color: Colors.grey,
        ),
        label: Text(
          txtButton,
          style: const TextStyle(color: Colors.grey),
        ),
      );
  postList(
    profPic,
    profName,
    tiMe,
    descripTion,
    postImg,
    numComments,
    numShares,
  ) =>
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    profPic,
                  ),
                  radius: 33,
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(profName, style: txtBold2),
                    Row(
                      children: [
                        Text(
                          tiMe,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.group,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              descripTion,
              style: txtBold2,
            ),
            const SizedBox(height: 15),
            Image.asset(
              postImg,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('$numComments comments . $numShares shares'),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttonActions(Icons.thumb_up, 'Like'),
                buttonActions(Icons.comment, 'Comment'),
                buttonActions(Icons.forward, 'Share'),
              ],
            ),
            const Divider(),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Insta Book',
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(children: [
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
              const SizedBox(
                height: 5,
              ),
              const Divider(),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Friends',
                      style: txtBold2,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                friendsList('Elyses Tadlas', 'assets/uly.jpg'),
                friendsList('John Abo-abo', 'assets/clyde.jpg'),
                friendsList('Michael Rojo', 'assets/roho.jpg'),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                friendsList('Clifford Gomez', 'assets/pord.jpg'),
                friendsList('Eros Teanilla', 'assets/eros.jpg'),
                friendsList('Lance Sayamba', 'assets/lance.jpg'),
              ]),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      '   Posts',
                      style: txtBold2,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              postList(
                  'assets/photo_female_1.jpg',
                  'Kath Ty Co',
                  '1 min ago',
                  'A coffee a day gives you an anxiety all the way',
                  'assets/image_10.jpg',
                  60,
                  22),
              postList(
                  'assets/uly.jpg',
                  'Ulyses Tadlas',
                  '1 hr ago',
                  'Soon to be body builder ',
                  'assets/364412109_6367765493320456_2231913903713531535_n.jpg',
                  69,
                  2),
              postList(
                  'assets/clyde.jpg',
                  'Clyde Abo-Abo',
                  '2 min ago',
                  'Good Students :)',
                  'assets/363800673_612673127706910_6175308689600983530_n.jpg',
                  6,
                  1),
              postList(
                  'assets/uly.jpg',
                  'Ulyses Tadlas',
                  '1 hr ago',
                  'Ako nay new mid :)',
                  'assets/363800673_612673127706910_6175308689600983530_n.jpg',
                  6,
                  1),
              postList(
                  'assets/clyde.jpg',
                  'Clyde Abo-Abo',
                  '2 min ago',
                  'Good Students :)',
                  'assets/363800673_612673127706910_6175308689600983530_n.jpg',
                  6,
                  1),
            ]),
          ),
        ],
      ),
    );
  }
}
