import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LaunchURL extends StatefulWidget {
  String url;
  LaunchURL({super.key, required this.url});

  @override
  State<LaunchURL> createState() => _LaunchURLState();
}

class _LaunchURLState extends State<LaunchURL> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse(widget.url),
      );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async => {
        if (await controller.canGoBack())
          {controller.goBack()}
        else
          {Navigator.pop(context)}
      },
      child: Scaffold(
        //appbar
        appBar: AppBar(
          elevation: 0,
          backgroundColor: mainColor,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          iconTheme: const IconThemeData(color: Colors.grey, size: 28),
          title: Text(
            "IHRD App",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          // actions: [
          //   IconButton(
          //     onPressed: () {},
          //     icon: const Icon(
          //       Icons.search,
          //       color: Colors.white,
          //     ),
          //   ),
          //   IconButton(
          //     onPressed: () {},
          //     icon: const Icon(
          //       Icons.notifications,
          //       color: Colors.white,
          //     ),
          //   ),
          // ],
        ),
        body: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}
