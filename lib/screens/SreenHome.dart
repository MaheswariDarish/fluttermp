import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
List<Icon> nameicon=[
  Icon(Icons.category,color: Colors.white,size:30),
  Icon(Icons.category,color: Colors.white,size:30),
  Icon(Icons.category,color: Colors.white,size:30),
  Icon(Icons.category,color: Colors.white,size:30),
];
List names=[
  "Public Notice",
  "Students Notice",
  "Tenders",
  "Admissions"
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15,left: 15,right:15,bottom:10),
            decoration: BoxDecoration(
              color:Color.fromARGB(146, 173, 80, 8),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: 
                    Text('         HOME',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                    
                    
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.dehaze_outlined)),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Container( 
          child: CircleAvatar(
            radius: 50, // This will be institute logo
            backgroundColor: const Color.fromARGB(255, 79, 10, 10), 
            
          ),
        ),
         Text("Organisation",
         textAlign: TextAlign.center,
         style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)
         ),
        SizedBox(height: 20),
        Padding(padding: EdgeInsets.only(top: 20,left:15,right: 15),
        child:Column(children: [
          GridView.builder(
            itemCount: names.length,
            shrinkWrap:true,
          physics:NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.1,
            ), itemBuilder:(context,index){ return Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical:5,horizontal: 15),
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                    color:Color.fromARGB(224, 53, 0, 0),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )
                  ),
                  child: Center(
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                        nameicon[index],
                          SizedBox(height: 10),
                          Text(
                            names[index],
                            style: TextStyle(color: Colors.white),
                          ),
                       ],)
                  ),
                )
              ],
            );})
        ],))

        ],
      ),
    );
  }
}

