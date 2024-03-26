import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/gridScreens/NoticePage.dart';
import 'package:http/http.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:get/get.dart';

class PdfViewerSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text('STUDENT NOTICE'),
        centerTitle: true,
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Get.to(()=>NoticePage());
      //     },
      //     child: Text('Open PDF'),
      //   ),
      // ),
    );
  }
}
