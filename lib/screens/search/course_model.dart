import 'package:flutter/material.dart';

class InstitutionObject {
  final String name;
  final Widget page;

  InstitutionObject({required this.name, required this.page});
}

class CourseModal extends InstitutionObject {
  final String courseName;
  final String collegeName;

  CourseModal({
    required this.courseName,
    required this.collegeName,
    required Widget page,
  }) : super(name: courseName, page: page);
}
