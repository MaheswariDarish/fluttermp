import 'package:flutter/material.dart';

class StartingScreen extends StatefulWidget {
  State<StartingScreen> createState() {
    return _StartScreenState();
  }
}

class _StartScreenState extends State<StartingScreen> {
  List<Icon> nameicon = [
    const Icon(Icons.message, color: Colors.black, size: 30),
    const Icon(Icons.people, color: Colors.black, size: 30),
    const Icon(Icons.info_outline, color: Colors.black, size: 30),
    const Icon(Icons.school, color: Colors.black, size: 30),
    const Icon(Icons.how_to_reg, color: Colors.black, size: 30),
    const Icon(Icons.work_outline, color: Colors.black, size: 30),
  ];
  List names = [
    "Message",
    "Employment",
    "Public Notice",
    "Students Notice",
    "Tenders",
    "Admissions"
  ];

  Widget build(context) {
    return ListView(
      children: [
        const SizedBox(height: 50),
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
          height: 10,
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
        const SizedBox(height: 100),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            children: [
              GridView.builder(
                itemCount: names.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.1,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    height: 95,
                    width: 250,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2D5C4),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        //Center(
                        //child:
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 35, vertical: 5),
                          child: nameicon[index],
                        ),
                        // ),
                        Positioned(
                          bottom: 15,
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              names[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(height: 34),
      ],
    );
  }
}
