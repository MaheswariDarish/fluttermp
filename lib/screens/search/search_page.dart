import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/screens/search/course_model.dart';
import 'package:flutter_application_1/college_list/Engineering/college_list.dart';
import 'package:flutter_application_1/institutions/1_engineering_colleges/college_detail/college_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchState();
}

class _SearchState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();

  //Dummy List of Courses and Colleges
  static List<CourseModal> course_list = [
    //Courses
    CourseModal(
        courseName: "Electronics and Communication Engineering ",
        collegeName: "MEC, Ernakulam",
        page: engineering_college_list[0].page),
    CourseModal(
        collegeName: "MEC, Ernakulam",
        courseName: "Computer Science and Engineering",
        page: engineering_college_list[0].page),
    CourseModal(
        collegeName: "MEC, Ernakulam",
        courseName: "Electrical and Electronics Engineering",
        page: engineering_college_list[0].page),
    CourseModal(
        collegeName: "MEC, Ernakulam",
        courseName: "Mechanical Engineering",
        page: engineering_college_list[0].page),
    CourseModal(
        collegeName: "MEC, Ernakulam",
        courseName: "Computer Science and Business systems",
        page: engineering_college_list[0].page),

    CourseModal(
        collegeName: "CE, Chengannur",
        courseName: "Computer Science and Engineering",
        page: engineering_college_list[1].page),

    CourseModal(
        collegeName: "CE, Chengannur",
        courseName: "Electronics and Communication Engineering",
        page: engineering_college_list[1].page),

    CourseModal(
        collegeName: "CE, Chengannur",
        courseName: "Electrical and Electronics Engineering",
        page: engineering_college_list[1].page),

    CourseModal(
        collegeName: "CE, Adoor",
        courseName: "Electronics and Communication Engineering",
        page: engineering_college_list[2].page),

    CourseModal(
        collegeName: "CE, Adoor",
        courseName: "Mechanical Engineering ",
        page: engineering_college_list[2].page),

    CourseModal(
        collegeName: "CE, Adoor",
        courseName: "Computer Science and Engineering",
        page: engineering_college_list[2].page),

    CourseModal(
        collegeName: "CE, Adoor",
        courseName: "Electrical and Electronics Engineering",
        page: engineering_college_list[2].page),
  ];

  //List to Display and Filter
  List<CourseModal> searchList = List.from(course_list);

  //Function to Filter List
  List<CourseModal> result = [];
  void updateList(String searchTerms) {
    setState(() {
      result = course_list
          .where((element) => element.courseName
              .toLowerCase()
              .contains(searchTerms.toLowerCase()))
          .toList();
    });

    setState(() {
      searchList = result;
    });
  }

  void navigateToPage(Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 35,
          child: TextField(
            onChanged: (value) => updateList(value),
            controller: _searchController,
            maxLines: 1,
            style: const TextStyle(fontSize: 13),
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 15),
              hintText: 'Search',
              filled: true,
              suffixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(100.0),
                ),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: mainColor,
        iconTheme: const IconThemeData(color: Colors.white, size: 28),
      ),
      body: ListView.builder(
        itemCount: searchList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                searchList[index].courseName,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                searchList[index].collegeName,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Navigate to the selected page
                navigateToPage(searchList[index].page);
              },
            ),
          );
        },
      ),
    );
  }
}
