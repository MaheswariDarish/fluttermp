import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Institutions/Options.dart';
import 'package:flutter_application_1/screens/NoticePage.dart';
import 'package:flutter_application_1/screens/SreenHome.dart';
import 'package:flutter_application_1/screens/StudentNotice.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home:OptionsPage(),
    );
  }
}

