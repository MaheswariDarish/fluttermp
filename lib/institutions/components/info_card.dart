import 'package:flutter/material.dart';

class InfoCard extends StatefulWidget {
  final Widget content;
  final String title;
  final Icon? icon;
  const InfoCard(
      {super.key, required this.content, required this.title, this.icon});

  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  BoxDecoration cardBg = BoxDecoration(
    color: Colors.white,
    boxShadow: const [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 9,
        offset: Offset(0, 8),
      ),
    ],
    borderRadius: const BorderRadius.all(Radius.circular(20)),
    border: Border.all(
      color: const Color.fromARGB(83, 0, 0, 0),
      width: 0.1,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 7, bottom: 7, right: 25, left: 25),
      padding: const EdgeInsets.all(28),
      decoration: cardBg,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              widget.icon ?? const Placeholder(),
              const SizedBox(width: 8),
              Text(
                widget.title,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 20),
          widget.content,
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
