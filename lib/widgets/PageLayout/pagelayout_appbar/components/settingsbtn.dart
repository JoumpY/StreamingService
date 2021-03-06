import 'package:flutter/material.dart';

import 'package:splital/themes/themes.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.settings,
        color: AppColors.iconColor,
      ),
    );
  }
}
