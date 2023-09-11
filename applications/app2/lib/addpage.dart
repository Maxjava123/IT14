import 'package:flutter/material.dart';

class Addpage extends StatefulWidget {
  Addpage({Key? key}) : super(key: key);

  @override
  _AddpageState createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
  TextEditingController value1control = TextEditingController();
  TextEditingController value2control = TextEditingController();

  var output;

  var txtstyle = const TextStyle(
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    fontSize: 18,
  );

  @override
  void calculate(val1, val2, type) {
    setState(() {
      if (type == "add") {
        output = val1 + val2;
      } else if (type == "sub") {
        output = val1 - val2;
      } else if (type == "mul") {
        output = val1 * val2;
      } else if (type == "div") {
        output = val1 / val2;
      } else {
        output = null; // Change this line
      }
    });
  }

  // @override
  // void initState() {
  //   sum = 0;
  //   super.initState();
  // }

  @override
  void dispose() {
    value1control.dispose();
    value2control.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ADD & SUB'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: value1control,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.numbers),
                  labelText: 'Enter value 1',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: value2control,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.numbers),
                  labelText: 'Enter value 2',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          minimumSize: const Size.fromHeight(50),
                        ),
                        onPressed: () {
                          calculate(
                            int.parse(value1control.text),
                            int.parse(value2control.text),
                            "add",
                          );
                        },
                        child: const Text('ADD'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: const Size.fromHeight(50),
                        ),
                        onPressed: () {
                          calculate(
                            int.parse(value1control.text),
                            int.parse(value2control.text),
                            "sub",
                          );
                        },
                        child: const Text('SUB'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          minimumSize: const Size.fromHeight(50),
                        ),
                        onPressed: () {
                          calculate(
                            int.parse(value1control.text),
                            int.parse(value2control.text),
                            "mul",
                          );
                        },
                        child: const Text('MUL'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          minimumSize: const Size.fromHeight(50),
                        ),
                        onPressed: () {
                          calculate(
                            int.parse(value1control.text),
                            int.parse(value2control.text),
                            "div",
                          );
                        },
                        child: const Text('DIV'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('OUTPUT: '),
                      Text(
                        '$output',
                        style: txtstyle,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
