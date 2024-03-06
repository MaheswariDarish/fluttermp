import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/screens/SreenHome.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

var kColorScheme = ColorScheme.fromSeed(seedColor: const Color(0xffF23A29));

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
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
