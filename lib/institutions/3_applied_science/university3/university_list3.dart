import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          backgroundColor: const Color(0xFF1C8EE1),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: bgColor,
        ),
        child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Calicut University affiliated Colleges',
                    style: TextStyle(
                      fontSize: mainheading,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: applied_science_university3_list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Placeholder();
                    },
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
