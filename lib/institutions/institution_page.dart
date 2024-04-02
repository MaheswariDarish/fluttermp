import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/institutions/3_applied_science/appliedscience_list.dart';
import 'package:flutter_application_1/institutions/4_technical_hss/technical_list.dart';
import 'package:flutter_application_1/institutions/5_model_finishing_college/finishing_school_list.dart';
import 'package:flutter_application_1/institutions/6_regional_centres/regional_centre_list.dart';

import 'package:flutter_application_1/institutions/components/grid_card/grid_card.dart';

import 'package:flutter_application_1/institutions/1_engineering_colleges/engcollege_list.dart';

import 'package:flutter_application_1/institutions/institution_class.dart';
import 'package:flutter_application_1/institutions/2_poly_colleges/poly_college_list.dart';

class InstitutionsPage extends StatelessWidget {
  //Defined type of institutions

  final List<InstitutionObject> institutions = [
    InstitutionObject(name: 'Engineering   Colleges', page: EngCollegeList()),
    InstitutionObject(
        name: 'Model    Polytechnic College', page: PolyCollegeList()),
    InstitutionObject(
        name: 'College of Applied Science', page: AppliedScienceUniversities()),
    const InstitutionObject(
        name: 'Technical Higher Secondary School', page: TechnicalHSSList()),
    InstitutionObject(
        name: 'Model Finishing School', page: FinishingSchoolList()),
    InstitutionObject(name: 'Regional Centers', page: RegionalCentreList()),
    InstitutionObject(name: 'Extension/Study Centers', page: Placeholder()),
  ];

  InstitutionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Size of appbar
            const SizedBox(height: kToolbarHeight +54),

            //heading
            const Text(
              "IHRD Institutions",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: secondaryColor,
              ),
            ),

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
                  padding: EdgeInsets.symmetric(vertical: 8),
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
    );
  }
}
