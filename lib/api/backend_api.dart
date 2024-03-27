import 'dart:convert';
import './secret.dart';
import 'package:http/http.dart' as http;

Future<List<dynamic>> getAnnouncements() async {
  //Create fake future
  // return Future.delayed(Duration(seconds: 2), () {
  //   return [
  //     {"title": "Lorem ipsum dolor sit amet, consectetur adipiscing elit."},
  //     {
  //       "title":
  //           "Vestibulum condimentum eros non ipsum porttitor, id condimentum mauris cursus."
  //     },
  //     {"title": "Sed in sem et elit pharetra dapibus."},
  //     // Add more fake announcements here
  //   ];
  // });
  try {
    final response = await http.get(Uri.parse('$backendUrl/getAnnouncements'));
    final result = jsonDecode(response.body);
    return result;
  } catch (e) {
    print(e);
    return [];
  }
}
