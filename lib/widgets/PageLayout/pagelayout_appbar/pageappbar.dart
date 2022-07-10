import 'package:flutter/material.dart';

import './components/accountbar.dart';
import './components/settingsbtn.dart';
import './components/filterbtn.dart';

class PageAppBar extends StatelessWidget {
  const PageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 40,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          SizedBox(width: 10),
          AccountBar(),
          Spacer(),
          FilterButton(),
          SettingsButton(),
        ],
      ),
    );
  }
}
