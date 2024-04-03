import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/institutions/2_poly_colleges/components/PolyClgTile.dart';
//This dart file is used for displaying the list of engineering colleges of IHRD

//importing the applied_science_list
import 'package:flutter_application_1/college_list/AppliedScience/university_list3.dart';

//constants
import 'package:flutter_application_1/constants.dart';

//widget for displaying college name
import 'package:flutter_application_1/institutions/components/listview_card/listview_card.dart';

class ASUniversityList3 extends StatefulWidget {
  const ASUniversityList3({super.key});

  @override
  State<ASUniversityList3> createState() => _ASUniversityList3State();
}

class _ASUniversityList3State extends State<ASUniversityList3> {
  //Scroll Controller
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

 final List<String> imgurl = [
    'assets/engclgimg/mec.png',
    'assets/engclgimg/mec.png',
    'assets/engclgimg/mec.png',
    'assets/engclgimg/mec.png',
    'assets/engclgimg/mec.png',
    'assets/engclgimg/mec.png',
    'assets/engclgimg/mec.png',
    'assets/engclgimg/mec.png',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 137, 7, 57),
          iconTheme: const IconThemeData(color: Color.fromARGB(255, 246, 245, 245), size: 28),
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
                    "College of Applied Science",
                    style: TextStyle(
                      fontSize: mainheading,
                      fontWeight: mainheadingweight,
                      color: Colors.white,
                    ),
                  ),
                  centerTitle: true,
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: <Widget>[
                SizedBox(height: 10,),
                Text("Calicut University",
                style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.normal ,
                      color: secondaryColor,
                    ),),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: GridView.builder(
                        itemCount: applied_science_university3_list.length,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 16 / 4,
                                crossAxisCount: 1,
                                mainAxisSpacing: 20),
                        itemBuilder: (context, index) {
                          return PolyClgTile(
                              imagepath: imgurl[index],
                              name: applied_science_university3_list[index].name,
                            
                              page: applied_science_university3_list[index].page);
                        })),
              ],
            )),
      ),
    );
  }
}
