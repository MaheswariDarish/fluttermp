import 'package:flutter/material.dart';
import 'package:flutter_application_1/college_list/RegionalCentre/RC_list.dart';

//This dart file is used for displaying the list of engineering colleges of IHRD

//importing the regionalCentreList
import 'package:flutter_application_1/institutions/2_poly_colleges/components/PolyClgTile.dart';
//constants
import 'package:flutter_application_1/constants.dart';

//widget for displaying college name
import 'package:flutter_application_1/institutions/components/listview_card/listview_card.dart';

class RegionalCentreList extends StatefulWidget {
  const RegionalCentreList({super.key});

  @override
  State<RegionalCentreList> createState() => _RegionalCentreListState();
}

class _RegionalCentreListState extends State<RegionalCentreList> {
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
    
  ];
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
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          //gradient: bgColor,
        ),
        child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Schools',
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
                    itemCount: regionalCentreList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PolyClgTile(
                          imagepath: imgurl[index],
                          name:regionalCentreList[index].name ,
                          page:regionalCentreList[index].page ,
                        );
                    },
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
