import 'package:dio/dio.dart' as dio;
import 'package:http/http.dart' as http;
import 'dart:convert' show json;


class CreateUser {
  final int id;
  final String username;
  final String password;
  final String email;
  final String? firstName;
  final String? lastName;
  final dio.FormData? profilePicture;

  CreateUser({
    required this.id,
    required this.username,
    required this.password,
    required this.email,
    this.firstName,
    this.lastName,
    this.profilePicture,
  });

  void addUser() {
    const url = "http://127.0.0.1:8000";
    http.post(
      Uri.https(url, "/user/"),
      body: json.encode({
        "username": username,
        "password": password,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "pfp": profilePicture,
      }),
    );
  }
}
