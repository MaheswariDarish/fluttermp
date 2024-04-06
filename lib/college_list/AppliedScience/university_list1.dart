//List of Applied Science Colleges

//Kerala University List

//imported college page to display college data
import 'package:flutter_application_1/institutions/3_applied_science/college_detail/college_page.dart';

//importing InstitutionObject
import 'package:flutter_application_1/institutions/institution_class.dart';

final List<InstitutionObject> applied_science_university1_list = [
  //1
  const InstitutionObject(
      name: 'College of Applied Science Adoor',
      page: ASCollegePage(
          college: AppliedScienceCollege(
        name: 'College of Applied Science, Adoor',
        address: 'Adoor, Pathanamthitta, Kerala 691523',
        about:
            'College of Applied Science, Adoor is affiliated to Kerala University and is established in 1993 with Regular courses of   M.Sc (Computer Science) and  M.Sc (Electronics) B.Sc (Computer Science), BSc (Electronics), B.Com with Computer Applications, BBA and BCA.  The college also provide  DCA Courses conducted by Institute of Human  Resources Development.',
        phone: '04734-224076',
        mobile: '8547005045',
        email: 'casadoor@ihrd.ac.in',
        website: 'https://www.casadoor.in/',
        nearestRailwayStation: 'Chengannur - 25 Km',
        nearestBusStand: 'Adoor - 1 Km',
        courses: [
          ' MSc. Computer science (10 Seats)',
          ' MSc. Electronics  (10 Seats)',
          '  MCom (10 Seats)',
          'BSc. Computer Sciences ( 48 Seats )',
          ' BSc. Electronics ( 48 Seats )',
          '  B.Sc Physics & Comp.Applications',
          ' B.Com with Computer Applications ( 60  Seats )',
          ' BBA (48 Seats)',
          '  BCA (48 Seats)',
          'B.A.English & Communicative English'
        ],
        ihrdCourses: ['DCA', 'DDET &OA'],
      ))),

  //2
  const InstitutionObject(
    name: 'College of Applied Science Dhanuvachapuram',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Dhanuvachapuram',
        address:
            'NKM H S School Campus, Dhanuvachapuram, Thiruvananthapuram Dist. Pin- 695503',
        about:
            'College of Applied Science, Dhanuvachapuram is affiliated to Kerala University and is established in 2008 with Regular courses of M.Sc (Computer Science) and M.Sc (Electronics) B.Sc (Computer Science), BSc (Electronics), B.Com with Computer Applications. The college also provides DCA Courses conducted by the Institute of Human Resources Development.',
        phone: '0471-2234373, 0471-2234374',
        mobile: '8547005065',
        email: 'casdhanuvachapuram@ihrd.ac.in',
        website: 'https://casdvpm.ihrd.ac.in/',
        nearestRailwayStation: 'Dhanuvachapuram - 1 KM',
        nearestBusStand: 'Dhanuvachapuram – 100 M',
        courses: [
          'MSc. Computer science (30 Seats)',
          'MSc. Electronics (30 Seats)',
          'BSc. Computer Sciences (50 Seats)',
          'BSc. Electronics (50 Seats)',
          'B.Com with Computer Applications (50 Seats)',
        ],
        ihrdCourses: ['DCA'],
      ),
    ),
  ),

//3
  const InstitutionObject(
    name: 'College of Applied Science Karthikapally',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science, Karthikapally',
        address: 'Karthikapally P.O, Haripad, Alappuzha Dist - Pin 690516',
        about:
            'College of Applied Science, Karthikapally is affiliated to Kerala University and is established in 2011 with regular courses of B.Sc (Computer Science), B.Com with Computer Applications, BCom Finance, BBA, BCA, and MCom Finance and Accounting. The college also provides PGDCA, DCA, DETOA, CCLISc Courses conducted by Institute of Human Resources Development.',
        phone: '0479-2485370, 0479-2485852',
        mobile: '8547005018',
        email: 'casharipad@ihrd.ac.in',
        website: 'https://caskarthikapally.ihrd.ac.in/',
        nearestRailwayStation: 'Haripad - 3.6 Km',
        nearestBusStand: 'Haripad - 3.3 Km',
        courses: [
          'B. Com with Computer Applications (50 Seats)',
          'B. Com Finance (50 Seats)',
          'BSc. Computer Sciences (50 Seats)',
          'BBA (50 Seats)',
          'BCA (50 Seats)',
          'MCom Finance and Accounting (20 Seats)',
        ],
        ihrdCourses: ['PGDCA', 'DETOA', 'DCA', 'CCLISc'],
      ),
    ),
  ),

  //4

  const InstitutionObject(
    name: 'College of Applied Science Kalanjoor',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science, Kalanjoor',
        address: 'Kalanjoor P O, Pathanamthitta Dist. Pin- 689694',
        about:
            'College of Applied Science, Kalanjoor is affiliated to Kerala University and is established in 2014 with regular courses of B.Com with Computer Applications and Bachelor of Business Administration (BBA).',
        phone: '04734-272320',
        mobile: '8547005024',
        email: 'caskalanjoor@ihrd.ac.in',
        website: 'https://caskalanjoor.ihrd.ac.in/',
        nearestRailwayStation: 'Avaneeswaram - 5 Km',
        nearestBusStand: 'Kalanjoor - 1 Km',
        courses: [
          'B.Com with Computer Applications (40 Seats)',
          'Bachelor of Business Administration (40 Seats)',
          'BSc Computer Science (30 seats)',
          'BCom Commerce with Tax Procedure and Practice (30 seats)',
        ],
        ihrdCourses: [],
      ),
    ),
  ),
//5
  const InstitutionObject(
    name: 'College of Applied Science Kottarakkara',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science, Kottarakkara',
        address: 'E.T.C. P.O., Kottarakkara, Kollam, Kerala – 691531',
        about:
            'College of Applied Science, Kottarakkara is affiliated to Kerala University and is established in 2023 with regular courses of BSc Psychology, BA Journalism & Mass Communication, BCom Finance, BCom Co-operation, and BSc Computer Science. The college also provides short-term courses conducted by the Institute of Human Resources Development.',
        phone: '',
        mobile: '8089754259',
        email: 'caskottarakkara.ihrd@gmail.com',
        website: 'https://caskottarakkara.ihrd.ac.in/',
        nearestRailwayStation: 'Kollam - 20 Km',
        nearestBusStand: 'Kottarakkara - 3.3 Km',
        courses: [
          'BSc Psychology - 32',
          'BA Journalism & Mass Communication - 40',
          'BCom Finance - 40',
          'BCom Co-operation - 40',
          'BSc Computer Science - 32',
        ],
        ihrdCourses: ['DCA'],
      ),
    ),
  ),

  //6
  const InstitutionObject(
    name: 'College of Applied Science Kundara',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Kundara',
        address: 'Thettikunnam, Kundara P.O, Kollam Dist, Pin - 691501',
        about:
            'College of Applied Science Kundara is affiliated to Kerala University and is established in 2008 with regular courses of BSc.Computer Science & B.Com Computer Application.',
        phone: '0474-2580866',
        mobile: '8547005066',
        email: 'caskundara@ihrd.ac.in',
        website: 'https://caskundara.ihrd.ac.in/',
        nearestRailwayStation: 'Kundara - 0.5 Km',
        nearestBusStand: 'Kundara - 1 Km',
        courses: [
          'MSc. Computer Science (12 Seats)',
          'BSc. Computer Science (55 Seats)',
          'BSc. Electronics (50 Seats)',
          'B.Com Computer Application (60 Seats)',
          'B.Com (Taxation) (40 Seats)',
        ],
        ihrdCourses: ['Nil'],
      ),
    ),
  ),

//7
  const InstitutionObject(
    name: 'College of Applied Science Mavelikkara',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Mavelikkara',
        address:
            'Govt: Boy’s High School Campus\nMavelikara – 690 101.\nAllappuzha District',
        about:
            'College of Applied Science, Mavelikkara is affiliated to Kerala University and is established in 1993 with regular courses B.Sc Computer Science, B.Sc Electronics, B.Com. with Computer Application, B.Com. Tax Procedure and Practice, BBA, M.Sc Computer Science, M.Sc Electronics. The college also provides DCA, CCLIS Courses conducted by Institute of Human Resources Development.',
        phone: '0479-2304494',
        mobile: '8547005046',
        email: 'casmavelikkara@ihrd.ac.in',
        website: 'https://casmvk.kerala.gov.in',
        nearestRailwayStation: 'Mavelikkara - 2 Km',
        nearestBusStand: 'Mavelikkara - 1 Km',
        courses: [
          'Bachelor of Computer Application (40)',
          'B.Sc Computer Science (40)',
          'B Com Commerce & Tax Procedure and Practice (40)',
          'Bachelor of Business Administration (30)',
          'B Com with Computer Application (40)',
          'B.Sc Electronics (40)',
          'B.Com Finance (50)',
          'B.Sc Physics with Computer Application (30)',
        ],
        ihrdCourses: ['PGDCA', 'DCA', 'CCLIS'],
      ),
    ),
  ),
//8
  const InstitutionObject(
    name: 'College of Applied Science Perissery',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science, Perissery',
        address: 'Perissery P.O., Chengannur, Alappuzha Dist, Pin: 689126',
        about:
            'College of Applied Science, Perissery is affiliated to Kerala University and is established in 2015 with regular courses of B.A English Language & Literature, BSc. Computer Science, B.Com Computer Application, and BCA.',
        phone: '0479-2456499',
        mobile: '9747190302',
        email: 'casperissery@ihrd.ac.in',
        website: 'https://casperissery.ihrd.ac.in/',
        nearestRailwayStation: 'Chengannur - 2 Km',
        nearestBusStand: 'Chengannur - 2 Km',
        courses: [
          'B.A English Language & Literature (30 Seats)',
          'BSc. Computer Science (30 Seats)',
          'B.Com Computer Application (40 Seats)',
          'Bachelor of Computer Application (30 Seats)',
        ],
        ihrdCourses: [],
      ),
    ),
  ),
];
