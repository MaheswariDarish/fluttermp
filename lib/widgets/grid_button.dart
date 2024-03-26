import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  const GridButton(
      {super.key,
      required this.icon,
      required this.title,
      required this.screen,
      required this.openScreen});

  final IconData icon;
  final String title;
  final Widget screen;
  final void Function(Widget screen) openScreen;

  @override
  Widget build(context) {
    return InkWell(
      onTap: () {
        openScreen(screen);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).appBarTheme.foregroundColor,
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Icon(icon),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
