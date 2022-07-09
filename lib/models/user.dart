import 'package:dio/dio.dart' as dio;

class User {
  final int id;
  final String username;
  final String email;
  final String? firstName;
  final String? lastName;
  final dio.FormData? profilePicture;

  User({
    required this.id,
    required this.username,
    required this.email,
    this.firstName,
    this.lastName,
    this.profilePicture,
  });


  void getUser() {

  }

  void updateUser() {

  }

  void deleteUser() {
    
  }

}
