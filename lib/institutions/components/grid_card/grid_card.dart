import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';

import 'package:page_transition/page_transition.dart';
//importing constants.dart
import 'package:flutter_application_1/constants.dart';

class CardGridView extends StatelessWidget {
  final String name;
  final Widget page;
  const CardGridView({super.key, required this.name, required this.page});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.rightToLeft,
            child: page,
            duration: const Duration(milliseconds: 250),
            reverseDuration: const Duration(microseconds: 500),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  maxLines: 3,
                  softWrap: true,
                  style: const TextStyle(
                    fontSize: 17,
                    color: secondaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
