import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Icon(
            Icons.account_circle_rounded,
            size: 35,
            color: Colors.blue,
          ),
        ],
        title: Text('Login'),
      ),

      body: Center(
        child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(30.0),
            child: Text(
              'welcome',
              

              style: TextStyle(fontSize: 20,color: Colors.pink ),
              ),
          ),Padding(padding: EdgeInsets.all(2.0),),
          Image.network("https://us.123rf.com/450wm/rawpixel/rawpixel1603/rawpixel160308149/53554297-learn-learning-education-knowledge-wisdom-studying-concept.jpg?ver=6"),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              

            ),
          ),
          ElevatedButton(onPressed: (){}, child: Text("Search"))
 
        ],
      )),
      
    );
  }
}
