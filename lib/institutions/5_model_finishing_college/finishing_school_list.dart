import 'package:flutter/material.dart';
import 'package:flutter_application_1/college_list/Engineering/college_list.dart';
import 'package:flutter_application_1/college_list/FinishingCollege/college_list.dart';
import 'package:flutter_application_1/institutions/2_poly_colleges/components/PolyClgTile.dart';
//importing constants
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/institutions/components/listview_card/listview_card.dart';

class FinishingSchoolList extends StatefulWidget {
  const FinishingSchoolList({super.key});

  @override
  State<FinishingSchoolList> createState() => _FinishingSchoolListState();
}

class _FinishingSchoolListState extends State<FinishingSchoolList> {
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
  'assets/engclgimg/mec.png',];

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
          backgroundColor: const Color(0xFF920B41),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(

        ),
        child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Model Finishing School',
                    style: TextStyle(
                      fontSize: mainheading,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                //intro
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text(
                      "The Model Finishing School is a pioneering venture of the Government of  Kerala, set up with the purpose of enhancing employability of qualified youths from the state of Kerala. It is a joint initiative of the IT Department, GoK and the Institute of Human Resources Development (IHRD), with the support of industry-major Infosys. The first Model Finishing School started in 2008 at Science and Technology Museum Campus, Trivandrum and the second  at Jawaharlal Nehru International Stadium Kaloor, Kochi in 2010.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      )),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: finishing_school_list.length,
                      itemBuilder: (BuildContext context, int index) {
                        return PolyClgTile(
                          imagepath: imgurl[index],
                          name:finishing_school_list[index].name ,
                          page:finishing_school_list[index].page ,
                        );
                      }),
                ),
              ],
            )),
      ),
    );
  }
}
