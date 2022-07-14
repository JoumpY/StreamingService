import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:splital/themes/themes.dart';
import '../widgets/SongPage/musiccontrolbar.dart';
import '../widgets/SongPage/customslider.dart';

class SongPage extends StatelessWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            alignment: null, //Set to NULL to get rid of the warning message
            height: double.infinity,
            width: double.infinity,
            child: ColorFiltered(
              colorFilter:
                  const ColorFilter.mode(Colors.grey, BlendMode.saturation),
              child: Image.asset(
                //ARTIST's Profile picture
                "assets/images/cool.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 2],
                  colors: [
                    Color.fromARGB(255, 34, 34, 34),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            child: FloatingActionButton(
              mini: true,
              backgroundColor: AppColors.pageBackBtn,
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.arrow_left_sharp),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Artist",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 4),
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    //SONG COVER IMAGE
                    image: AssetImage("assets/images/songcover.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Song name",
                maxLines: 1,
                style: TextStyle(color: Colors.white, fontSize: 20, shadows: [
                  Shadow(color: Colors.black, offset: Offset(0.5, 2))
                ]),
              ),
              const SizedBox(height: 25),
              const MusicControlBar(),
              const SizedBox(height: 10),
              const CustomSlider(),
            ],
          ),
        ],
      ),
    );
  }
}
