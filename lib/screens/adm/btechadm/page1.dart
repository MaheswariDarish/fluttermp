import 'package:flutter/material.dart';
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:url_launcher/url_launcher.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key});

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String? heading;
  String? pdfLink;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    // Call the function to extract data when the widget is initialized
    extractData();
  }

  Future<void> extractData() async {
    setState(() {
      isLoading = true;
    });

    final response = await http.Client().get(Uri.parse('https://ihrd.ac.in/index.php/admissions/b-tech-m-tech-admission-in-engineering'));

    if (response.statusCode == 200) {
      var document = parser.parse(response.body);
      try {
        // Use the CSS selector to target the specific elements
        List<dom.Element> linkElements = document.querySelectorAll('a[href*=".pdf"]');

        // Extract the text and href attribute from the first link element
        if (linkElements.isNotEmpty) {
          var element = linkElements.first;
          heading = element.text;
          pdfLink = 'https://ihrd.ac.in' + (element.attributes['href'] ?? '');
        }

        // Update state to trigger UI rebuild and hide loading indicator
        setState(() {
          isLoading = false;
        });
      } catch (e) {
        setState(() {
          isLoading = false;
        });
      }
    } else {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: isLoading
            ? CircularProgressIndicator() // Show loading indicator while data is being fetched
            : ElevatedButton(
                onPressed: () {
                  launchPDF(pdfLink!);
                },
                child: Text(heading!),
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
