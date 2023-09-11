import 'package:flutter/material.dart';

class Page7 extends StatelessWidget {
  Page7({super.key});

  buildStar(int rating, int numReviews) => Row(
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
            '$numReviews Reviews',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Page7',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildStar(3, 69),
          ],
        ),
      ),
    );
  }
}
