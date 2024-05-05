import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;

class TendersScreen extends StatefulWidget {
  const TendersScreen({Key? key}) : super(key: key);

  @override
  State<TendersScreen> createState() => _TendersScreenState();
}

class _TendersScreenState extends State<TendersScreen> {
  final List<String> _tenderLinks = <String>[].obs;
  final _tenderTitles = [].obs;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://www.ihrd.ac.in/index.php/resources/tenders-quotation'));
      if (response.statusCode == 200) {
        var document = parser.parse(response.body);
        // Modify the selection according to the actual HTML structure of the page
        var links = document
            .querySelectorAll(
                '.articleBody a') // Modify this selector if needed
            .map((e) => e.text.isEmpty ? null : e.attributes['href'])
            .whereType<String>()
            .toList();
        _tenderLinks.assignAll(links);

        var titles = document
            .querySelectorAll(
                '.articleBody a') // Modify this selector if needed
            .map((e) => e.text.isEmpty ? null : e.text)
            .whereType<String>()
            .toList();
        _tenderTitles.assignAll(titles);
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
        title: const Text("TENDERS"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: isLoading
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: _tenderLinks.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    tileColor: Theme.of(context).colorScheme.primaryContainer,
                    title: Text(
                      _tenderTitles[index],
                      style: TextStyle(
                          color: Theme.of(context).appBarTheme.backgroundColor),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SfPdfViewer.network(
                                    _tenderLinks[
                                        index], // Assuming this is a direct PDF link
                                  )));
                    },
                  ),
                ),
              ),
      ),
    );
  }
}
