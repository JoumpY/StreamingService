import 'package:flutter/material.dart';
import 'package:splital/themes/themes.dart';

class AddToFavBtn extends StatefulWidget {
  const AddToFavBtn({Key? key}) : super(key: key);

  @override
  State<AddToFavBtn> createState() => AddToFavBtnState();
}

class AddToFavBtnState extends State<AddToFavBtn> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: null, //Set to NULL to avoid error msg
        width: 40,
        height: 40,
        child: const Icon(
          Icons.add_circle_outline_outlined,
          color: AppColors.primaryButton,
          size: 32,
        ),
      ),
    );
  }
}
