import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/announcements/announcement_container.dart';
import 'package:flutter_application_1/imageslider/image_slider.dart';
import 'package:flutter_application_1/logobanner/ihrd_banner.dart';

class ScreenNotifications extends StatefulWidget {
  const ScreenNotifications({super.key});

  @override
  State<ScreenNotifications> createState() => _ScreenNotifiactionsState();
}

class _ScreenNotifiactionsState extends State<ScreenNotifications> {
  //controller for scrolling
  final ScrollController _scrollController = ScrollController();
  bool _isScrolled = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.offset > 0 && !_isScrolled) {
      setState(() {
        _isScrolled = true;
      });
    } else if (_scrollController.offset <= 0 && _isScrolled) {
      setState(() {
        _isScrolled = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //physics: const BouncingScrollPhysics(),
      controller: _scrollController,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const SizedBox(
            height: kToolbarHeight + 30,
          ),
          //Name of User
          // RichText(
          //   textAlign: TextAlign.left,
          //   text: const TextSpan(
          //     text: "Hello ",
          //     style: TextStyle(color: Color(0xff006ED3), fontSize: 20),
          //     children: [
          //       TextSpan(
          //         text: "Abhinav",
          //         style: TextStyle(
          //             color: Color(0xff006ED3), fontWeight: FontWeight.bold),
          //       ),
          //       TextSpan(
          //         text: ", welcome back!",
          //       ),
          //     ],
          //   ),
          // ),
          const SizedBox(height: 20),
          //IHRD LOGO
          BannerImage(),
          SizedBox(height: 20),
          //Image Slider
          ImageSlider(),
          SizedBox(height: 20),
          //Announcements
          Announcements(),

          //Height of bottomnavbar
          SizedBox(height: kBottomNavigationBarHeight),
        ]),
      ),
    );
  }
}
