import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About page'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Our Wonderful team'),
      ),
    );
  }
}
