import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/gridScreens/NoticePage.dart';
import 'package:flutter_application_1/screens/ScreenMap.dart';
import 'package:flutter_application_1/screens/ScreenNotifications.dart';

  import 'package:flutter_application_1/screens/StartingScreen.dart';

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
      ),
      drawer: Drawer(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                color: Theme.of(context)
                    .appBarTheme
                    .backgroundColor!
                    .withOpacity(0.8),
                child: ListTile(
                  title: const Text(
                    "About",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/about');
                  },
                ),
              ),
              Container(
                color: Theme.of(context)
                    .appBarTheme
                    .backgroundColor!
                    .withOpacity(0.8),
                child: ListTile(
                  title: const Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.pushNamed(context, '/profile');
                  },
                ),
              ),
              Container(
                color: Theme.of(context)
                    .appBarTheme
                    .backgroundColor!
                    .withOpacity(0.8),
                child: ListTile(
                  title: const Text(
                    "Settings",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/settings');
                  },
                ),
              ),
              Container(
                color: Theme.of(context)
                    .appBarTheme
                    .backgroundColor!
                    .withOpacity(0.8),
                child: ListTile(
                  title: const Text(
                    "Institutions",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/institutions');
                  },
                ),
              )
            ],
          )),
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
              icon: Icon(Icons.location_pin), label: 'Location')
        ],
      ),
    );
  }
}
