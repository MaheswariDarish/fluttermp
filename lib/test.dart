import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/grid_items_data.dart';
import 'package:flutter_application_1/models/grid_item.dart';
import 'package:flutter_application_1/widgets/grid_button.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  void openScreen(Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => screen));
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
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
    );
  }
}
