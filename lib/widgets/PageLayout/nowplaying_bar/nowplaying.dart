import 'package:flutter/material.dart';

//CUSTOM WIDGETS
import 'components/names.dart';
import 'components/playbutton.dart';
import 'components/addtofav.dart';

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
      height: 65,
      width: MediaQuery.of(context).size.width - 20 * 2,
      alignment: Alignment.topRight,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 20, 24, 29),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: const [
          SizedBox(width: 10),
          Center(child: SongArtist()),
          Spacer(),
          AddToFavBtn(),
          SizedBox(width: 10),
          PlayButton(),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
