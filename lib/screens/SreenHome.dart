import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  List<Icon> nameicon = [
    Icon(Icons.info_outline, color: Colors.white, size: 30),
    Icon(Icons.school, color: Colors.white, size: 30),
    Icon(Icons.how_to_reg, color: Colors.white, size: 30),
    Icon(Icons.work_outline, color: Colors.white, size: 30),
    Icon(Icons.work_outline, color: Colors.white, size: 30),
    Icon(Icons.work_outline, color: Colors.white, size: 30)
  ];
  List names = [
    "Public Notice",
    "Students Notice",
    "Tenders",
    "Admissions",
    "Messages",
    "Employment"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: Color.fromARGB(146, 173, 80, 8),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.dehaze_outlined),
                    ),
                    Expanded(
                      child: Text(
                        'HOME',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: CircleAvatar(
              radius: 20,
              backgroundColor: const Color.fromARGB(255, 79, 10, 10),
            ),
          ),
          Text(
            "IHRD",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: names.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      height: 90,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(224, 53, 0, 0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          
                            Positioned(

                              left: 2.5,
                              right:2.5,
                             child: nameicon[index]),
                        
                          Positioned(
                            bottom: 10,
                            left: 0,
                            right: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                names[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
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
        ],
      ),
    );
  }
}
