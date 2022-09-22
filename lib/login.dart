import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.00,
        centerTitle: true,
        actions: const [
          Icon(
            Icons.add_alarm,
          ),
          Icon(
            Icons.ac_unit_rounded,
          )
        ],
        title: const Text('Login'),
      ),
      body: Center(
        // ignore: unnecessary_const
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(50.00),
              child: Text(
                'Hello fellow human',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              padding: EdgeInsets.all(50.00),
              decoration: BoxDecoration(color: Colors.cyan),
            ),
            Container(
              child: Image.network(
                  'https://media.istockphoto.com/photos/venice-italy-and-the-famed-rialto-bridge-through-the-lens-at-dawn-pov-picture-id1348972401'),
              padding: EdgeInsets.all(50.00),
            )
          ],
        ),
      ),
      //Color(Colors.amber),
    );
  }
}