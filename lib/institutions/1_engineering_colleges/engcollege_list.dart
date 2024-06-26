import 'package:flutter/material.dart';

//This dart file is used for displaying the list of engineering colleges of IHRD
import 'package:flutter_application_1/institutions/2_poly_colleges/components/PolyClgTile.dart';
//importing the engineering_college_list
import 'package:flutter_application_1/college_list/Engineering/college_list.dart';
import 'package:flutter_application_1/colors.dart';

//constants
import 'package:flutter_application_1/constants.dart';

//widget for displaying college name
import 'package:flutter_application_1/institutions/components/listview_card/listview_card.dart';

class EngCollegeList extends StatefulWidget {
  const EngCollegeList({super.key});

  @override
  State<EngCollegeList> createState() => _EngCollegeListState();
}

class _EngCollegeListState extends State<EngCollegeList> {
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

  final List<String> website_list = [
    'https://www.mec.ac.in/',
    'https://www.ceconline.edu/',
    'https://www.ceadoor.ihrd.ac.in/',
    'https://www.cek.ac.in/',
    'https://www.cecherthala.ac.in/',
    'https://www.ceknpy.ac.in/',
    'https://cekottarakkara.ihrd.ac.in/',
    'http://www.ceattingal.ac.in/',
    'https://www.cepoonjar.ac.in/',
  ];
   final List <String> imgurl=[
    'assets/engclgimg/mec.png',
    'assets/engclgimg/cec.png',
    'assets/engclgimg/cea.png',
    'assets/engclgimg/kp.png',
    'assets/engclgimg/ceca.png',
    'assets/engclgimg/cek.png',
    'assets/engclgimg/ko.png',
    'assets/engclgimg/at.png',
    'assets/engclgimg/pjr.png',
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 126, 32, 76),
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
                    "Engineering Colleges",
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
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: GridView.builder(
                        itemCount: engineering_college_list.length,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 16 / 4,
                                crossAxisCount: 1,
                                mainAxisSpacing: 20),
                        itemBuilder: (context, index) {
                          return PolyClgTile(
                              imagepath: imgurl[index],
                              name: engineering_college_list[index].name,
                              //websiteURL: website_list[index],
                              page: engineering_college_list[index].page);
                        })),
              ],
            )),
      ),
    );
  }
}
