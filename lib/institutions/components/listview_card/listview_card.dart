import 'package:flutter/material.dart';
import 'package:flutter_application_1/LaunchURL/launch_url.dart';
import 'package:flutter_application_1/constants.dart';
//page transition
import 'package:page_transition/page_transition.dart';
//to launch a url
import 'package:url_launcher/url_launcher.dart';

class CollegeTile extends StatelessWidget {
  final String imagepath;
  final String name;
  final String websiteURL;
  final Widget page;

  const CollegeTile(
      {super.key,
      required this.imagepath,
      required this.name,
      required this.page,
      required this.websiteURL});

  @override
  Widget build(BuildContext context) {
    final websiteURI = Uri.parse(websiteURL);

    return InkWell(
        //Navigate with transition from right to left
        onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LaunchURL(url: websiteURL)))
            },
        child: Container(
          // color: Colors.grey,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 248, 219, 219),
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //icon
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.circular(10)),
                      height: 50,
                      width: 50,
                      child: Image(
              image: AssetImage(imagepath), 
              width: 40, 
              height: 60, 
            ),
                    )
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.03,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis),
                    ),
                    Text(
                      "IHRD",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.expand_more,
                      color: Colors.grey,
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
