import 'package:flutter/material.dart';
import 'package:splital/themes/themes.dart';

//CUSTOM WIDGETS
import 'components/names.dart';
import 'components/playbutton.dart';

class NowPlaying extends StatefulWidget {
  const NowPlaying({Key? key}) : super(key: key);

  @override
  State<NowPlaying> createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: 50,
      width: MediaQuery.of(context).size.width - 20 * 2,
      alignment: Alignment.topRight,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 20, 24, 29),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Material(
        elevation: 20,
        shadowColor: const Color.fromARGB(85, 0, 0, 0),
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: const [
            SizedBox(width: 20),
            Icon(
              Icons.image,
              color: AppColors.iconColor,
              size: 32,
            ),
            Spacer(),
            Center(child: SongArtist()),
            Spacer(),
            PlayButton(),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
