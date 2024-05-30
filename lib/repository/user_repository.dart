import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:fithub/models/user.dart';

class UserRepository {
  final String baseUrl;

  UserRepository({required this.baseUrl});

  Future<User> fetchUser(int id) async {
    final response = await http.get(Uri.parse('$baseUrl/users/$id'));

    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load user');
    }
  }

  Future<void> createUser(User user) async {
    final response = await http.post(
      Uri.parse('$baseUrl/users'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(user.toJson()),
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to create user');
    }
  }
  
}