import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/institutions/2_poly_colleges/components/PolyClgTile.dart';
import 'package:flutter_application_1/institutions/components/listview_card/listview_card.dart';
import 'package:flutter_application_1/institutions/institution_class.dart';
import 'package:flutter_application_1/institutions/2_poly_colleges/components/poly_page.dart';
import 'package:flutter_application_1/college_list/Polytechnic/college_list.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/institutions/institution_class.dart';

class PolyCollegeList extends StatefulWidget {
  @override
  State<PolyCollegeList> createState() => _PolyCollegeListState();
}

class _PolyCollegeListState extends State<PolyCollegeList> {
   ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      //Scroll to top when the page is loaded
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollController.animateTo(0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    final List<InstitutionObject> institutions = polyList.map((e) {
      return InstitutionObject(name: e.name, page: PolyPage(college: e));
    }).toList();
  final List <String> imgurl=[
    'assets/engclgimg/mec.png',
    'assets/engclgimg/mec.png',
    'assets/engclgimg/mec.png',
    'assets/engclgimg/mec.png',
    'assets/engclgimg/mec.png',
    'assets/engclgimg/mec.png',
    'assets/engclgimg/mec.png',
    'assets/engclgimg/mec.png',
    'assets/engclgimg/mec.png',
   ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Color.fromARGB(255, 243, 175, 175), size: 28),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              // Navigate back when the back button is pressed
              Navigator.of(context).pop();
            },
          ),
          title: Text(
                    "Polytechnic Colleges",
                    style: TextStyle(
                      fontSize: mainheading,
                      fontWeight: mainheadingweight,
                      color: secondaryColor,
                    ),
                  ),
                  centerTitle: true,
        ),
      ),
      body:Container(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: GridView.builder(
                        itemCount: institutions.length,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 16 / 4,
                                crossAxisCount: 1,
                                mainAxisSpacing: 20),
                        itemBuilder: (context, index) {
                          return PolyClgTile(
                              imagepath: imgurl[index],
                              name: institutions[index].name,
                             
                              page: institutions[index].page);
                        })),
              ],
            )),
      ),
    );
  }
}
