import 'package:flutter/material.dart';

import 'package:flutter_application_1/about.dart';
import 'package:flutter_application_1/institutions/institution_page.dart';
import 'package:flutter_application_1/profile.dart';

import 'package:flutter_application_1/screens/SreenHome.dart';

import 'package:flutter_application_1/settings.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

var kColorScheme =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 207, 9, 108));

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {
        '/about': (context) => About(),
        '/profile': (context) => Profile(),
        '/settings': (context) => Settings(),
        '/institutions': (context) => InstitutionsPage()
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme().copyWith(
            backgroundColor: Color.fromARGB(255, 136, 7, 71),
            foregroundColor: kColorScheme.primaryContainer),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
              backgroundColor: kColorScheme.onPrimaryContainer,
              alignment: Alignment.center),
        ),
      ),
      home: ScreenHome(),
    );
  }
}
