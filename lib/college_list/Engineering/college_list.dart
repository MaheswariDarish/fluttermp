// ignore_for_file: non_constant_identifier_names

// This dart file is used for storing the list of details of each IHRD institutions.

//Importing InstitutionObject and College
import 'package:flutter_application_1/institutions/institution_class.dart';

//Importing Engineering College Pages
import 'package:flutter_application_1/institutions/1_engineering_colleges/college_detail/college_page.dart';

//List of Engineering Colleges
final List<InstitutionObject> engineering_college_list = [
  //1
  const InstitutionObject(
      name: 'Model Engineering College Thrikkakara',
      page: EngCollegePage(
          college: College(
        name: 'Model Engineering College, Thrikkakara',
        address: 'Thrikkakara, Kochi, Kerala 682021',
        about:
            'Model Engineering College was established in 1989 by the IHRD to provide quality engineering education in the industrial centre of Kerala. It was established as a self-financing college with a fair degree of autonomy. The college started functioning in August 1989 in the premises of High School, Edapally with Four degree courses in Biomedical , Computer Science, Electronics Engineering and Electrical engineering and Four Master degree  in Electronics Engineering (VLSI & Embedded Systems),Electronics Engineering (Signal Processing),Electronics Engineering (Opto Electronics),Computer Science & Engineering (Image Processing) . When it was started Model Engineering College was the first self-financing college under the Government of Kerala and was the first college affiliated to CUSAT. The college was shifted to the present campus at Thrikkakara in September 1994 and has grown into an institution of excellence',
        phone: '0484-2575370(O)',
        mobile: '0484-2577379(P)',
        email: "mec@ihrd.ac.in",
        website: 'https://www.mec.ac.in/',
        principal: 'Dr. V P Devassia',
        nearestRailwayStation: 'Ernakulam',
        nearestBusStand: 'Thrikkakara',
        btechCourses: [
          'Computer Science and Engineering : 180 Seats',
          'Computer Science and Business Systems : 60 Seats',
          'Electronics and Communication Engineering : 120 Seats',
          'Electrical and Electronics Engineering : 60 Seats',
          'Electronics & Bio-Medical Engineering : 60 Seats',
          'Mechanical Engineering : 60 Seats',
        ],
        mtechCourses: [
          'Electronics Engineering (VLSI & Embedded Systems) : 24 Seats',
          'Electronics Engineering (Signal Processing) : 18 Seats',
          'Computer Science & Engineering (Data Science ) : 18 Seats',
          'Mechanical Engineering( Energy Management) : 24 Seats',
        ],
        mcaCourses: [],
      ))),

  //2
  const InstitutionObject(
      name: 'College of Engineering Chengannur',
      page: EngCollegePage(
          //College object
          college: College(
        name: 'College of Engineering, Chengannur',
        address: 'Alapuzha District, Kerala, India, Pin:689121',
        about:
            'The College of Engineering Chengannur, was established in the year 1993, with a vision to create engineers having the drive, skill, and confidence to become the pioneers of tomorrow. The college was set up under the auspices of the Institute of Human Resources and Development (IHRD) and is recognized by the All India Council for Technical Education (AICTE), New Delhi. It is affiliated to the Cochin University of Science and Technology (CUSAT) which is known internationally for its academic excellence. The courses offered are designed to cater to the industry’s urgent demand for skilled professionals in the field of Computers and Electronics. ',
        phone: ' 0479-2456046 (P)',
        mobile: '0479-2454125 (O)',
        email: 'cechengannur@ihrd.ac.in',
        website: 'https://www.ceconline.edu/',
        principal: 'Dr. S. Sheela',
        nearestRailwayStation: 'Chengannur',
        nearestBusStand: 'Chengannur',
        btechCourses: [
          'Computer Science and Engineering : 180 Seats',
          'Electronics and Communication Engineering : 180 Seats',
          'Electrical and Electronics Engineering : 180 Seats',
          'Electronics and Instrumentation Engineering: 60 Seats',
        ],
        mtechCourses: [
          'Computer Science & Engineering (Digital Image Processing ) : 18 Seats',
          'Electronics Engineering (VLSI & Embedded Systems) : 18 Seats',
        ],
        mcaCourses: [
          'Master of Computer Applications : 60 Seats',
        ],
      ))),

  //3
  const InstitutionObject(
      name: 'College of Engineering Adoor',
      page: EngCollegePage(
          college: College(
        name: 'College of Engineering, Adoor',
        address:
            'Manakkala P.O, Adoor, Pathanamthitta, Kerala, India, Pin:691551',
        about:
            'College of Engineering Adoor (CEA) is a premier institute of engineering that has carved a niche for itself in the field of technical education in a very short span of time. The college is affiliated to the APJ Abdul Kalam Technological University and is approved by the All India Council for Technical Education (AICTE). The college is managed by the Institute of Human Resources Development (IHRD), a government of Kerala undertaking. The college is located at Manakkala, Adoor, in Pathanamthitta district of Kerala. The college is situated in a serene campus of 25 acres, amidst lush greenery and provides an ideal environment for academic excellence. The college offers B.Tech courses in Computer Science and Engineering, Electronics and Communication Engineering, Electrical and Electronics Engineering and Mechanical Engineering. The college also offers M.Tech courses in Computer Science and Engineering and Electronics and Communication Engineering.',
        phone: '4734-230640(P)',
        mobile: '8547005100',
        email: 'ceadoor@ihrd.ac.in',
        website: 'https://www.ceadoor.ihrd.ac.in/',
        principal: 'Dr. S. Sheela',
        nearestRailwayStation: 'Chengannur',
        nearestBusStand: 'Adoor',
        btechCourses: [
          'Computer Science and Engineering : 60 Seats',
          'Electronics and Communication Engineering : 60 Seats',
          'Electrical and Electronics Engineering : 60 Seats',
          'Mechanical Engineering : 120 Seats',
        ],
        mtechCourses: [
          'Mechanical Enginnering ( Thermal Engineering) : 18 Seats',
        ],
        mcaCourses: [],
      ))),

  //4
  const InstitutionObject(
      name: 'College of Engineering Kallooppara',
      page: EngCollegePage(
        college: College(
            name: 'College of Engineering, Kallooppara',
            address: 'Kallooppara, Pathanamthitta, Kerala 689583',
            about:
                'College of Engineering Kallooppara (CEK) is a premier institute of engineering that has carved a niche for itself in the field of technical education in a very short span of time. The college is affiliated to the APJ Abdul Kalam Technological University and is approved by the All India Council for Technical Education (AICTE). The college is managed by the Institute of Human Resources Development (IHRD), a government of Kerala undertaking. The college is located at Kallooppara, in Pathanamthitta district of Kerala. The college is situated in a serene campus of 25 acres, amidst lush greenery and provides an ideal environment for academic excellence. The college offers B.Tech courses in Computer Science and Engineering, Electronics and Communication Engineering, Electrical and Electronics Engineering and Mechanical Engineering. The college also offers M.Tech courses in Computer Science and Engineering and Electronics and Communication Engineering.',
            phone: '0469-2677890',
            mobile: '8547005034',
            email: ' principal@cek.ac.in',
            website: 'https://www.cek.ac.in/',
            principal: 'Dr. S. Sheela',
            nearestRailwayStation: 'Chengannur',
            nearestBusStand: 'Kallooppara',
            btechCourses: [
              'Computer Science and Engineering : 60 Seats',
              'Electronics and Communication Engineering : 60 Seats',
              'Electrical and Electronics Engineering : 60 Seats',
              'Computer Science and Engineering (Cyber Security) : 60 Seats',
            ],
            mtechCourses: [
              'Computer Science (Cyber Forensics and Information Security) : 18 Seats',
            ],
            mcaCourses: [],
            vocCourses: [
              'B.Voc -Electronics Manufacturing Services : 30 Seats',
              'B.Voc - Software Development: 30 Seats',
              'D.Voc -Electronics Manufacturing Services : 30 Seats',
              'D.Voc - Software Development: 30 Seats'
            ]),
      )),
  //5
  const InstitutionObject(
      name: 'College of Engineering Cherthala',
      page: EngCollegePage(
          college: College(
        name: 'College of Engineering, Cherthala',
        address: 'Pallippuram, Cherthala, Alappuzha, Kerala 688541',
        about:
            'College of Engineering, Cherthala (CEC) is a premier institute of engineering that has carved a niche for itself in the field of technical education in a very short span of time. The college is affiliated to the APJ Abdul Kalam Technological University and is approved by the All India Council for Technical Education (AICTE). The college is managed by the Institute of Human Resources Development (IHRD), a government of Kerala undertaking. The college is located at Pallippuram, Cherthala, in Alappuzha district of Kerala. The college is situated in a serene campus of 25 acres, amidst lush greenery and provides an ideal environment for academic excellence. The college offers B.Tech courses in Computer Science and Engineering, Electronics and Communication Engineering, Electrical and Electronics Engineering and Mechanical Engineering. The college also offers M.Tech courses in Computer Science and Engineering and Electronics and Communication Engineering.',
        phone: '4782552714',
        mobile: '4782553416',
        email: 'cecerthala@ihrd.ac.in',
        website: 'https://www.cecherthala.ac.in/',
        principal: 'Dr. S. Sheela',
        nearestRailwayStation: 'Cherthala',
        nearestBusStand: 'Cherthala',
        btechCourses: [
          'Computer Science and Engineering : 90 Seats',
          'Electronics and Communication Engineering : 60 Seats',
          'Electrical and Electronics Engineering : 60 Seats',
        ],
        mtechCourses: [
          'Electronics Engineering ( Signal Processing) : 24 Seats',
          '	Computer Science Engineering ( Computer and Information Science) : 24 Seats',
        ],
        mcaCourses: [],
      ))),

  //6
  const InstitutionObject(
      name: 'College of Engineering, Karunagappally',
      page: EngCollegePage(
        college: College(
            name: 'College of Engineering, Karunagappally',
            address: 'Karunagappally, Kollam, Kerala 690523',
            about:
                'College of Engineering, Karunagappally (CEK) is a premier institute of engineering that has carved a niche for itself in the field of technical education in a very short span of time. The college is affiliated to the APJ Abdul Kalam Technological University and is approved by the All India Council for Technical Education (AICTE). The college is managed by the Institute of Human Resources Development (IHRD), a government of Kerala undertaking. The college is located at Karunagappally, in Kollam district of Kerala. The college is situated in a serene campus of 25 acres, amidst lush greenery and provides an ideal environment for academic excellence. The college offers B.Tech courses in Computer Science and Engineering, Electronics and Communication Engineering, Electrical and Electronics Engineering and Mechanical Engineering. The college also offers M.Tech courses in Computer Science and Engineering and Electronics and Communication Engineering.',
            phone: ' 0476- 2666160(P)',
            mobile: '0476- 2665935(O)',
            email: 'cekarunagappally@ihrd.ac.in',
            website: 'https://www.ceknpy.ac.in/',
            principal: 'Dr. S. Sheela',
            nearestRailwayStation: 'Karunagappally',
            nearestBusStand: 'Karunagappally',
            btechCourses: [
              'Computer Science and Engineering : 60 Seats',
              'Electronics and Communication Engineering : 60 Seats',
              'Electrical and Electronics Engineering : 60 Seats',
              'Mechanical Engineering : 60 Seats',
            ],
            mtechCourses: [
              'Computer Science Engineering ( Image Processing) : 24 Seats',
              'Electronics Engineering ( Signal Processing) : 24 Seats',
            ],
            mcaCourses: [],
            vocCourses: [
              '	D.Voc- Artficial Intelligence and Robotics : 30 Seats',
              'D.Voc- Computer Hardware and Networking : 30 Seats',
            ]),
      )),
  const InstitutionObject(
      name: 'College of Engineering, Kottarakkara',
      page: EngCollegePage(
        college: College(
          name: 'College of Engineering, Kottarakkara',
          address: 'Kottarakkara, Kollam, Kerala 691531',
          about:
              'Run by IHRD, College of Engineering, Kottarakkara has been the leading technical institution in Kerala since it\'s venture in 2004. Affiliated to CUSAT, CE Kottarakkara offers B.Tech in Computer Science & Engineering, Electronics & Communication Engineering, reflecting the modern technological advancements through its updated syllabi. The institution is approved by AICTE, New Delhi and affiliated to CUSAT. It is under the management of IHRD (Institute of Human Resources Development), a Kerala Government undertaking.',
          phone: ' 0474-2453300',
          mobile: '8547005039',
          email: 'cekottarakkara@ihrd.ac.in',
          website: 'https://cekottarakkara.ihrd.ac.in/',
          principal: 'Dr. S. Sheela',
          nearestRailwayStation: 'Kottarakkara',
          nearestBusStand: 'Kottarakkara',
          btechCourses: [
            'Computer Science and Engineering : 120 Seats',
            'Computer Science and Engineering (Artificial Intelligence and Machine Learning) : 60 Seats',
            'Electronics & Communication Engineering : 30 Seats',
          ],
          mtechCourses: [],
          mcaCourses: [],
        ),
      )),
  const InstitutionObject(
      name: 'College of Engineering Attingal',
      page: EngCollegePage(
          college: College(
        name: 'College of Engineering, Attingal',
        address: 'Attingal, Thiruvananthapuram, Kerala 695101',
        about:
            'College of Engineering Attingal, established by the Institute of Human Resources Development (IHRD), a Government of Kerala undertaking,is a premier technical institute having well flourished environment for moulding professionals. College of Engineering Attingal, started functioning in the academic year 2003-2004.The Institution has gained the approval of the All India Council for Technical Education and is an affiliated institution under KTU.',
        phone: '0470-2627400 (O)',
        mobile: '8547005037',
        email: 'ceattingal@ihrd.ac.in',
        website: 'http://www.ceattingal.ac.in/',
        principal: 'Dr. S. Sheela',
        nearestRailwayStation: 'Attingal',
        nearestBusStand: 'Attingal',
        btechCourses: [
          'Computer Science and Engineering : 60 Seats',
          'Electronics and Communication Engineering : 60 Seats',
          'Electrical and Electronics Engineering : 60 Seats',
          'Computer Science & Engineering (Artificial Intelligence and Machine Learning) : 60 Seats',
        ],
        mtechCourses: [],
        mcaCourses: [],
      ))),
  const InstitutionObject(
      name: 'College Of Engineering Poonjar',
      page: EngCollegePage(
          college: College(
              name: 'College of Engineering, Poonjar',
              address: 'Poonjar Thekkekara P.O, Kottayam, Kerala 686582',
              about:
                  'College of Engineering, Poonjar is established by the Institute of Human Resources Development (IHRD), a Government of Kerala Undertaking. IHRD is a pioneer educational organization supported by Kearla Government  College of Engineering, Poonjar started its functioning in the academic year 2000-2001. The College is affiliated to the prestigious Cochin University of Science and Technology (CUSAT). Currently the institution offers  M.Tech in Electronics Engineering ( Signal Processing)  and Computer and information Science  and B.Tech Degree in Computer Science and Engineering, Electronics and Communication Engineering, Electrical and Electronics Engineering. The institution is approved by AICTE, New Delhi and affiliated to CUSAT. It is under the management of IHRD (Institute of Human Resources Development) , a Kerala Government undertaking.',
              phone: '04822-271202',
              mobile: '8547005038',
              email: '',
              website: 'https://www.cepoonjar.ac.in/',
              principal: 'Dr. S. Sheela',
              nearestRailwayStation: 'Poonjar',
              nearestBusStand: 'Poonjar',
              btechCourses: [
            'Computer Science and Engineering : 60 Seats',
          ],
              mtechCourses: [],
              mcaCourses: [],
              masterCourses: [
            'Master of Computer Applications : 30 Seats',
          ],
              diplomaCourses: [
            'Computer Engineering : 60 Seats',
            'Electronics Engineering : 60 Seats',
            'Electrical and Electronics Engineering : 60 Seats',
          ]))),
];
