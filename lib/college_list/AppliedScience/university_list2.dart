//List of Applied Science Colleges

//MG University List

//imported college page to display college data
import 'package:flutter_application_1/institutions/3_applied_science/college_detail/college_page.dart';

//importing InstitutionObject
import 'package:flutter_application_1/institutions/institution_class.dart';

final List<InstitutionObject> applied_science_university2_list = [
  //1
  const InstitutionObject(
    name: 'College of Applied Science Konni',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Konni',
        address: 'Elimullumplackal P.O\nKonni, Pathanamthitta Dist',
        about:
            'College of Applied Science Konni is affiliated to Mahatma Gandhi University and is established in 2010 with regular courses BSc (Computer Sciences) & B.Com with Computer Applications.',
        phone: '0468 2382280',
        mobile: '8547005074',
        email: 'caskonni@ihrd.ac.in',
        website: 'https://caskonni.ihrd.ac.in/',
        nearestRailwayStation: 'Avaneeswaram in Punalur Kollam line - 35 Km',
        nearestBusStand: 'Konni - 10 Km',
        courses: [
          'BSc (Computer Sciences)',
          'B.Com with Computer Application',
          'M.Com with Finance and Taxation'
        ],
        ihrdCourses: [],
      ),
    ),
  ),

//2
  const InstitutionObject(
    name: 'College of Applied Science Mallappally',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Mallappally',
        address:
            'Peakuzhiyil Buildings, Mallappally (W) P O, Pathanamthitta (Dist), PIN- 689 585',
        about:
            'College of Applied Science Mallappally is affiliated to Mahatma Gandhi University and is established in 1998 with regular courses in MSc Electronics, BSc Electronics & B.Sc Computer Sciences.',
        phone: '0469-2681426',
        mobile: '8547005033',
        email: 'casmallappally@ihrd.ac.in',
        website: 'https://casmallappally.ihrd.ac.in/',
        nearestRailwayStation: 'Thiruvalla – 15 Km',
        nearestBusStand: 'Mallappally - 50 m',
        courses: [
          'BSc. Computer Sciences (54 Seats)',
        ],
        ihrdCourses: ['DCA'],
      ),
    ),
  ),
//3
  const InstitutionObject(
    name: 'College of Applied Science Ayroor',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Ayroor',
        address: 'Ayroor South P.O, Pathanamthitta Dist, Kerala - 689 611',
        about:
            'College of Applied Science Ayroor is affiliated to Mahatma Gandhi University and is established in 2020 with regular courses BSc. Computer Sciences, BCom Model III (Computer Applications), BSc Physics Model II (Computer Applications).',
        phone: '04735-296833',
        mobile: '9747190302',
        email: 'casayroor@gmail.com',
        website: 'https://casayroor.ihrd.ac.in/',
        nearestRailwayStation: '', // Update with the nearest railway station
        nearestBusStand: '', // Update with the nearest bus stand
        courses: [
          'BSc. Computer Sciences (40 Seats)',
          'BCom Model III (Computer Applications) (40 Seats)',
          'BSc Physics Model II (Computer Applications) (40 Seats)',
        ],
        ihrdCourses: [], // Update with IHRD courses
      ),
    ),
  ),
//4
  const InstitutionObject(
    name: 'College of Applied Science Puthupally',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Puthuppally',
        address:
            'Payyappady P.O., Puthuppally, Kottayam – 686 034, Pin- 686 011',
        about:
            'College of Applied Science, Puthuppally is affiliated to Mahatma Gandhi University and is established in 1993 with Regular courses of B.Sc(Computer Sciences), BSc (Electronics), MSc (Computer Science) and MSc (Electronics).',
        phone: '04734-224076', // You can update this if needed
        mobile: '8547005040',
        email: 'caspayyappady@ihrd.ac.in',
        website: 'https://casputhuppally.ihrd.ac.in/',
        nearestRailwayStation: 'Kottayam - 10 KM',
        nearestBusStand: 'Puthuppally – 3 KM',
        courses: [
          'BSc Computer Science (40 seats)',
          'BSc Electronics (40 seats)',
          'BCom computer Application (40 seats)',
          'BCom Finance & Taxation (40 seats)',
          'MSc Computer Science (30 seats)',
          'MCom Finance & Taxation (20 seats)',
        ],
        ihrdCourses: ['DCA', 'DDET & OA'],
      ),
    ),
  ),

//5
  const InstitutionObject(
    name: 'College of Applied Science, Thodupuzha',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science, Thodupuzha',
        address: 'Near Court Complex, Muttom, Thodupuzha, Pin-685587',
        about:
            'College of Applied Science, Thodupuzha is affiliated to Mahatma Gandhi University and is established in 2000 with regular courses in MSc (Computer Science), MSc (Electronics), B.Sc (Computer Sciences), BSc (Electronics), and B.Com with Computer Applications.',
        phone: '04862257811, 2257447',
        mobile: '8547005047',
        email: 'casthodupuzha@ihrd.ac.in',
        website: 'https://casthodupuzha.ihrd.ac.in/',
        nearestRailwayStation: 'Aluva - 50 KM',
        nearestBusStand: 'Thodupuzha - 1 KM',
        courses: [
          'M.Sc. Computer Science (30 Seats)',
          'M.Sc. Electronics (30 Seats)',
          'B.Sc. Computer Science (40 Seats)',
          'B.Sc. Electronics (40 Seats)',
          'B.Com With Computer Applications (40 Seats)',
        ],
        ihrdCourses: ['Nil'],
      ),
    ),
  ),

//6
  const InstitutionObject(
      name: "College of Applied Science, Kaduthuruthy",
      page: ASCollegePage(
          college: AppliedScienceCollege(
        name: 'College of Applied Science, Kaduthuruthy',
        address: 'Njeezhoor P O, Kaduthuruthy, Kottayam (Dist). Pin - 686 612',
        about:
            'College of Applied Science, Kaduthuruthy affiliated to Mahathma Gandhi University established in the year 2001 is working in the new Campus at Thiruvambady near Kaduthuruthy. College with regular courses B.Sc (Computer Science), B Com Computer Application & M Com Finance and taxation',
        phone: '04829-264177',
        mobile: '8547005049',
        email: 'caskaduthuruthi@ihrd.ac.in',
        website: 'https://caskaduthuruthy.ihrd.ac.in/',
        nearestRailwayStation: 'Appanchira - 9 Km',
        nearestBusStand: 'Kaduthuruthy - 4 Km',
        courses: [
          'BSc. Computer Science (40 Seats)',
          'BCom Computer Application (40 Seats)',
          'BCom (Taxation) (40 Seats)',
          'MCom Finance and Taxation (20 Seats)',
        ],
        ihrdCourses: ['DCA'],
      ))),
  //7
  const InstitutionObject(
    name: 'College of Applied Science Kanjirappally',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Kanjirappally',
        address:
            'Petta Govt. HS Campu, Kanjirappally, Kottayam (Dist). Pin - 686 507',
        about:
            'College of Applied Science Kanjirappally is affiliated to Mahatma Gandhi University and is established in 2010 with regular courses BSc (Computer Sciences) & B.Com with Computer Applications.',
        phone: '04828-206480, 04828-206600',
        mobile: '8547005075',
        email: 'caskanjirappally@ihrd.ac.in',
        website: 'https://caskanjirappally.ihrd.ac.in/',
        nearestRailwayStation: 'Kottayam – 38 Km',
        nearestBusStand: 'Kanjirappally - 1.5 Km',
        courses: [
          'BSc. Computer Sciences (30 Seats)',
          'B.Com with Computer Applications (30 Seats)',
        ],
        ihrdCourses: ['DCA'],
      ),
    ),
  ),
//8
  const InstitutionObject(
    name: 'College of Applied Science Peermade',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Peermade',
        address:
            'PWD Rest House Campus, Kuttikkanam PO, Peerumede, Idukki (Dist), Kerala 685 531',
        about:
            'College of Applied Science, Peerumade is affiliated to Mahatma Gandhi University and was established in 1993. It offers regular courses in MSc (Computer Science), B.Sc (Computer Sciences), BSc (Electronics), and B.Com with Computer Applications.',
        phone: '04869-232373',
        mobile: '8547005041',
        email: 'caspeermade@ihrd.ac.in',
        website: 'https://caspeermade.ihrd.ac.in/',
        nearestRailwayStation: 'Kottayam - 73 KM',
        nearestBusStand: 'Mundakkayam – 20 KM',
        courses: [
          'MSc Computer Science (20 seats)',
          'BSc. Electronics (40 seats)',
          'BSc. Computer Science (40 seats)',
          'BCom with Computer Applications (40 Seats)',
        ],
        ihrdCourses: ['Nil'],
      ),
    ),
  ),
//9
  const InstitutionObject(
    name: 'College of Applied Science Kattappana',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Kattappana',
        address:
            '5th Floor, KSHB Shopping Complex\nNear old bus stand, Kattappana,\nIdukki (Dt). Pin: 685508',
        about:
            'College of Applied Science Kattapana is affiliated to Mahatma Gandhi University and is established in 2001 with regular courses in MSc Computer Science, BSc Electronics & B.Sc Computer Sciences.',
        phone: '04868-250160',
        mobile: '8547005053',
        email: 'caskattappana@ihrd.ac.in',
        website: 'https://caskattappana.ihrd.ac.in/',
        nearestRailwayStation: 'Kottayam – 113 Km',
        nearestBusStand: 'Kattappana - 200 mts',
        courses: [
          'M.Sc Computer Science (30 seats)',
          'B.Sc Computer Science (44 seats)',
          'B.Sc Electronics (44 seats)',
        ],
        ihrdCourses: ['Nil'],
      ),
    ),
  ),

//10

  const InstitutionObject(
    name: 'College of Applied Science Nedumkandam',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Nedumkandam',
        address:
            'Panchady Road, West Junction, Nedumkandam, Idukki (Dist), Pin- 685 553',
        about:
            'College of Applied Science Nedumkandam is affiliated to Mahatma Gandhi University and is established in 2010 with regular courses BSc. Computer Sciences and B.Com with Computer Applications',
        phone: '04868-234472',
        mobile: '8547005067',
        email: 'casnedumkandam@ihrd.ac.in',
        website: 'www.casnedumkandam.ihrd.ac.in',
        nearestRailwayStation: 'Aluva - 120 KM',
        nearestBusStand: 'Nedumkandam – 0.5KM',
        courses: [
          'BSc. Computer Sciences (40 Seats)',
          'B.Com with Computer Applications (40 Seats)',
        ],
        ihrdCourses: [],
      ),
    ),
  ),
//11
  const InstitutionObject(
    name: 'College of Applied Science Puthenvelikkara',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science, Puthenvelikkara',
        address:
            'Elenthikara P.O, North Paravoor, Ernakulam (Dist), Pin - 683 594',
        about:
            'College of Applied Science, Puthenvelikkara is affiliated to Mahatma Gandhi University and is established in 2010 with regular courses in B.Sc (Computer Sciences), BSc (Electronics), and B.Com with Computer Applications.',
        phone: '0484-2487790',
        mobile: '8547005069',
        email: 'casputhenvelikkara@ihrd.ac.in',
        website: 'https://casputhenvelikkara.ihrd.ac.in/',
        nearestRailwayStation: 'Aluva - 23 KM',
        nearestBusStand: 'N.Paravoor - 10 KM',
        courses: [
          'BSc. Electronics (40 seats)',
          'BSc. Computer Science (40 seats)',
          'BCom. with Computer Applications (40 Seats)',
        ],
        ihrdCourses: [],
      ),
    ),
  ),
  //12
  const InstitutionObject(
    name: 'College of Applied Science Marayoor',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Marayoor',
        address:
            'Anchunadu, Pius Nagar Post, Marayoor Via, Idukki Post, Pin 685620',
        about:
            'College of Applied Science Anchunadu, Kanthalloor, via Marayoor is affiliated to Mahatma Gandhi University and is established in 2010 with regular courses BSc. Computer Sciences, B.Com (CA), and B.Com (Taxation).',
        phone: '0468-253010',
        mobile: '8547005072',
        email: 'casmarayoor@ihrd.ac.in',
        website: 'https://casmarayoor.ihrd.ac.in/index.php',
        nearestRailwayStation: 'Udumalpet',
        nearestBusStand: 'Kovilkadavu',
        courses: [
          'BSc. Computer Sciences (44 Seats)',
          'B.Com (CA) (44 Seats)',
          'B.Com (Taxation) (44 Seats)',
        ],
        ihrdCourses: ['DDTOA'],
      ),
    ),
  )
];
