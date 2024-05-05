import 'package:flutter/material.dart';
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:url_launcher/url_launcher.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key});

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<String> scrapedHeadings = [];
  List<String> pdfLinks = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    extractData();
  }

  Future<void> extractData() async {
    final response = await http.Client().get(Uri.parse('https://ihrd.ac.in/index.php/admissions/b-tech-m-tech-admission-in-engineering'));

    if (response.statusCode == 200) {
      var document = parser.parse(response.body);
      try {
        // Use the CSS selector to target the specific elements
        List<dom.Element> linkElements = document.querySelectorAll('a[href*=".pdf"]');

        for (int i = 1; i <= 3; i++) {
          if (i < linkElements.length) {
            var element = linkElements[i];
            String heading = element.text;
            String pdfLink = 'https://ihrd.ac.in' + (element.attributes['href'] ?? '');
            setState(() {
              scrapedHeadings.add(heading);
              pdfLinks.add(pdfLink);
            });
          }
        }
      } catch (e) {
        print('Error: $e');
      }
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: isLoading
            ? CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < scrapedHeadings.length; i++)
                    ElevatedButton(
                      onPressed: () {
                        launchPDF(pdfLinks[i]);
                      },
                      child: Text(scrapedHeadings[i]),
                    ),
                ],
              ),
      ),
    );
  }

  // Function to launch PDF link
  void launchPDF(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
