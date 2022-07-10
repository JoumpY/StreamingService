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
    size: 20,
  );

  Icon pauseIcon = const Icon(
    Icons.pause,
    color: AppColors.iconColor,
    size: 20,
  );

  void changeIcon() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  Future<void> playAudio() async {}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //FINISH DOING THE playAudio() FUNCTION and PUT try, on BLOCKS
        playAudio().then((_) {
          changeIcon();
        });
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.primaryButton,
        ),
        child: isPlaying ? pauseIcon : resumeIcon,
      ),
    );
  }
}
