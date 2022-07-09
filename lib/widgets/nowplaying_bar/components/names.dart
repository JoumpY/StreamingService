import 'package:flutter/material.dart';
import 'package:splital/themes/themes.dart';

class SongArtist extends StatefulWidget {
  const SongArtist({Key? key}) : super(key: key);

  @override
  State<SongArtist> createState() => _SongArtistState();
}

class _SongArtistState extends State<SongArtist> {

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 0,
      runSpacing: 0,
      children: [
        TextButton(
          style: Styles.npNames,
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Song name",
                style: TextStyle(
                  color: Color.fromARGB(255, 238, 238, 238),
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
              Text(
                "Artist",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
