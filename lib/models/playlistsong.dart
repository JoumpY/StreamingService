

import './song.dart';

class PlaylistSong {
  final Song song;
  final int order;
  final int songPk;

  PlaylistSong({
    required this.song,
    required this.order,
    required this.songPk,
  });
}
