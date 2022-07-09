

import './song.dart';

class CreateAlbumPosition {
  final Song song;
  final int order;
  final int songPk;

  CreateAlbumPosition({
    required this.song,
    required this.order,
    required this.songPk,
  });
}
