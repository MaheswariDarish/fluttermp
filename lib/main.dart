import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/screens/about_screen.dart';
import 'package:flutter_application_1/institutions/institution_page.dart';

import 'package:flutter_application_1/api/notifications_api.dart';
import 'package:flutter_application_1/screens/SreenHome.dart';
import 'package:flutter_application_1/screens/rank_screen.dart';
import 'firebase_options.dart';
import 'package:flutter_application_1/settings.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
  //Authentication
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
        '/about': (context) => AboutScreen(),
        '/settings': (context) => Settings(),
        '/institutions': (context) => InstitutionsPage(),
        '/rank': (context) => RankScreen(),
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
