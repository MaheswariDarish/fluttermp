import 'package:flutter/material.dart';

class GridItem {
  GridItem(
      {required this.id,
      required this.icon,
      required this.title,
      required this.screen});
  final String id;
  final IconData icon;
  final String title;
  final Widget screen;
}
