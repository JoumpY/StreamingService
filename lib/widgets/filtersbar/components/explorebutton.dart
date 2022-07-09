import 'package:flutter/material.dart';
import 'package:splital/themes/themes.dart';

class ExploreButton extends StatefulWidget {
  const ExploreButton({Key? key}) : super(key: key);

  @override
  State<ExploreButton> createState() => _ExploreButtonState();
}

class _ExploreButtonState extends State<ExploreButton> {
  @override
  Widget build(BuildContext context) {
    bool isActive = false;

    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          color: AppColors.iconColor,
          width: 2,
          style: BorderStyle.solid,
        ),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          splashFactory: NoSplash.splashFactory,
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(0),
        ),
        onPressed: () {
          setState(() {
            isActive = !isActive;
          });
        },
        child: const Text(
          "Explore",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
