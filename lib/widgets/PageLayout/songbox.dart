import 'package:flutter/material.dart';
import 'package:splital/models/song.dart';

class SongBox extends StatelessWidget {
  final Song song;

  const SongBox({required this.song, Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 1, style: BorderStyle.solid),
      ),
      child: Text("${song.author}"),
    );
  }
}
