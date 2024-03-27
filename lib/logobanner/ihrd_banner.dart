import 'package:flutter/material.dart';

class BannerImage extends StatefulWidget {
  const BannerImage({super.key});

  @override
  State<BannerImage> createState() => _BannerImageState();
}

class _BannerImageState extends State<BannerImage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                  image: AssetImage('assets/ihrd_logo.png'),
                  width: MediaQuery.of(context).size.width * 0.16),
              Column(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: Text(
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple),
                          textAlign: TextAlign.center,
                          "Institute of Human Resources Development")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.55,
                      child: const Text(
                          style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple),
                          textAlign: TextAlign.center,
                          "Government of Kerala")),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
