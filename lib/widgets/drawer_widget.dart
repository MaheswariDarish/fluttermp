import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_application_1/institutions/1_engineering_colleges/engcollege_list.dart';
import 'package:flutter_application_1/institutions/2_poly_colleges/poly_college_list.dart';
import 'package:flutter_application_1/institutions/3_applied_science/appliedscience_list.dart';
import 'package:flutter_application_1/LaunchURL/launch_url.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      child: Center( // Centering the entire drawer content
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 20),
            DrawerItem(
              title: "About",
              routeName: '/about',
            ),
            DrawerItem(
              title: "Profile",
              routeName: '/profile',
            ),
            DrawerItem(
              title: "Settings",
              routeName: '/settings',
            ),
            ExpansionTile(
              title: Text(
                'Institution',
                style: TextStyle(color: Colors.white, fontSize: 25), textAlign: TextAlign.center,
              ),
              children: <Widget>[
                
                ListTile(
                  title: const Text('Engineering Colleges', style: TextStyle(color: Colors.white, fontSize: 20),textAlign:TextAlign.center),
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: EngCollegeList(),
                        duration: const Duration(milliseconds: 250),
                        reverseDuration:
                            const Duration(microseconds: 500),
                      ),
                    );
                  },
                ),
                ListTile(title: Text('Applied', style: TextStyle(color: Colors.white, fontSize: 20),textAlign:TextAlign.center),
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child:  AppliedScienceUniversities(),
                        duration: const Duration(milliseconds: 250),
                        reverseDuration:
                            const Duration(microseconds: 500),
                      ),
                    );
                  },
                ),
                ListTile(title: Text('Poly', style: TextStyle(color: Colors.white, fontSize: 20),textAlign:TextAlign.center),
                 onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: PolyCollegeList(),
                        duration: const Duration(milliseconds: 250),
                        reverseDuration:
                            const Duration(microseconds: 500),
                      ),
                    );
                  },),
              ],
            ),
            ExpansionTile(
                title: Text('Services',style: TextStyle(color: Colors.white, fontSize: 25), textAlign: TextAlign.center,),
                children: <Widget>[
                  ListTile(
                    title: Text('Information Technology', style: TextStyle(color: Colors.white, fontSize: 20),textAlign:TextAlign.center),
                    onTap: () => {
                      // launchUrl(
                      //   Uri.parse(
                      //       "https://ihrd.ac.in/index.php/services/it-division"),
                      //   mode: LaunchMode.inAppWebView,
                      // ),
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LaunchURL(
                                  url:
                                      "https://ihrd.ac.in/index.php/services/it-division")))
                    },
                  ),
                  ListTile(
                    title: Text('Production and Maintenance', style: TextStyle(color: Colors.white, fontSize: 20),textAlign:TextAlign.center),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LaunchURL(
                                  url:
                                      "https://ihrd.ac.in/index.php/services/production-and-maintenance-division")))
                    },
                  ),
                  ListTile(
                    title: Text('Research and Development', style: TextStyle(color: Colors.white, fontSize: 20),textAlign:TextAlign.center),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LaunchURL(
                                  url:
                                      "https://ihrd.ac.in/index.php/services/research-and-development")))
                    },
                  ),
                  ListTile(
                    title: Text('National Service Scheme', style: TextStyle(color: Colors.white, fontSize: 20),textAlign:TextAlign.center),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LaunchURL(
                                  url:
                                      "https://ihrd.ac.in/index.php/services/national-service-schme")))
                    },
                  ),
                  ListTile(
                    title: Text('Faculty Development', style: TextStyle(color: Colors.white, fontSize: 20),textAlign:TextAlign.center),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LaunchURL(
                                  url:
                                      "https://ihrd.ac.in/index.php/services/faculty-development")))
                    },
                  ),
                  ListTile(
                    title: Text('Right to Information Act', style: TextStyle(color: Colors.white, fontSize: 20),textAlign:TextAlign.center),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LaunchURL(
                                  url:
                                      "https://ihrd.ac.in/index.php/services/rti")))
                    },
                  ),
                  ListTile(
                    title: Text('Student Verification', style: TextStyle(color: Colors.white, fontSize: 20),textAlign:TextAlign.center),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LaunchURL(
                                  url:
                                      "https://ihrd.ac.in/index.php/services/student-verification")))
                    },
                  ),
                  ListTile(
                    title: Text('Download Forms', style: TextStyle(color: Colors.white, fontSize: 20),textAlign:TextAlign.center),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LaunchURL(
                                  url:
                                      "https://ihrd.ac.in/index.php/services/download-forms")))
                    },
                  ),
                  ListTile(
                    title: Text('IHRD Web Mail', style: TextStyle(color: Colors.white, fontSize: 20),textAlign:TextAlign.center),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LaunchURL(
                                  url: "https://webmail.ihrd.ac.in/")))
                    },
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final String routeName;

  const DrawerItem({Key? key, required this.title, required this.routeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).appBarTheme.backgroundColor!.withOpacity(0.8),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, routeName);
        },
      ),
    );
  }
}
