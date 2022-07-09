import 'package:dio/dio.dart';
import './createalbumposition.dart';

import './user.dart';

class CreateAlbum {
  final int id;
  final String title;
  final User author;
  final String description;
  final FormData cover;
  final List<CreateAlbumPosition> albumPositions;
  final String createdAt;
  final bool isPublic;

  CreateAlbum({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.cover,
    required this.albumPositions,
    required this.createdAt,
    required this.isPublic,
  });
}