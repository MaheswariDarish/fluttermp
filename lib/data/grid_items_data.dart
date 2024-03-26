import 'package:flutter_application_1/models/grid_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/gridScreens/AdmissionsScreen.dart';
import 'package:flutter_application_1/screens/gridScreens/EmploymentScreen.dart';
import 'package:flutter_application_1/screens/gridScreens/MessageScreen.dart';
import 'package:flutter_application_1/screens/gridScreens/NoticePage.dart';
import 'package:flutter_application_1/screens/gridScreens/StudentNoticeScreen.dart';
import 'package:flutter_application_1/screens/gridScreens/TendersScreen.dart';

final gridItemsData = [
  GridItem(
      id: 'A',
      icon: Icons.message,
      title: 'Message',
      screen: const MessageScreen()),
  GridItem(
      id: 'B',
      icon: Icons.people,
      title: 'Employment',
      screen: const EmploymentScreen()),
  GridItem(
      id: 'C',
      icon: Icons.info_outline,
      title: 'Public Notice',
      screen: const NoticePage()),
  GridItem(
      id: 'D',
      icon: Icons.school,
      title: 'Students notice',
      screen: const StudentNoticeScreen()),
  GridItem(
      id: 'E',
      icon: Icons.how_to_reg,
      title: 'Tenders',
      screen: const TendersScreen()),
  GridItem(
      id: 'F',
      icon: Icons.work_outline,
      title: 'Admissions',
      screen: const AdmissionsScreen())
];
