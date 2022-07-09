

import './user.dart';

class Song {
  final int id;
  final User author;
  final String title;
  final String songFile;
  final double duration;
  final String cover;
  final String createdAt;

  Song({
    required this.id,
    required this.author,
    required this.title,
    required this.songFile,
    required this.duration,
    required this.cover,
    required this.createdAt,
  });
}


