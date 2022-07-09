import 'package:flutter/material.dart';
import 'package:splital/themes/themes.dart';

import './components/explorebutton.dart';

class FiltersBar extends StatelessWidget {
  const FiltersBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: AppColors.iconColor))),
      height: 50,
      width: double.infinity,
      alignment: Alignment.center,
      child: Row(
        children: const [
          ExploreButton(),
        ],
      ),
    );
  }
}
