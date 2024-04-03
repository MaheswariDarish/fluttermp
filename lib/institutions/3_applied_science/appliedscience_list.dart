import 'package:flutter/material.dart';

//Importing the constants.dart file
import 'package:flutter_application_1/constants.dart';

//imported Kerala University
import 'package:flutter_application_1/institutions/3_applied_science/university1/university_list1.dart';
//imported Mahatma Gandhi University
import 'package:flutter_application_1/institutions/3_applied_science/university2/university_list2.dart';
//imported Calicut University
import 'package:flutter_application_1/institutions/3_applied_science/university3/university_list3.dart';
//imported Kannur University
import 'package:flutter_application_1/institutions/3_applied_science/university4/university_list4.dart';

//importing grid_card.dart file
import 'package:flutter_application_1/institutions/components/grid_card/grid_card.dart';

//importing InstitutionObject
import 'package:flutter_application_1/institutions/institution_class.dart';

class AppliedScienceUniversities extends StatelessWidget {
  //Defined type of institutions

  final List<InstitutionObject> universities = [
    InstitutionObject(
        name: 'University of Kerala affiliated Colleges',
        page: ASUniversityList1()),
    InstitutionObject(
        name: 'Mahatma Gandhi University affiliated Colleges',
        page: ASUniversityList2()),
    InstitutionObject(
        name: 'Calicut University affiliated Colleges',
        page: ASUniversityList3()),
    InstitutionObject(
        name: 'Kannur University affiliated Colleges',
        page: ASUniversityList4()),
  ];

  AppliedScienceUniversities({super.key});

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 24,
            ),
            onPressed: () {
              // Navigate back when the back button is pressed
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Color.fromARGB(255, 123, 5, 78),
        ),
      ),
      //body of the page
      body: Container(
        decoration: const BoxDecoration(
          gradient: bgColor,
        ),
        child: Column(
          children: [
            //Size of appbar
            const SizedBox(height: kToolbarHeight),
            const Text(
              "Colleges of Applied Science",
              style: TextStyle(
                fontSize: mainheading,
                fontWeight: mainheadingweight,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                  "Fourty Five Colleges of Applied Science institutions under IHRD.  The colleges is with the affiliation of University of Kerala, Mahatma Gandhi University, Calicut University and Kannur University.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  )),
            ),
            const SizedBox(height: 20),

            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              padding: const EdgeInsets.symmetric(horizontal: 25),
              color: Colors.transparent,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 30,
                  childAspectRatio: 1.5,
                ),
                itemCount: universities.length,
                itemBuilder: (context, index) {
                  return CardGridView(
                      name: universities[index].name,
                      page: universities[index].page);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
