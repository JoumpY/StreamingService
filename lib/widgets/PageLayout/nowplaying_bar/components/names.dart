import 'package:flutter/material.dart';

import 'package:splital/themes/themes.dart';
import 'package:splital/pages/songpage.dart';

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
          onPressed: () {
            Navigator.of(context).push(
              PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 200),
                reverseTransitionDuration: const Duration(milliseconds: 200),
                pageBuilder: (_, __, ___) {
                  return const SongPage();
                },
                transitionsBuilder: (_, animation, __, child) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
              ),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Gombao 33",
                  style: TextStyle(
                    color: Color.fromARGB(255, 238, 238, 238),
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    fontSize: 16,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Mata",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
