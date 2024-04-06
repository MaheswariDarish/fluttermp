import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_application_1/LaunchURL/launch_url.dart';
//This dart file is used for displaying the details of a selected college

//Constants
import 'package:flutter_application_1/constants.dart';

//Custom AppBar
import 'package:flutter_application_1/institutions/components/custom_appbar/institutiondetail_appbar.dart';

//Information Card
import 'package:flutter_application_1/institutions/components/info_card.dart';

//college object
import 'package:flutter_application_1/institutions/institution_class.dart';

class ASCollegePage extends StatefulWidget {
  final AppliedScienceCollege college;
  const ASCollegePage({super.key, required this.college});

  @override
  State<ASCollegePage> createState() => _ASCollegePageState();
}

class _ASCollegePageState extends State<ASCollegePage> {
  final double _appBarHeight = 240.0;
  final double _collapsedAppBarHeight = 80.0;
  bool _isScrolled = false;
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset >= _appBarHeight - _collapsedAppBarHeight) {
        setState(() {
          _isScrolled = true;
        });
      } else {
        setState(() {
          _isScrolled = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //List of Courses  offered
    final courseList = widget.college.courses.map((e) => ListTile(
          leading: const Icon(
            Icons.fiber_manual_record_sharp,
            color: Colors.black,
            size: 13,
          ),
          title: Text(
            e,
            style: const TextStyle(fontSize: 14, color: Colors.black),
          ),
        ));

    //List of IHRD courses offered
    final ihrdCourseList = widget.college.ihrdCourses.map((e) => ListTile(
          leading: const Icon(
            Icons.fiber_manual_record_sharp,
            color: Colors.black,
            size: 13,
          ),
          title: Text(
            e,
            style: const TextStyle(fontSize: 14, color: Colors.black),
          ),
        ));

    return Scaffold(
      
      body: Container(
        decoration: const BoxDecoration(
         // gradient: bgColor,
        ),
        child: CustomScrollView(controller: _scrollController, slivers: [
          SliverAppBar(
            //Statusbar height
            toolbarHeight: kToolbarHeight,
            backgroundColor:
                _isScrolled ? Color.fromARGB(255, 114, 8, 68) : Colors.transparent,
            expandedHeight: _appBarHeight,
            pinned: true,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  ),
                  child: FlexibleSpaceBar(
                    title: !_isScrolled
                        ? null
                        : Text(
                            widget.college.name,
                            style: const TextStyle(fontSize: 15),
                          ),
                    background: CustomAppBar(
                      collegeName: widget.college.name,
                      collegeAddress: widget.college.address,
                    ),
                    collapseMode: CollapseMode.parallax,
                    stretchModes: const [
                      StretchMode.zoomBackground,
                      StretchMode.blurBackground,
                      StretchMode.fadeTitle,
                    ],
                  ),
                );
              },
            ),
          ),

          //Body of the Page
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(height: 30),
            InfoCard(
                content: Text(
                  widget.college.about,
                  style: const TextStyle(
                      fontSize: 13, color: Colors.black, height: 1.54),
                ),
                title: "About",
                icon: const Icon(Icons.info)),
            const SizedBox(height: 20),
            InfoCard(
                content: Text(
                  'Phone: ${widget.college.phone}\nMobile: ${widget.college.mobile}\nEmail: ${widget.college.email}\nWebsite: ${widget.college.website}',
                  style: const TextStyle(
                      fontSize: 13, color: Colors.black, height: 1.8),
                ),
                title: "Contact Details",
                icon: const Icon(Icons.phone)),
            const SizedBox(height: 20),

            //BTech Courses
            InfoCard(
                content: courseList.isNotEmpty
                    ? Column(
                        children: courseList.toList(),
                      )
                    : const Text(
                        'No Courses Available',
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                title: "Courses",
                icon: const Icon(Icons.school)),
            const SizedBox(height: 20),

            //MTech Courses
            InfoCard(
                content: ihrdCourseList.isNotEmpty
                    ? Column(
                        children: ihrdCourseList.toList(),
                      )
                    : const Text(
                        'No Courses Available',
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                title: "IHRD Courses",
                icon: const Icon(Icons.school)),
            const SizedBox(height: 20),

            //MCA Courses
            // Visibility(
            //   visible: mcaCourseList.isNotEmpty,
            //   maintainState: true,
            //   child: Column(children: [
            //     InfoCard(
            //         content: Column(
            //           children: mcaCourseList.toList(),
            //         ),
            //         title: "MCA Courses",
            //         icon: const Icon(Icons.school)),
            //     const SizedBox(height: 20),
            //   ]),
            // ),

            InfoCard(
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nearest Railway Station: ${widget.college.nearestRailwayStation}',
                      style: const TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Nearest Bus Station: ${widget.college.nearestBusStand}',
                      style: const TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
                title: "Nearest Stations",
                icon: const Icon(Icons.map)),
            const SizedBox(height: 20),
          ]))
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            _showContactOptionsDialog(context);
          },
          child: Text('Contact Now'),
        ),
        ElevatedButton(
          onPressed: () {
           Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LaunchURL(url: widget.college.website),
              ),
            );
          },
          child: Text('Visit Website'),
        ),
      ],
    ),
  ),
),
    );
  }
  void _showContactOptionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Options'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: Text('Call'),
                  onTap: () {
                    _launchPhone(widget.college.phone);
                    Navigator.of(context).pop();
                  },
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: Text('Email'),
                  onTap: () {
                    _launchEmail(widget.college.email);
                    Navigator.of(context).pop();
                  },
                ),Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: Text('Call Mobile'),
                  onTap: () {
                    _launchPhone(widget.college.mobile);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _launchPhone(String phoneNumber) async {
    final phone = 'tel:$phoneNumber';
    if (await canLaunch(phone)) {
      await launch(phone);
    } else {
      throw 'Could not launch $phone';
    }
  }

  void _launchEmail(String email) async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch $_emailLaunchUri';
    }
  }
}
