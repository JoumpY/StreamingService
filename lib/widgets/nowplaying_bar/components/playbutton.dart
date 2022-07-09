import 'package:flutter/material.dart';


//PROJECT PACKAGES
import '/themes/themes.dart';

class PlayButton extends StatefulWidget {
  const PlayButton({Key? key}) : super(key: key);

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  static bool isPlaying = false;

  Icon resumeIcon = const Icon(
    Icons.play_arrow,
    color: AppColors.iconColor,
    size: 16,
  );

  Icon pauseIcon = const Icon(
    Icons.pause,
    color: AppColors.iconColor,
    size: 16,
  );
  

  void changeIcon() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  Future<void> playAudio() async {

  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 35,
      child: FloatingActionButton(
        elevation: 0,
        backgroundColor: AppColors.primaryButton,
        onPressed: () {
          //FINISH DOING THE playAudio() FUNCTION and PUT try, on BLOCKS
          playAudio().then((_) {
            changeIcon();
          });
        },
        child: isPlaying ? pauseIcon : resumeIcon,
      ),
    );
  }
}
