import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/gridScreens/NoticePage.dart';
import 'package:flutter_application_1/screens/ScreenMap.dart';
import 'package:flutter_application_1/screens/ScreenNotifications.dart';
import 'package:flutter_application_1/screens/search/search_page.dart';
  import 'package:flutter_application_1/screens/StartingScreen.dart';
import 'package:flutter_application_1/widgets/drawer_widget.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  Widget? activeScreen;
  String? screenNow = "StartingScreen";
  var pageIndex = 0;

  @override
  void initState() {
    activeScreen = StartingScreen();
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      if (index == 0) {
        activeScreen = StartingScreen();
        pageIndex = index;
      } else if (index == 1) {
        activeScreen = ScreenNotifications();
        pageIndex = index;
      } else if (index == 2) {
        activeScreen = ScreenMap();
        pageIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screenNow == "StartingScreen" ? "Home" : "IHRD"),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white, size: 28),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => SearchPage(),
                    transitionDuration: Duration(milliseconds: 500),
                    transitionsBuilder: (_, a, __, c) =>
                        FadeTransition(opacity: a, child: c),
                  ),
                );
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),],
      ),
      drawer: CustomDrawer(),
      body: activeScreen,
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        onTap: _selectPage,
        currentIndex: pageIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_add), label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_pin), label: 'Location'),
              
        ],
      ),
    );
  }
}
