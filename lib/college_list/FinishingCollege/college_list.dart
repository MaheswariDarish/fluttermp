// ignore_for_file: non_constant_identifier_names

// This dart file is used for storing the list of details of each IHRD institutions.

//Importing InstitutionObject and College
import 'package:flutter_application_1/institutions/institution_class.dart';

//Importing Engineering College Pages
import 'package:flutter_application_1/institutions/5_model_finishing_college/college_detail/college_page.dart';

//List of Fishing School
final List<InstitutionObject> fishing_school_list = [
  //1
  const InstitutionObject(
      name: 'Model Finishing School',
      page: FinishingSchoolPage(
          college: FinishingSchool(
        name: 'Model Finishing School',
        address: 'Kaloor Stadium, Kochi, Kerala, India.',
        about:
            'The Model Finishing School is a pioneering venture of the Government of Kerala, set up with the purpose of enhancing employability of qualified youths from the State of Kerala. A Government of Kerala (GoK) undertaking, the Model Finishing School is a joint initiative of the IT Department, GoK and the Institute of Human Resources Development (IHRD), with the support of industry-major Infosys. The IHRD is responsible for the day-to-day functioning of the institution.',
        phone: '+91-0484 2985252',
        email: 'mfsekm.ihrd@gmail.com',
        website: 'www.mfsekm.org',
        nearestRailwayStation: 'Kaloor Stadium, Kochi',
        nearestBusStand: '',
      ))),

  //2
  const InstitutionObject(
      name: 'Model Finishing School',
      page: FinishingSchoolPage(
          college: FinishingSchool(
        name: 'Model Finishing School',
        address: 'Kaloor Stadium, Kochi, Kerala, India',
        about:
            'The Model Finishing School is a pioneering venture of the Government of Kerala, set up with the purpose of enhancing employability of qualified youths from the State of Kerala. It is a Government of Kerala (GoK) undertaking and a joint initiative of the IT Department, GoK, and the Institute of Human Resources Development (IHRD), with the support of industry-major Infosys. The IHRD is responsible for the day-to-day functioning of the institution.',
        phone: '+91-0484 2985252',
        email: 'mfsekm.ihrd@gmail.com',
        website: 'www.mfsekm.org',
        nearestRailwayStation: 'Kaloor Stadium, Kochi',
        nearestBusStand: '',
      ))),
];
