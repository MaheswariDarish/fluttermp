import 'package:flutter/material.dart';
import 'package:flutter_application_1/LaunchURL/launch_url.dart';

class TendersScreen extends StatelessWidget {
  const TendersScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tenders'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => LaunchURL(
                    url:
                        "https://www.ihrd.ac.in/index.php/resources/tenders-quotation")));
          },
          child: const Text("view Tenders"),
        ),
      ),
    );
  }
}
