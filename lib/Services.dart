// This class will call the service and get the data.Then we will parse the data to get the list of the users.

import 'dart:convert';
import 'package:filtering_textfiled/user.dart';
import 'package:http/http.dart' as http;

class Services {
  static Future<List<User>> getUsers() async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
      if (response.statusCode == 200) {
        List<User> list = parseUsers(response.body);
        return list;
      } else {
        throw Exception("Error");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static List<User> parseUsers(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<User>((json) => User.fromJson(json)).toList();
    // map each user to a user object and covert it into the list
  }
}
