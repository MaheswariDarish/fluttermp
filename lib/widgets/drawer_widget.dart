import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 20),
          DrawerItem(
            title: "About",
            routeName: '/about',
          ),
          DrawerItem(
            title: "Profile",
            routeName: '/profile',
          ),
          DrawerItem(
            title: "Settings",
            routeName: '/settings',
          ),
          DrawerItem(
            title: "Institutions",
            routeName: '/institutions',
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final String routeName;

  const DrawerItem({Key? key, required this.title, required this.routeName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).appBarTheme.backgroundColor!.withOpacity(0.8),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, routeName);
        },
      ),
    );
  }
}
