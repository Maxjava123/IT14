import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  String errorMessage = '';
  bool isError = false;

  @override
  void initState() {
    super.initState();
    errorMessage = "This is an error";
    isError = false;
  }

  void checkLogin(username, password) {
    setState(() {
      if (username == "") {
        errorMessage = "Please input your username!";
        isError = true;
      } else if (password == "") {
        errorMessage = "Please input your password!";
        isError = true;
      } else {
        errorMessage = "";
        isError = false;
      }
    });
  }

  @override
  void dispose() {
    usernamecontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  var txtstyle = const TextStyle(
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    fontSize: 38,
  );
  var errortxtstyle = const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.red,
    letterSpacing: 2,
    fontSize: 18,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DEMO TIME',
         ),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SIGN UP',
                style: txtstyle,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: usernamecontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Username',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                controller: passwordcontroller,
                // obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Password',
                  prefixIcon:
                      Icon(Icons.lock), // Use Icons.lock or an appropriate icon
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () {
                  checkLogin(
                    usernamecontroller.text,
                    passwordcontroller.text,
                  );
                },
                child: const Text('LOGIN'),
              ),
              (isError)
                  ? Text(
                      errorMessage,
                      style: errortxtstyle,
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
