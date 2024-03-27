import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/backend_api.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_application_1/announcements/card/annoncement_card.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import './list/announcement_list.dart';

class Announcements extends StatefulWidget {
  const Announcements({super.key});

  @override
  State<Announcements> createState() => _AnnouncementsState();
}

class _AnnouncementsState extends State<Announcements> {
  //controller for auto scrolling
  final ScrollController _annscrollController = ScrollController();
  Timer? _autoScrollTimer;
  List<Column> annCards = [];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _annscrollController.dispose();
    //stop auto scrolling
    _autoScrollTimer?.cancel();
    super.dispose();
  }

  //Auto Scroll Function
  void _startAutoScroll() {
    _autoScrollTimer =
        Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (!_annscrollController.hasClients) return;
      _annscrollController.animateTo(
        _annscrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: announcementlist.length * 2000),
        curve: Curves.linear,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: noticebg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15.0, right: 15, top: 20, bottom: 20),
          child: Column(children: [
            SizedBox(
              height: 30,
              width: MediaQuery.of(context).size.width,
              child: const Text("Announcements",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xE2D51E1E))),
            ),
            const SizedBox(
              height: 10,
            ),

            //Announcement List
            SizedBox(
              height: 400,
              child: SingleChildScrollView(
                controller: _annscrollController,
                child: FutureBuilder(
                    future: getAnnouncements(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return Center(
                          child: Column(
                            children: [
                              SizedBox(height: 50),
                              CircularProgressIndicator(),
                            ],
                          ),
                        );
                      }
                      //Return as column
                      return Column(
                        children: snapshot.data!.map((document) {
                          return InkWell(
                            onTap: () async {
                              //Navigate to browser link

                              if (document['href'] == null) {
                                return;
                              }

                              //Convert to URI
                              final Uri url = Uri.parse(document['href']);
                              if (!await launchUrl(url,
                                  mode: LaunchMode.platformDefault)) {
                                throw Exception('Could not launch $url');
                              }
                            },
                            child: Column(
                              children: [
                                AnnouncementCard(
                                  text: document['title'],
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      );
                    }),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
