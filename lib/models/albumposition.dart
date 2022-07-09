

import './song.dart';

class AlbumPosition {
  final Song song;
  final int order;
  final int songPk;

  AlbumPosition({
    required this.song,
    required this.order,
    required this.songPk,
  });
}