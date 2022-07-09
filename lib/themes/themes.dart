import 'package:flutter/material.dart';

class AppColors {
  //SCAFFOLD GRADIENT
  //static const Color pageGradient1 = Color.fromARGB(255, 34, 40, 49);
  static const Color pageBackground = Color.fromARGB(255, 31, 35, 39);

  //NAVIGATION BAR
  //static const Color primaryButton = Color.fromARGB(255, 0, 172, 181);
  static const Color primaryButton = Color.fromARGB(255, 0, 172, 181);

  //ICON COLOR
  static const Color iconColor = Color.fromARGB(255, 238, 238, 238);

  //BACK BUTTON BACKGROUND COLOR
  static const Color pageBackBtn = Color.fromARGB(255, 60, 62, 65);
}

//CONTAINS STYLES FOR MOST BUTTONS IN THE APP
class Styles {
  //NAVIGATION BAR
  static ButtonStyle navButton = ButtonStyle(
    splashFactory: NoSplash.splashFactory,
    elevation: MaterialStateProperty.all(0),
    fixedSize: MaterialStateProperty.all(const Size(70, 50)),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    ),
    backgroundColor: MaterialStateProperty.all(AppColors.primaryButton),
  );

  //NOWPLAYING BAR
  static ButtonStyle npButton = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(AppColors.primaryButton),
    minimumSize: MaterialStateProperty.all(const Size(30, 30)),
    maximumSize: MaterialStateProperty.all(const Size(30, 30)),
  );

  static ButtonStyle npNames = ButtonStyle(
    alignment: Alignment.topCenter,
    minimumSize: MaterialStateProperty.all(const Size(150, 40)),
    maximumSize: MaterialStateProperty.all(const Size(150, 40)),
    visualDensity: VisualDensity.compact
  );

  static TextStyle loginTextField = const TextStyle();
}
