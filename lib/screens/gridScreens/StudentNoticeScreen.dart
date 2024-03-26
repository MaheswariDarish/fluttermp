import 'package:flutter/material.dart';

class StudentNoticeScreen extends StatelessWidget {
  const StudentNoticeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Students Notice'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Student Notice'),
      ),
    );
  }
}
