

import './song.dart';

class CreatePlaylistSong {
  final Song song;
  final int order;
  final int songPk;

  CreatePlaylistSong({
    required this.song,
    required this.order,
    required this.songPk,
  });
}