import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  String _header = '';
  List<String> _paragraphs = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response = await http
          .get(Uri.parse('https://www.ihrd.ac.in/index.php/profile/about-us'));
      if (response.statusCode == 200) {
        var document = parser.parse(response.body);

        var paragraphElements = document.querySelectorAll('.item-page p');
        _paragraphs = paragraphElements.map((e) => e.text).toList();
      } else {
        Get.snackbar('Error',
            'Failed to load data with status code: ${response.statusCode}');
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to load data: $e');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Theme.of(context).colorScheme.background),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("ABOUT US"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: isLoading
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "IHRD",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).appBarTheme.backgroundColor,
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _paragraphs
                          .map((paragraph) => Container(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                                padding: const EdgeInsets.all(16),
                                child: Text(
                                  paragraph,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                ),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
