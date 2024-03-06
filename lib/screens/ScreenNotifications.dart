import "package:flutter/material.dart";

class ScreenNotifications extends StatefulWidget {
  ScreenNotifications({super.key});

  State<ScreenNotifications> createState() {
    return _ScreenNotificationsState();
  }
}

class _ScreenNotificationsState extends State<ScreenNotifications> {
  @override
  Widget build(context) {
    return const Center(
      child: Text("Notifications"),
    );
  }
}
