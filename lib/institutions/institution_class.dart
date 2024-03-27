import 'package:flutter/material.dart';

class InstitutionObject {
  final String name;
  final Widget page;
  const InstitutionObject({required this.name, required this.page});
}

class Poly {
  final String name,
      address,
      about,
      phone,
      mobile,
      email,
      website,
      principal,
      nearestRailwayStation,
      nearestBusStand;
  final List<String> courses;
  final List<String> ihrdCourses;

  const Poly({
    required this.name,
    required this.address,
    required this.about,
    required this.phone,
    required this.mobile,
    required this.email,
    required this.website,
    required this.principal,
    required this.nearestRailwayStation,
    required this.nearestBusStand,
    required this.courses,
    required this.ihrdCourses,
  });
}

//College Class to store a college detail
class College {
  final String name,
      address,
      about,
      phone,
      mobile,
      email,
      website,
      principal,
      nearestRailwayStation,
      nearestBusStand;
  final List<String> btechCourses;
  final List<String> mtechCourses;
  final List<String> mcaCourses;
  final List<String> vocCourses;
  final List<String> masterCourses;
  final List<String> diplomaCourses;

  //Constructor
  const College({
    required this.name,
    required this.address,
    required this.about,
    required this.phone,
    required this.mobile,
    required this.email,
    required this.website,
    required this.principal,
    required this.nearestRailwayStation,
    required this.nearestBusStand,
    required this.btechCourses,
    required this.mtechCourses,
    required this.mcaCourses,
    this.vocCourses = const [],
    this.masterCourses = const [],
    this.diplomaCourses = const [],
  });
}

//AppliedScienceCollege Class to store a Applied Science College details
class AppliedScienceCollege {
  final String name,
      address,
      about,
      phone,
      mobile,
      email,
      website,
      nearestRailwayStation,
      nearestBusStand;
  final List<String> courses;
  final List<String> ihrdCourses;

  //Constructor
  const AppliedScienceCollege({
    required this.name,
    required this.address,
    required this.about,
    required this.phone,
    required this.mobile,
    required this.email,
    required this.website,
    required this.nearestRailwayStation,
    required this.nearestBusStand,
    required this.courses,
    required this.ihrdCourses,
  });
}

//AppliedScienceCollege Class to store a Applied Science College details
class FinishingSchool {
  final String name,
      address,
      about,
      phone,
      email,
      website,
      nearestRailwayStation,
      nearestBusStand;

  //Constructor
  const FinishingSchool({
    required this.name,
    required this.address,
    required this.about,
    required this.phone,
    required this.email,
    required this.website,
    required this.nearestRailwayStation,
    required this.nearestBusStand,
  });
}

//THSS Schools
class TechnicalHSS {
  final String name,
      address,
      about,
      phone,
      email,
      website,
      nearestRailwayStation,
      nearestBusStand;
  final String? nearestAirport;
  final List<Stream> hsCourses;
  final List<Stream>? secondaryCourses;
  final List<String>? ihrdCourses;

  //Constructor
  const TechnicalHSS(
      {required this.name,
      required this.address,
      required this.about,
      required this.phone,
      required this.email,
      required this.website,
      required this.nearestRailwayStation,
      required this.nearestBusStand,
      this.nearestAirport,
      required this.hsCourses,
      this.ihrdCourses,
      this.secondaryCourses});
}

class Stream {
  final String name;
  final String? info, seats;
  const Stream({required this.name, this.seats, this.info});
}

class RegCentre {
  final String name,
      address,
      about,
      phone,
      email,
      website,
      nearestRailwayStation,
      nearestBusStand,
      coursesOffered;

  const RegCentre(
      {required this.name,
      required this.address,
      required this.about,
      required this.phone,
      required this.email,
      required this.website,
      required this.nearestRailwayStation,
      required this.nearestBusStand,
      required this.coursesOffered});
}
