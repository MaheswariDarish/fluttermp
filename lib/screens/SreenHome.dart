import 'package:flutter/material.dart';
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

  @override
  void initState() {
    activeScreen = StartingScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screenNow == "StartingScreen" ? "Home" : "IHRD"),
        centerTitle: true,
      ),
      drawer: const Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [],
        ),
      ),
      body: activeScreen,
      bottomNavigationBar: BottomAppBar(
        shadowColor: Colors.black,
        child: Container(
          height: 80,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                padding: EdgeInsets.all(10),
                onPressed: () {
                  setState(() {
                    screenNow = "StartingScreen";
                    activeScreen = StartingScreen();
                  });
                },
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              IconButton(
                padding: EdgeInsets.all(10),
                onPressed: () {
                  setState(() {
                    screenNow = "ScreenNotification";
                    activeScreen = ScreenNotifications();
                  });
                },
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
              IconButton(
                padding: EdgeInsets.all(10),
                onPressed: () {
                  setState(() {
                    screenNow = "ScreenMap";
                    activeScreen = ScreenMap();
                  });
                },
                icon: const Icon(
                  Icons.location_pin,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
