import 'package:flutter/material.dart';
//Importing Constants
import 'package:flutter_application_1/constants.dart';

//Importing Custom AppBar
import 'package:flutter_application_1/institutions/components/custom_appbar/institutiondetail_appbar.dart';
//Importing FinishingSchool Class
import 'package:flutter_application_1/institutions/institution_class.dart';
//Importing InfoCard
import 'package:flutter_application_1/institutions/components/info_card.dart';

class FinishingSchoolPage extends StatefulWidget {
  final FinishingSchool college;
  const FinishingSchoolPage({super.key, required this.college});

  @override
  State<FinishingSchoolPage> createState() => _FinishingSchoolPageState();
}

class _FinishingSchoolPageState extends State<FinishingSchoolPage> {
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
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: bgColor,
        ),
        child: CustomScrollView(controller: _scrollController, slivers: [
          SliverAppBar(
            //Statusbar height
            toolbarHeight: kToolbarHeight,
            backgroundColor:
                _isScrolled ? const Color(0xFF1C8EE1) : Colors.transparent,
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
                  'Phone: ${widget.college.phone}}\nEmail: ${widget.college.email}\nWebsite: ${widget.college.website}',
                  style: const TextStyle(
                      fontSize: 13, color: Colors.black, height: 1.8),
                ),
                title: "Contact Details",
                icon: const Icon(Icons.phone)),
            const SizedBox(height: 20),
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
    );
  }
}
