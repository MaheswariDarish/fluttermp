import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/institutions/3_applied_science/appliedscience_list.dart';
import 'package:flutter_application_1/institutions/4_technical_hss/technical_list.dart';
import 'package:flutter_application_1/institutions/5_model_finishing_college/finishing_school_list.dart';
import 'package:flutter_application_1/institutions/6_regional_centres/regional_centre_list.dart';
import 'package:flutter_application_1/institutions/1_engineering_colleges/engcollege_list.dart';
import 'package:flutter_application_1/institutions/institution_class.dart';
import 'package:flutter_application_1/institutions/2_poly_colleges/poly_college_list.dart';
import 'package:flutter_application_1/widgets/drawer_widget.dart';
class InstitutionsPage extends StatefulWidget {
  const InstitutionsPage({Key? key}) : super(key: key);

  @override
  _InstitutionsPageState createState() => _InstitutionsPageState();
}

class _InstitutionsPageState extends State<InstitutionsPage> {
  Widget? activeScreen;
  String? screenNow = "institution_page";
  var pageIndex = 0;

  @override
  void initState() {
    super.initState();
  }

 void _selectPage(int index) {
  setState(() {
    pageIndex = index; // Update the pageIndex variable

    if (index == 0) {
      
              // Navigate back when the back button is pressed
              Navigator.of(context).pop();
          
    } 
  });
}

  //Defined type of institutions
  final List<InstitutionObject> institutions = [
    InstitutionObject(name: 'Engineering Colleges', page: EngCollegeList()),
    InstitutionObject(name: 'Model Polytechnic College', page: PolyCollegeList()),
    InstitutionObject(name: 'College of Applied Science', page: AppliedScienceUniversities()),
    const InstitutionObject(name: 'Technical Higher Secondary School', page: TechnicalHSSList()),
    InstitutionObject(name: 'Model Finishing School', page: FinishingSchoolList()),
    InstitutionObject(name: 'Regional Centers', page: RegionalCentreList()),
    InstitutionObject(name: 'Extension/Study Centers', page: Placeholder()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          elevation: 0,
          backgroundColor:  Color.fromARGB(255, 133, 25, 74),
          iconTheme: const IconThemeData(color: Color.fromARGB(255, 243, 175, 175), size: 28),
          
          title: Text(
                    "IHRD INSTITUTIONS",
                    style: TextStyle(
                      fontSize: mainheading,
                      fontWeight: mainheadingweight,
                      color: Colors.white,
                    ),
                  ),
                  centerTitle: true,
        ),
      ),drawer:CustomDrawer(),
     backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Size of appbar
            const SizedBox(height: 50),

            //heading
            

            //gridview
            ListView.builder(
              itemCount: institutions.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              
              itemBuilder: (context, index) {
                // return CardGridView(
                //   name: institutions[index].name,
                //   page: institutions[index].page,
                // );
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                  child:InkWell(
  onTap: () {
     Navigator.push(
        context,
         MaterialPageRoute(
          builder: (context) => institutions[index].page,
        ),
      );
  },
  child: Container(
    height:50,
    decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(10), 
      color: Color.fromARGB(255, 242, 233, 233), 
     ),
    child: Row(
      children: [
        Expanded(
          child: Center(child: Text('${institutions[index].name}',style:TextStyle(fontWeight: FontWeight.w500,
                ))), 
        ),
        Icon(Icons.arrow_forward),
      ],
    ),
  ),)
);

              },
            ),
          ],
        ),
      ),
    
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        currentIndex: pageIndex,
        selectedItemColor: Color.fromARGB(255, 124, 11, 94),
        onTap: _selectPage,
      ),
    );
  }
}
