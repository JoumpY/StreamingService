import 'package:dio/dio.dart';

import './createplaylistsong.dart';
import './user.dart';

class CreatePlaylist {
  final int id;
  final List<CreatePlaylistSong> playlistSongs;
  final User author;
  final String title;
  final FormData cover;
  final String description;
  final bool isPublic;
  final String createdAt;

  CreatePlaylist({
    required this.id,
    required this.playlistSongs,
    required this.author,
    required this.title,
    required this.cover,
    required this.description,
    required this.isPublic,
    required this.createdAt,
  });
}