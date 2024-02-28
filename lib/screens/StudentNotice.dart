import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PdfViewerSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer Sample'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PdfViewerPage(),
              ),
            );
          },
          child: Text('Open PDF'),
        ),
      ),
    );
  }
}

class PdfViewerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewersss'),
      ),
      body: PDFView(
        filePath: 'https://mrcet.com/downloads/digital_notes/CSE/II%20Year/DBMS.pdf', // Sample PDF URL
      ),
    );
  }
}


