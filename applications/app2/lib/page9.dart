import 'package:flutter/material.dart';

class Page9 extends StatelessWidget {
  Page9({super.key});

  buildIconTab(iconVal, title, time) =>
      Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          iconVal,
          color: Colors.green,
          size: 50,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          time,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ]);

  buildRowTabs() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildIconTab(Icons.kitchen, 'PREP', '25 mins'),
          buildIconTab(Icons.timer, 'COOK', '1 hr'),
          buildIconTab(Icons.restaurant, 'FEEDS', '4-6'),
        ],
      );

  buildColumn() => Column(
        children: [
          Image.asset('assets/pavlova.jpeg'),
          SizedBox(
            height: 15,
          ),
          Text(
            'Strawberry Pavlova',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 2,
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Text(
              description,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      );
  buildStar(int rating, int numReviews) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 1; i <= rating; i++)
            const Icon(
              Icons.star,
              color: Colors.green,
              size: 24,
            ),
          for (int i = 1; i <= (5 - rating); i++)
            const Icon(
              Icons.star,
              size: 24,
            ),
          const SizedBox(
            width: 20,
          ),
          Text(
            '$numReviews Reviews',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );

  String description =
      'Pavlova is a merigue-based dessert named after the Russian'
      'Ballerina Aanna Pavlova. Pavlova feature a crisp crust and soft, light inside'
      'topped with fruit and whipped cream.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Page9',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            buildColumn(),
            SizedBox(
              height: 20,
            ),
            buildStar(3, 69),
            SizedBox(
              height: 30,
            ),
            buildRowTabs(),
          ],
        ),
      ),
    );
  }
}
