import 'package:flutter/material.dart';
import 'package:flutter_application_1/LaunchURL/launch_url.dart';
import 'package:flutter_application_1/screens/Btech.dart';

class AdmissionsScreen extends StatelessWidget {
  const AdmissionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admissions'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Handle onPressed for first button
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    // builder: (context) => LaunchURL(url: 'https://ihrd.ac.in/index.php/admissions/b-tech-m-tech-admission-in-engineering'),
                    builder: (context) => const BtechPage(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'BTECH/MTECH ADMISSIONS IN ENGINEERING COLLEGES',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 30), // Adding some space between buttons
            ElevatedButton(
              onPressed: () {
                // Handle onPressed for second button
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LaunchURL(
                        url:
                            'https://ihrd.ac.in/index.php/admissions/ug-pg-admission-in-cas'),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'UG/PG Admission in the Colleges of Applied Sciences',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 30), // Adding some space between buttons
            ElevatedButton(
              onPressed: () {
                // Handle onPressed for second button
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LaunchURL(
                        url:
                            'https://ihrd.ac.in/index.php/admissions/diploma-admission-in-the-polytechnics'),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Diploma Admission in the Polytechnics Colleges',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 30), // Adding some space between buttons
            ElevatedButton(
              onPressed: () {
                // Handle onPressed for second button
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LaunchURL(
                        url:
                            'https://ihrd.ac.in/index.php/admissions/admission-in-technical-higher-secondary-school'),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Admission in Technical Higher Secondary School ',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
