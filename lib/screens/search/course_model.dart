class InstitutionObject {
  final String name;
  final String page;
  
  InstitutionObject({required this.name, required this.page});
}

class CourseModal extends InstitutionObject {
  final String courseName;
  final String collegeName;

  CourseModal({
    required this.courseName,
    required this.collegeName,
    required String page,
  }) : super(name: courseName, page: page);
}

