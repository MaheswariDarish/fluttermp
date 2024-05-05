import 'package:flutter/material.dart';
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as dom;

class BtechPage extends StatefulWidget {
  const BtechPage({Key? key});

  @override
  _BtechPageState createState() => _BtechPageState();
}

class _BtechPageState extends State<BtechPage> {
  List<String> scrapedHeadings = [];
  bool isLoading = false;

  Future<void> extractData() async {
    setState(() {
      isLoading = true;
    });

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
        
        // Update state to trigger UI rebuild
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
      appBar: AppBar(title: Text('Btech Page')),
      body: Center(
        child: isLoading
            ? CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (String heading in scrapedHeadings)
                    ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      child: Text(heading),
                    ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                  ElevatedButton(
                    onPressed: extractData,
                    child: Text('Scrape Data'),
                  ),
                ],
              ),
      ),
    );
  }
}
