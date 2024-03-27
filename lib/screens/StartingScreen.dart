import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_application_1/data/grid_items_data.dart';

import 'package:flutter_application_1/widgets/grid_button.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({super.key});
  State<StartingScreen> createState() {
    return _StartScreenState();
  }
}

class _StartScreenState extends State<StartingScreen> {
  void openScreen(Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => screen));
  }

  Widget build(context) {
    return Column(
      children: [
        const SizedBox(height: 35),
        Container(
          child: CircleAvatar(
            radius: 70,
            backgroundColor: Theme.of(context).appBarTheme.foregroundColor,
            child: Image.asset(
              'assets/images/ihrd_logo.png',
              fit: BoxFit.contain,
              height: 90,
              width: 90,
              scale: 1,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "IHRD",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF060033),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 150),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.5,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              children: [
                for (final item in gridItemsData)
                  GridButton(
                    icon: item.icon,
                    title: item.title,
                    screen: item.screen,
                    openScreen: openScreen,
                  )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
