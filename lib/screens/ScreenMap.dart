import "package:flutter/material.dart";

class ScreenMap extends StatefulWidget {
  ScreenMap({super.key});

  State<ScreenMap> createState() {
    return _ScreenMapState();
  }
}

class _ScreenMapState extends State<ScreenMap> {
  @override
  Widget build(context) {
    return const Center(
      child: Text("Map"),
    );
  }
}
