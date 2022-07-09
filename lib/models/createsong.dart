

import './user.dart';

class CreateSong {
  final int id;
  final User author;
  final String songFile;
  final String title;
  final double duration;
  final String cover;
  final String createdAt;


  CreateSong({
    required this.id,
    required this.author,
    required this.songFile,
    required this.title,
    required this.duration,
    required this.cover,
    required this.createdAt,
  });
}