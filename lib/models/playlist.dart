

import './playlistsong.dart';
import './user.dart';

class Playlist {
  final int id;
  final List<PlaylistSong> playlistSongs;
  final User author;
  final String name;
  final String cover;
  final String description;
  final bool isPublic;
  final String createdAt;

  Playlist({
    required this.id,
    required this.playlistSongs,
    required this.author,
    required this.name,
    required this.cover,
    required this.description,
    required this.isPublic,
    required this.createdAt,
  });
}
