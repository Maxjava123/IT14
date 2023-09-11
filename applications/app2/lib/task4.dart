import 'package:flutter/material.dart';

class Task4 extends StatelessWidget {
  Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DEMO TIME ',
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      // ignore: prefer_const_constructors
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.download,
              size: 24,
            ),
            label: const Text('Download'),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.download,
              size: 24,
            ),
            label: const Text('Download'),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.download,
              size: 24,
            ),
            label: const Text('Download'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Download'),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.download,
                  size: 24,
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
            ),
            child: const Text('Pill Button'),
            onPressed: () {},
          ),
          SizedBox.fromSize(
            size: const Size(56, 56),
            child: ClipOval(
              child: Material(
                color: Colors.blue,
                child: InkWell(
                    splashColor: Colors.green,
                    onTap: () {},
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                        Text(
                          'BUY',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 240,
              height: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue[200],
              ),
              child: const Text('Button'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton.extended(
            label:
                const Text('Download', style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.black,
            icon: const Icon(
              Icons.download,
              size: 24,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 100,
            width: 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  side: const BorderSide(
                      width: 3, color: Color.fromARGB(255, 178, 120, 120)),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(30)),
                  padding: const EdgeInsets.all(20)),
              onPressed: () {},
              child: const Text(
                'Elevated Button',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      )),
    );
  }
}
