//List of Applied Science Colleges

//Calicut University List

//imported college page to display college data
import 'package:flutter_application_1/institutions/3_applied_science/college_detail/college_page.dart';

//importing InstitutionObject
import 'package:flutter_application_1/institutions/institution_class.dart';

final List<InstitutionObject> applied_science_university3_list = [
//1
  const InstitutionObject(
    name: 'College of Applied Sciences Ayalur',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Sciences Ayalur',
        address: 'Ayalur P.O., Nemmara Via, Palakkad Dist., Pin - 678510',
        about:
            'College of Applied Science Ayalur is affiliated to Calicut University and was established in 2012 with regular courses in B.Sc (Computer Science), B.Sc (Electronics), B.Com with Computer Applications.',
        phone: '0492-3241766',
        mobile: '8547005029',
        email: 'casayalur@ihrd.ac.in',
        website: 'casayalur.ihrd.ac.in',
        nearestRailwayStation: 'Palakkad – 4 Km',
        nearestBusStand: 'Nemmara – 4 Km',
        courses: [
          'B.Sc. Computer Science (24 Seats)',
          'B.Sc. Electronics (24 Seats)',
          'B.Com. with Computer Applications (40 Seats)',
        ],
        ihrdCourses: [],
      ),
    ),
  ),

//2
  const InstitutionObject(
    name: 'College of Applied Sciences Kodungallur',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Sciences Kodungallur',
        address:
            'Thattupally, Eriyad P.O, Thrissur (Dist.), Kerala State – 680671',
        about:
            'College of Applied Science Kodungallur is affiliated to Calicut University and was established in 2010 with regular courses in B.Sc (Computer Science) and B.Com with Computer Applications.',
        phone: '0480-2816270',
        mobile: '8547005078',
        email: 'caskodungallur@ihrd.ac.in',
        website: 'https://caskodungallur.ihrd.ac.in/',
        nearestRailwayStation: 'Irinjalakuda – 14 Km',
        nearestBusStand: 'Kodungallur – 1 Km',
        courses: [
          'B.Sc. Computer Science (24 Seats)',
          'B.Com. with Computer Applications (30 Seats)',
          'BA English Language and Literature (24 Seats)',
        ],
        ihrdCourses: [],
      ),
    ),
  ),
//3
//   const InstitutionObject(
//     name: 'College of Applied Science Muthuvallur',
//     page: ASCollegePage(
//       college: AppliedScienceCollege(
//         name: 'College of Applied Science Muthuvallur',
//         address: 'Kondotty Via, Malappuram District, Pin - 673638',
//         about:
//             'College of Applied Science Muthuvallur is affiliated to Calicut University and was established in 2010 with regular courses in B.Sc (Computer Science) and B.Com with Computer Applications.',
//         phone: '0483 2963218',
//         mobile: '8547005070',
//         email: 'casmuthuvallur@ihrd.ac.in',
//         website: 'https://casmuthuvallur.ihrd.ac.in/',
//         nearestRailwayStation: 'Calicut (Karippur) – 6 Km',
//         nearestBusStand: 'Kondotty – 4 Km',
//         courses: [
//           'B.Sc. Computer Science (24 Seats)',
//           'B.Com with Computer Applications (30 Seats)',
//           'M.Com',
//         ],
//         ihrdCourses: [],
//       ),
//     ),
//   ),
//4
  const InstitutionObject(
    name: 'College of Applied Science Muthuvallur',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Muthuvallur',
        address: 'Kondotty Via, Malappuram District, Pin - 673638',
        about:
            'College of Applied Science Muthuvallur is affiliated to Calicut University and was established in 2010 with regular courses in B.Sc (Computer Science) and B.Com with Computer Applications.',
        phone: '0483 2963218',
        mobile: '8547005070',
        email: 'casmuthuvallur@ihrd.ac.in',
        website: 'https://casmuthuvallur.ihrd.ac.in/',
        nearestRailwayStation: 'Calicut (Karippur) – 6 Km',
        nearestBusStand: 'Kondotty – 4 Km',
        courses: [
          'B.Sc. Computer Science (24 Seats)',
          'B.Com with Computer Applications (30 Seats)',
          'M.Com',
        ],
        ihrdCourses: [],
      ),
    ),
  ),
//5
  const InstitutionObject(
    name: 'College of Applied Science Vadakkencherry',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Vadakkencherry',
        address:
            'Erassankulam, Vadakkencherry (MBR), Palakkad (Dist.) – 678 683',
        about:
            'College of Applied Science, Vadakkencherry, is affiliated to the Calicut University and was established in 1993 with regular courses in B.Sc (Computer Science), B.Sc (Electronics), B.Com with CA, M.Sc (Computer Science), M.Sc (Electronics). The college also offers Post Graduate Diploma in Audio Engineering from the Institute of Human Resources Development.',
        phone: '0491-2985061',
        mobile: '8547005042',
        email: 'casvadakkencherry@ihrd.ac.in',
        website: 'http://casvdy.org/',
        nearestRailwayStation: 'Thrissur – 35 Km',
        nearestBusStand: 'Vadakkencherry - 3 Km',
        courses: [
          'B.Sc. Computer Science (36 Seats)',
          'B.Sc. Electronics (34 Seats)',
          'B.Com with Computer Applications (40)',
          'M.Sc. Computer Science(12 Seats)',
          'M.Sc. Electronics (12 Seats)',
        ],
        ihrdCourses: ['PGDAE (Post Graduate Diploma in Audio Engineering)'],
      ),
    ),
  ),
//6
  const InstitutionObject(
    name: 'College of Applied Science Nattika',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Nattika',
        address: 'Valapad Post, Thrissur (Dist) – 680567',
        about:
            'College of Applied Science Nattika is affiliated to the Calicut University and was established in 1993 with regular courses in B.Sc (Computer Science), B.Sc (Electronics), M.Sc (Computer Science), M.Sc (Electronics). The college also offers CCLISc from the Institute of Human Resources Development.',
        phone: '0487-2395177',
        mobile: '8547005057',
        email: 'casnattika@ihrd.ac.in',
        website: 'http://www.casnattika.ihrd.ac.in/',
        nearestRailwayStation: 'Thrissur – 26 Km',
        nearestBusStand: 'Thriprayar - 3 Km',
        courses: [
          'B.Sc. Computer Science (36 Seats)',
          'B.Sc. Electronics (36 Seats)',
          'B.Com with Computer Applications (40 Seats)',
          'M.Sc. Computer Science(10 Seats)',
          'M.Sc. Electronics (10 Seats)',
        ],
        ihrdCourses: ['CCLISc'],
      ),
    ),
  ),

//7
  const InstitutionObject(
    name: 'College of Applied Science Kozhikode',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Kozhikode',
        address:
            'Balan.K.Nair Road, Kiliyanad Post, Kozhikode District - 673 001',
        about:
            'College of Applied Science, Kozhikode, is affiliated to the Calicut University and was established in 1993 with regular courses in B.Sc (Computer Science), B.Sc (Electronics), B.Com with CA, BCA, M.Sc (Computer Science), M.Sc (Electronics), M.Com, and MCA. The college also offers Post Graduate Diploma in Computer Application and Diploma in Computer Application from the Institute of Human Resources Development.',
        phone: '0495-2765154, 2768320',
        mobile: '8547005044',
        email: 'caskozhikode@ihrd.ac.in',
        website: 'https://caskozhikode.ihrd.ac.in/',
        nearestRailwayStation: 'Kozhikode - 2 Km',
        nearestBusStand: 'Kozhikode - 2 Km',
        courses: [
          'B.Sc Electronics (36 Seats)',
          'Bachelor of Business Administration (30 Seats)',
          'B.Com (V) Computer Application (60 Seats)',
          'B.Sc Computer Science (36 Seats)',
          'Bachelor of Computer Applications (36 Seats)',
          'BA English Language and Literature (24 Seats)',
          'B.Sc Mathematics (24 Seats)',
          'M.Sc Computer Science (Batch 1)(12 Seats)',
          'M.Sc Computer Science (Batch 2)(10 Seats)',
          'M.COM (Finance) (20 Seats)',
          'M.Sc Electronics (Batch 1) (12 Seats)',
          'M.Sc Electronics (Batch 2) (10 Seats)',
        ],
        ihrdCourses: ['PGDCA', 'DCA'],
      ),
    ),
  ),

//8
  const InstitutionObject(
    name: 'College of Applied Science Malappuram',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Malappuram',
        address:
            'Govt. College campus, Munduparamba P O, Malappuram (Dist), Pin - 676 509',
        about:
            'College of Applied Science, Malappuram, is affiliated to the Calicut University and was established in 1993 with regular courses in B.Sc (Computer Science).',
        phone: '0483-2959175',
        mobile: '8547005043',
        email: 'casmalappuram@ihrd.ac.in',
        website: 'https://casmalappuram.ihrd.ac.in/cas/',
        nearestRailwayStation: 'Angadipuram – 20 Km',
        nearestBusStand: 'Malappuram - 3 Km',
        courses: ['B.Sc. Computer Science (24 Seats)'],
        ihrdCourses: [],
      ),
    ),
  ),

//9
  const InstitutionObject(
    name: 'College of Applied Sciences Vattamkulam',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Sciences Vattamkulam',
        address: 'Sugapuram P.O., Edapal, Malappuram Dist., Pin - 679576',
        about:
            'College of Applied Science Vattamkulam is affiliated to the Calicut University and was established in 2005 with regular courses in B.Sc (Computer Science), B.Sc (Electronics), B.Sc with Computer Applications.',
        phone: '0494-2689655',
        mobile: '8547005054',
        email: 'casvattamkulam@ihrd.ac.in, casvattamkulam.ihrd@gmail.com',
        website: 'https://casvattamkulam.ihrd.ac.in/',
        nearestRailwayStation: 'Kuttipuram – 10 Km',
        nearestBusStand: 'Edapal – 4 Km',
        courses: [
          'BSc Computer Science (36 Seats)',
          'BSc Electronics (36 Seats)',
          'BCom Computer Application (48 Seats)',
          'MSc Computer Science (10 Seats)',
          'MCom Finance (15 Seats)',
        ],
        ihrdCourses: [],
      ),
    ),
  ),

//10
  const InstitutionObject(
    name: 'College of Applied Science Nadapuram',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Nadapuram',
        address:
            'GHSS Kallachi Campus, Kallachi P.O., Kozikode Dist., Pin – 673 506',
        about:
            'College of Applied Science Nadapuram is affiliated to the Calicut University and was established in 2005 with regular courses in B.Sc (Computer Science), B.Sc (Electronics), Bachelor of Computer Applications.',
        phone: '0496-2556300',
        mobile: '8547005056',
        email: 'casnadapuram@ihrd.ac.in',
        website: 'https://casnadapuram.ihrd.ac.in/',
        nearestRailwayStation: 'Vadakara',
        nearestBusStand: 'Kallachi',
        courses: [
          'B.Sc. Computer Science (24 Seats)',
          'B.Sc. Electronics (24 Seats)',
          'Bachelor of Computer Applications (24 Seats)',
        ],
        ihrdCourses: [],
      ),
    ),
  ),

//11
  const InstitutionObject(
    name: 'College of Applied Science Kuzhalmannam',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Kuzhalmannam',
        address:
            'Chembai Smaraka Vishramakendram, Chembarakulam, Kottayi P.O., Palakkad Dist., Pin – 678 572',
        about:
            'College of Applied Science Kuzhalmannam is affiliated to the Calicut University and was established in 2008-09 with regular courses in B.Sc (Computer Science), B.Sc (Electronics), B.Sc with Computer Applications.',
        phone: '04922-285577',
        mobile: '8547005061',
        email: 'caskuzhalmannam@ihrd.ac.in',
        website: 'https://caskuzhalmannam.ihrd.ac.in/',
        nearestRailwayStation: 'Parli – 6 Km',
        nearestBusStand: 'Kottayi – 1 Km',
        courses: [
          'B.Sc. Computer Science (24 Seats)',
          'B.Sc. Electronics (24 Seats)',
          'B.Sc. with Computer Applications (30 Seats)',
        ],
        ihrdCourses: [],
      ),
    ),
  ),

//12

  const InstitutionObject(
    name: 'College of Applied Sciences Malampuzha',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Sciences Malampuzha',
        address: 'Kalleppully P.O., Palakkad Dist., Pin - 678 005',
        about:
            'College of Applied Science Malampuzha is affiliated to the Calicut University and was established in 2008-2009 with regular courses in B.Sc (Computer Science), B.Sc (Electronics), B.Com with Computer Applications.',
        phone: '0491-2530010',
        mobile: '8547005062',
        email: 'casmalampuzha@ihrd.ac.in',
        website: 'https://casmalampuzha.ihrd.ac.in/',
        nearestRailwayStation: 'Palakkad – 5 Km',
        nearestBusStand: 'Palakkad – 7 Km',
        courses: [
          'B.Sc. Computer Science (24 Seats)',
          'B.Sc. Electronics (24 Seats)',
          'B.Com. with Computer Applications (30 Seats)',
        ],
        ihrdCourses: [],
      ),
    ),
  ),

//13
  const InstitutionObject(
    name: 'College of Applied Sciences Thiruvambadi',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Sciences Thiruvambadi',
        address: 'Alli P.O, Karassery Grama Panchayath, Kozhikode - 673602',
        about:
            'College of Applied Science Thiruvambadi is affiliated to the Calicut University and was established in 2008-09 with regular courses in B.Sc (Computer Science), B.Sc (Electronics), B.Sc with Computer Applications.',
        phone: '0483 2941954',
        mobile: '8547005063',
        email: 'casthiruvambadi@ihrd.ac.in',
        website: 'https://casthiruvambadi.ihrd.ac.in/',
        nearestRailwayStation: 'Kozhikode – 30 Km',
        nearestBusStand: 'Mukkam – 200 M',
        courses: [
          'B.Sc. Computer Science (30 Seats)',
          'B.Sc. Electronics (24 Seats)',
          'B.Sc. with Computer Applications (40 Seats)',
        ],
        ihrdCourses: ['Certificate Course in Library Science'],
      ),
    ),
  ),

//14
  const InstitutionObject(
    name: 'College of Applied Science Chelakkara',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Chelakkara',
        address:
            'Cheerakuzhy, Pazhayannur P.O., Thrissur District, Pin - 680587',
        about:
            'College of Applied Science Chelakkara is affiliated to the Calicut University and was established in 2008 with regular courses in B.Sc (Computer Science), B.Sc (Electronics), B.Com with Computer Applications, Bachelor of Computer Applications, and Master of Commerce.',
        phone: '04884 – 227181',
        mobile: '8547005064',
        email: 'caschelakkara@ihrd.ac.in',
        website: 'https://caschelakkara.ihrd.ac.in/',
        nearestRailwayStation: 'Shornur – 2 Km',
        nearestBusStand: 'Pazhayannur – 23 Km',
        courses: [
          'B.Sc. Computer Science (30 Seats)',
          'B.Sc. Electronics (30 Seats)',
          'B.Com with Computer Applications (40 Seats)',
          'Bachelor of Computer Applications (24 Seats)',
          'Master of Commerce (15 Seats)',
        ],
        ihrdCourses: [],
      ),
    ),
  ),

//15
  const InstitutionObject(
    name: 'College of Applied Sciences Attappadi',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Sciences Agali',
        address: 'Agali P.O., Attappadi, Palakkad Dist., Pin – 678581',
        about:
            'College of Applied Science Attappadi is affiliated to the Calicut University and was established in 2010 with regular courses in B.Sc (Computer Science), BBA, B Com with Computer Applications.',
        phone: '0492 4254699',
        mobile: '9447159505',
        email: 'casattappadi@ihrd.ac.in',
        website: 'https://casattappadi.ihrd.ac.in/',
        nearestRailwayStation: 'Palakkad – 80 Km',
        nearestBusStand: 'Agali – 1 Km',
        courses: [
          'B.Sc. Computer Science (24 Seats)',
          'B Com Computer Application (41 Seats)',
          'Bachelor of Business Administration (30 Seats)',
        ],
        ihrdCourses: [],
      ),
    ),
  ),

//16
  const InstitutionObject(
    name: 'College of Applied Science Thamarassery',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'College of Applied Science Thamarassery',
        address: 'Korangad, Thamarassery P.O., Kozhikode (Dist), Pin – 673 573',
        about:
            'College of Applied Science, Thamarassery, is affiliated to the Calicut University and was established in 2012 with regular courses in B.Sc (Computer Science), B.Com with CA, BA English, BCA, BBA, MA English, and M.Com.',
        phone: '0495-2223243',
        mobile: '8547005025',
        email: 'casthamarassery@ihrd.ac.in',
        website: 'http://www.casthamarassery.ihrd.ac.in/',
        nearestRailwayStation: 'Kozhikode – 32 Km',
        nearestBusStand: 'Thamarasserry - 2 Km',
        courses: [
          'B.Sc. Computer Science (34 Seats)',
          'B.Com with Computer Applications (60 Seats)',
          'BA English (40 Seats)',
          'Bachelor of Computer Applications (36 Seats)',
          'MA English (15 Seats)',
          'M.Commerce (15 Seats)',
        ],
        ihrdCourses: [],
      ),
    ),
  ),

  //17
  const InstitutionObject(
    name: 'Model College Meenagadi',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'Model College Meenagadi',
        address: 'PBM Buildings, Meenagadi P.O., Wayanad Dist., Pin – 673 591',
        about:
            'Model College Meenagadi is affiliated to the Calicut University and was established in 2010 with regular courses in B.Sc (Computer Science), B.Sc (Electronics), B.Sc with Computer Applications.',
        phone: '04936-246446',
        mobile: '8547005077',
        email: 'casmeenagadi@ihrd.ac.in',
        website: 'http://casmeenagadi.ihrd.ac.in/',
        nearestRailwayStation: 'Calicut – 100 Km',
        nearestBusStand: 'Meenagadi – 0.5 Km',
        courses: [
          'B.Sc. Computer Science (24 Seats)',
          'B.Sc. Electronics (24 Seats)',
          'B.Sc. with Computer Applications (30 Seats)',
        ],
        ihrdCourses: [],
      ),
    ),
  ),

//18
  const InstitutionObject(
    name: 'College of Applied Science Vazhakad',
    page: ASCollegePage(
      college: AppliedScienceCollege(
        name: 'Model College Meenagadi',
        address: 'College of Applied Sciences Vazhakkad ,Vazhakkad  P.O. , Malappuram Dist Pin - 673640',
        about:
            'College of Applied Science  Vazhakkad, is affiliated to the Calicut University and was established in 2005 with regular courses in B.Sc (Computer Science), B.Sc (Electronics) & B.COM with CA',
        phone: ' 0483-2727070',
        mobile: '8547005055',
        email: ' casvazhakkad@ihrd.ac.in',
        website: 'https://casvazhakkad.ihrd.ac.in/',
        nearestRailwayStation: 'Kozhikode – 18 Km',
        nearestBusStand: 'Vazhakkad - 300 M',
        courses: [
          'B.Sc. Computer Science (36 Seats)',
          'B.Sc. Electronics (36 Seats)',
          ' B.COM with CA (36 Seats)',
        ],
        ihrdCourses: [],
      ),
    ),
  )
];
