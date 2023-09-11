import 'package:flutter/material.dart';

class Page8 extends StatelessWidget {
  Page8({super.key});
  /* buildStar(int rating, int numReviews) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 1; i <= rating; i++)
            const Icon(
              Icons.star,
              color: Colors.yellow,
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
            '$numReviews Reviews ni',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
*/
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildIconTab(Icons.kitchen, 'PREP', '25 mins'),
          const SizedBox(
            width: 10,
          ),
          buildIconTab(Icons.timer, 'COOK', '1 hr'),
          const SizedBox(
            width: 10,
          ),
          buildIconTab(Icons.kitchen, 'FEEDS', '4-6'),
        ],
      );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Page8',
        ),
      ),
      body: Center(
        child:
        
         buildRowTabs(),
         
        
      ),
    );
  }
}
