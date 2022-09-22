import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sanas App',
          style: TextStyle(fontFamily: 'Lato'),
        ),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(30.0),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
            ),
            Container(
              height: 92.00,
              width: 92.00,
              child: Image.asset(
                "assets/logincon.png",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: userNameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your Username',
                    labelText: 'User Name',
                    suffix: Icon(Icons.account_circle_rounded)),
              ),
            ), // Username
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Password',
                  labelText: 'Password',
                ),
              ),
            ), //Password
            ElevatedButton(
                onPressed: () {
                  final userName = userNameController.text;
                  print("username = $userName");
                  final passWord = passwordController.text;
                  print("password = $passWord");
                  if (userName == "admin" && passWord == "12345") {
                    print("login successfully");
                  } else {
                    print("Password is incorrect");
                  }
                },
                child: Text("Login"))
          ],
        ),
      )),
    );
  }
}
