import 'package:flutter/material.dart';
import 'package:splital/themes/themes.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.filter_alt_outlined,
        color: AppColors.iconColor,
      ),
    );
  }
}
