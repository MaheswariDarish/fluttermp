import 'package:flutter/material.dart';
import 'package:flutter_application_1/institutions/components/custom_appbar/institutiondetail_appbar.dart';
import 'package:flutter_application_1/institutions/institution_class.dart';
import 'package:flutter_application_1/institutions/components/info_card.dart';
import 'package:flutter_application_1/LaunchURL/launch_url.dart';
import 'package:url_launcher/url_launcher.dart';
class RCPage extends StatefulWidget {
  final RegCentre centre;

  const RCPage({Key? key, required this.centre}) : super(key: key);

  @override
  RCPageState createState() => RCPageState();
}

class RCPageState extends State<RCPage> {
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
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            //Statusbar height
            toolbarHeight: MediaQuery.of(context).padding.top + 40,
            backgroundColor: _isScrolled
                ? Color.fromARGB(214, 203, 9, 54)
                : Colors.transparent,
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
                            widget.centre.name,
                            style: const TextStyle(fontSize: 15),
                          ),
                    background: CustomAppBar(
                      collegeName: widget.centre.name,
                      collegeAddress: widget.centre.address,
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
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: 30),
                InfoCard(
                    content: Text(
                      'Phone: ${widget.centre.phone}\nEmail: ${widget.centre.email}\nWebsite: ${widget.centre.website}',
                      style: const TextStyle(
                          fontSize: 13, color: Colors.black, height: 1.8),
                    ),
                    title: "Contact Details",
                    icon: const Icon(Icons.phone)),
                const SizedBox(height: 20),
                InfoCard(
                    content: Text(
                      widget.centre.about,
                      style: const TextStyle(
                          fontSize: 13, color: Colors.black, height: 1.54),
                    ),
                    title: "About",
                    icon: const Icon(Icons.info)),
                const SizedBox(height: 20),
                InfoCard(
                    content: widget.centre.coursesOffered.isNotEmpty
                        ? Text(widget.centre.coursesOffered,
                            style: const TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                height: 1.54))
                        : const Text(
                            'No Courses Available',
                            style: TextStyle(fontSize: 13, color: Colors.black),
                          ),
                    title: "Courses Offered",
                    icon: const Icon(Icons.book)),
                const SizedBox(height: 20),
                InfoCard(
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nearest Railway Station: ${widget.centre.nearestRailwayStation}',
                          style: const TextStyle(
                              fontSize: 14, color: Colors.black),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Nearest Bus Station: ${widget.centre.nearestBusStand}',
                          style: const TextStyle(
                              fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                    title: "Nearest Stations",
                    icon: const Icon(Icons.map)),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
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
                builder: (context) => LaunchURL(url: widget.centre.website),
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
                    _launchPhone(widget.centre.phone);
                    Navigator.of(context).pop();
                  },
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: Text('Email'),
                  onTap: () {
                    _launchEmail(widget.centre.email);
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


