import 'package:flutter/material.dart';

class TendersScreen extends StatelessWidget {
  const TendersScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tenders'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Tenders'),
      ),
    );
  }
}
