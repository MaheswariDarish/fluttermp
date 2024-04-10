import 'package:flutter_application_1/institutions/6_regional_centres/component/regional_centre_page.dart';
import 'package:flutter_application_1/institutions/institution_class.dart';

const regionalCentreList = [
  InstitutionObject(
    name: 'REGIONAL CENTRE THIRUVANANTHAPURAM',
    page: RCPage(
      centre: RegCentre(
        name: 'REGIONAL CENTRE THIRUVANANTHAPURAM',
        address:
            'Puthuppally Line, Medical College P.O, Thiruvananthapuram District -695011',
        about:
            'IHRD established Regional Centre at Medical College Jn, Trivandrum Dist on 1995. Post Graduate Diploma courses, Diploma in Computer Application and various short term programmes catering to the need of unemployed youth are being conducted. Various special training programmes are also conducted.',
        phone: '0471-2550612, 2554947',
        email: 'rctrivandrum@ihrd.ac.in',
        website: 'https://ihrd.ac.in/',
        nearestRailwayStation: 'Trivandrum Central - 5 KM',
        nearestBusStand: 'Medical College Jn - 0.2 KM',
        coursesOffered:
            'Post Graduate Diploma in Computer Application, Diploma in Computer Application, Diploma in Data Entry Techniques & Office Automation, Short term Courses',
      ),
    ),
  ),
  InstitutionObject(
    name: 'IHRD Regional Centre Ernakulam',
    page: RCPage(
      centre: RegCentre(
        name: 'IHRD Regional Centre Ernakulam',
        address:
            'Edappally High School Campus, Edappally, Ernakulam District -682024',
        about:
            'IHRD established Regional Centre at Edapally, Ernakulam Dist on 1995. Post Graduate Diploma courses, Diploma in Computer Application and various short term programmes catering to the need of unemployed youth are being conducted. Various special training programmes are also conducted.',
        phone: '0484-2337838',
        email: 'rcernakulam@ihrd.ac.in',
        website: 'https://ihrd.ac.in/',
        nearestRailwayStation: 'Ernakulam North - 5 KM',
        nearestBusStand: 'Ernakulam - 8 KM',
        coursesOffered:
            'Post Graduate Diploma in Computer Application, Diploma in Computer Application, Short term Courses',
      ),
    ),
  ),
];
