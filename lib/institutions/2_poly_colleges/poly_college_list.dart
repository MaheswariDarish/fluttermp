import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/institutions/components/listview_card/listview_card.dart';
import 'package:flutter_application_1/institutions/institution_class.dart';
import 'package:flutter_application_1/institutions/2_poly_colleges/components/poly_page.dart';
import 'package:flutter_application_1/college_list/Polytechnic/college_list.dart';

class PolyCollegeList extends StatelessWidget {
  PolyCollegeList({super.key});

  @override
  Widget build(BuildContext context) {
    //List of polytechnic colleges
    final List<InstitutionObject> institutions = polyList.map((e) {
      return InstitutionObject(name: e.name, page: PolyPage(college: e));
    }).toList();

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: bgColor,
        ),
        child: Column(
          children: [
            //Size of appbar
            SizedBox(height: AppBar().preferredSize.height),
            const Text(
              "Polytechnic Colleges",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),

            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              color: Colors.transparent,
              child: ListView.builder(
                  itemCount: institutions.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Text('.'),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
