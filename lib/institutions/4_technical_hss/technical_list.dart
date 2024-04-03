import 'package:flutter/material.dart';
import 'package:flutter_application_1/college_list/TechnicalHSS/school_list.dart';
import 'package:flutter_application_1/institutions/2_poly_colleges/components/PolyClgTile.dart';
//This dart file is used for displaying the list of engineering colleges of IHRD

//importing the technical_hss_list

//constants
import 'package:flutter_application_1/constants.dart';

//widget for displaying college name
import 'package:flutter_application_1/institutions/components/listview_card/listview_card.dart';

class TechnicalHSSList extends StatefulWidget {
  const TechnicalHSSList({super.key});

  @override
  State<TechnicalHSSList> createState() => _TechnicalHSSListState();
}

class _TechnicalHSSListState extends State<TechnicalHSSList> {
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
                    "Technical HSS",
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
                
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                    child: GridView.builder(
                        
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 16 / 4,
                                crossAxisCount: 1,
                                mainAxisSpacing: 20),
                    itemCount: technical_hss_list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PolyClgTile(
                        imagepath: imgurl[index],
                        name:technical_hss_list[index].name ,
                        page:technical_hss_list[index].page ,
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
