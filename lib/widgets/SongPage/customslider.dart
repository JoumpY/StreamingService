import 'package:flutter/material.dart';

import 'package:splital/themes/themes.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SliderTheme(
        data: const SliderThemeData(
          trackShape: RectangularSliderTrackShape(),
          thumbShape: RoundSliderOverlayShape(),
          activeTrackColor: AppColors.iconColor,
          inactiveTrackColor: Color.fromARGB(255, 155, 155, 155),
        ),
        child: Slider(
          value: 50,
          min: 0,
          max: 100,
          onChanged: (val) {},
          onChangeEnd: (val) {
            //When the change has ended, play the song at the selected time stamp
          },
        ),
      ),
    );
  }
}
