

import './albumposition.dart';
import './user.dart';

class Album {
  final int id;
  final User author;
  final List<AlbumPosition> albumPositions;
  final String title;
  final String cover;
  final String description;
  final bool isPublic;
  final String createdAt;


  Album({
    required this.id,
    required this.author,
    required this.albumPositions,
    required this.title,
    required this.cover,
    required this.description,
    required this.isPublic,
    required this.createdAt,
  });
}