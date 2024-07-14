import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'localhost:5000'; // Adjust according to your Flask API URL

  static Future<List<dynamic>> getColleges(String rankCategory, String courseName, int rank) async {
    final Uri uri = Uri.http(baseUrl, '/get_colleges', {
      'rank_category': rankCategory,
      'course_name': courseName,
      'rank': rank.toString(),
    });

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load colleges');
    }
  }
}
