import 'package:flutter/material.dart';
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'adm/btechadm/page1.dart';
import 'adm/btechadm/page2.dart';

class BtechPage extends StatefulWidget {
  const BtechPage({Key? key});

  @override
  _BtechPageState createState() => _BtechPageState();
}

class _BtechPageState extends State<BtechPage> {
  List<String> scrapedHeadings = [];
  bool isLoading = true; // Initially set to true to show loading indicator

  @override
  void initState() {
    super.initState();
    // Call the function to scrape data when the widget is initialized
    extractData();
  }

  Future<void> extractData() async {
    final response = await http.Client().get(Uri.parse('https://ihrd.ac.in/index.php/admissions/b-tech-m-tech-admission-in-engineering'));

    if (response.statusCode == 200) {
      var document = parser.parse(response.body);
      try {
        // Use the CSS selector to target the specific elements
        List<dom.Element> headingElements = document.querySelectorAll('#jsn-mainbody > div.item-page > div.articleBody > table > tbody > tr > td > strong');
        
        // Extract the text from each heading element
        for (var element in headingElements) {
          // Check if the text contains "notification" or "prospectus"
          if (!element.text.toLowerCase().contains('notification') && !element.text.toLowerCase().contains('prospectus') && !element.text.toLowerCase().contains('online application')) {
            scrapedHeadings.add(element.text);
          }
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
  
  // Function to handle button press and navigate to a new page
  void navigateToPage(String heading) {
    if (heading == scrapedHeadings[0]) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Page1()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Page2()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Btech Page')),
      body: Center(
        child: isLoading
            ? CircularProgressIndicator() // Show loading indicator while data is being fetched
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (String heading in scrapedHeadings)
                    ElevatedButton(
                      onPressed: () {
                        navigateToPage(heading);
                      },
                      child: Text(heading),
                    ),
                ],
              ),
      ),
    );
  }
}
