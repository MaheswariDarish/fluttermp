import 'package:flutter/material.dart';

class AdmissionsScreen extends StatelessWidget {
  const AdmissionsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admissions'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Admissions'),
      ),
    );
  }
}
