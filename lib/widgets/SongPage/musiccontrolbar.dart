import 'package:flutter/material.dart';
import 'package:splital/themes/themes.dart';

class MusicControlBar extends StatelessWidget {
  const MusicControlBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 240,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.pageBackground,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const <BoxShadow>[]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: const Icon(
              Icons.keyboard_double_arrow_left_outlined,
              color: AppColors.iconColor,
              size: 40,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 20),
          IconButton(
            icon: const Icon(
              Icons.pause,
              color: AppColors.iconColor,
              size: 40,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 20),
          IconButton(
            icon: const Icon(
              Icons.keyboard_double_arrow_right_outlined,
              color: AppColors.iconColor,
              size: 40,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
