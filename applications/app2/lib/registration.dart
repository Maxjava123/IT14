import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController cpasswordcontroller = TextEditingController();
  TextEditingController gendercontroller = TextEditingController();
  TextEditingController civilstatuscontroller = TextEditingController();
  TextEditingController birthdatecontroller = TextEditingController();
  late String errorMessage;
  late bool isError;
  @override
  void initState() {
    errorMessage = 'This is an Error!!';
    isError = false;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  var errortxtstyle = const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.red,
    letterSpacing: 1,
    fontSize: 18,
  );
  var txtstyle = const TextStyle(
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    fontSize: 38,
  );
  void checkRegister(
      name, username, password, cpassword, gender, civilstatus, birthdate) {
    setState(() {
      if (name == "") {
        errorMessage = "Please input your name!";
        isError = true;
      } else if (username == "") {
        errorMessage = "Please input your username!";
        isError = true;
      } else if (password == "") {
        errorMessage = "Please input your password!";
        isError = true;
      } else if (cpassword == "") {
        errorMessage = "Please input your Confirm password!";
        isError = true;
      } else if (password != cpassword) {
        errorMessage = "Both password must be the same!";
        isError = true;
      } else if (password == "") {
        errorMessage = "Please input your !";
        isError = true;
      } else if (gender == "") {
        errorMessage = "Please input your gender!";
        isError = true;
      } else if (civilstatus == "") {
        errorMessage = "Please input your civil status!";
        isError = true;
      } else if (birthdate == "") {
        errorMessage = "Please input your birthdate!";
        isError = true;
      } else {
        errorMessage = "";
        isError = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Form'),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SIGN IN',
                    style: txtstyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: namecontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter name',
                      prefixIcon: Icon(Icons.account_box),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: usernamecontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter username',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    obscureText: true,
                    controller: passwordcontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    obscureText: true,
                    controller: cpasswordcontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter confirm Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: gendercontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Gender',
                      prefixIcon: Icon(Icons.female),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: civilstatuscontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter civil status',
                      prefixIcon: Icon(Icons.social_distance),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: birthdatecontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter birthdate',
                      prefixIcon: Icon(Icons.calendar_month),
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
                      checkRegister(
                          namecontroller.text,
                          usernamecontroller.text,
                          passwordcontroller.text,
                          cpasswordcontroller.text,
                          gendercontroller.text,
                          civilstatuscontroller.text,
                          birthdatecontroller.text);
                    },
                    child: const Text('REGISTER'),
                  ),
                  (isError)
                      ? Text(
                          errorMessage,
                          style: errortxtstyle,
                        )
                      : Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
