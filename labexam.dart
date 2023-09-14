import 'package:flutter/material.dart';

class Labexam extends StatelessWidget {
  Labexam({super.key});

  var txtbold = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  var txtBold2 = const TextStyle(
    fontSize: 33,
    fontWeight: FontWeight.bold,
  );
  var txtBold3 = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );

  buildStar(
    int rating,
  ) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 1; i <= rating; i++)
            const Icon(
              Icons.star,
              color: Colors.yellow,
              size: 15,
            ),
          for (int i = 1; i <= (5 - rating); i++)
            const Icon(
              Icons.star,
              size: 15,
            ),
        ],
      );
  buttonActions(iconVal, txtButton) => TextButton.icon(
        onPressed: () {},
        icon: Icon(
          iconVal,
          color: Colors.grey,
        ),
        label: Text(
          txtButton,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 99, 98, 98),
          ),
        ),
      );
  products(picture, prodname, price, location, sold) => Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              picture,
              width: 195,
              height: 160,
            ),
            Padding(
              // Wrap the Text widget with a Padding widget
              padding: const EdgeInsets.only(
                  left: 8.0), // Add 8.0 pixels of padding to the left
              child: Text(
                prodname,
                style: txtbold,
              ),
            ),
            Padding(
              // Wrap the Text widget with a Padding widget
              padding: const EdgeInsets.only(
                  left: 8.0), // Add 8.0 pixels of padding to the left
              child: Text(
                price,
                style: txtBold2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildStar(3), // Include the buildStar widget
                Text(
                  sold,
                ),
              ],
            ),
            Row(children: [
              Icon(Icons.location_on,
                  color: Colors.grey), // Display the location icon
              Text(location), // Display the location as text
            ]),
            Container(
              child: Row(
                children: [
                  buttonActions(
                    Icons.thumb_up,
                    'LIKE',
                  ),
                  buttonActions(
                    Icons.visibility,
                    'VIEW',
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LAB EXAM'),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              products(
                'assets/watch.jpg',
                'Rolex Watch',
                '₱400',
                'Davao City',
                '50.2K sold',
              ),
              products(
                'assets/slipper.jpg',
                'Slippers',
                '₱48',
                'Tagum City davao del',
                '50.2K sold',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              products(
                'assets/watch.jpg',
                'Rolex Watch',
                '₱400',
                'Davao City',
                '50.2K sold',
              ),
              products(
                'assets/slipper.jpg',
                'Slippers',
                '₱48',
                'Tagum City davao del',
                '50.2K sold',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              products(
                'assets/watch.jpg',
                'Rolex Watch',
                '₱400',
                'Davao City',
                '50.2K sold',
              ),
              products(
                'assets/slipper.jpg',
                'Slippers',
                '₱48',
                'Tagum City davao del',
                '50.2K sold',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
