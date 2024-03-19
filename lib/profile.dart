import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            height: 120,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.pngimg.me/thumb/f/720/m2H7H7K9m2Z5G6i8.jpg',
                  scale: 0.7),
              radius: 50,
            ),
          ),
          Text(
            "Mr Babu",
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
