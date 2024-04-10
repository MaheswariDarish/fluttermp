import 'package:flutter/material.dart';
import 'package:flutter_application_1/LaunchURL/launch_url.dart';
class AdmissionsScreen extends StatelessWidget {
  const AdmissionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admissions'),
        centerTitle: true,
      ),
      body: Center(
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     ElevatedButton(
        //       onPressed: () {
        //         // Handle onPressed for first button
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => LaunchURL(url: 'https://ihrd.ac.in/index.php/admissions/b-tech-m-tech-admission-in-engineering'),
        //           ),
        //         );
        //       },
        //       child: Text('BTECH/MTECH ADMISSIONS IN ENGINEERING COLLEGES'),
        //     ),
        //     SizedBox(height: 20), // Adding some space between buttons
        //     ElevatedButton(
        //       onPressed: () {
        //         // Handle onPressed for second button
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => LaunchURL(url: 'https://ihrd.ac.in/index.php/admissions/ug-pg-admission-in-cas'),
        //           ),
        //         );
        //       },
        //       child: Text('UG/PG Admission in the Colleges of Applied Sciences'),
        //     ),
        //     SizedBox(height: 20), // Adding some space between buttons
        //     ElevatedButton(
        //       onPressed: () {
        //         // Handle onPressed for second button
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => LaunchURL(url: 'https://ihrd.ac.in/index.php/admissions/diploma-admission-in-the-polytechnics'),
        //           ),
        //         );
        //       },
        //       child: Text('Diploma Admission in the Polytechnics Colleges'),
        //     ),
        //      SizedBox(height: 20), // Adding some space between buttons
        //     ElevatedButton(
        //       onPressed: () {
        //         // Handle onPressed for second button
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => LaunchURL(url: 'https://ihrd.ac.in/index.php/admissions/admission-in-technical-higher-secondary-school'),
        //           ),
        //         );
        //       },
        //       child: Text('Admission in Technical Higher Secondary School '),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
