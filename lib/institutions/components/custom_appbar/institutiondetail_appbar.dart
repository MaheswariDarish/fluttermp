import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/constants.dart';

//Blue Colured Custom AppBar

class CustomAppBar extends StatelessWidget {
  final String collegeName;
  final String collegeAddress;
  const CustomAppBar(
      {super.key, required this.collegeName, required this.collegeAddress});

  @override
   @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      padding: const EdgeInsets.fromLTRB(20, 0, 10, 5),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color.fromARGB(255, 145, 7, 110), Color.fromARGB(255, 99, 6, 57)],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Text(
              collegeName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: mainheading,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Location Icon
                SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                const Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 18,
                ),
                const SizedBox(
                  width: 5.0,
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    collegeAddress,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                          fontSize: subheading,
                          color: Colors.white,
                          letterSpacing: .3),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
