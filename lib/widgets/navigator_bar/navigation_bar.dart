import 'package:flutter/material.dart';

import 'package:splital/widgets/navigator_bar/components/navbtn.dart';

class NavigatorBar extends StatefulWidget {
  final int defaultSelected;
  final Function(int) onChange;
  const NavigatorBar({required this.defaultSelected, required this.onChange, Key? key}) : super(key: key);

  @override
  State<NavigatorBar> createState() => _NavigatorBarState();
}

class _NavigatorBarState extends State<NavigatorBar> {
  @override
  Widget build(BuildContext context) {
    bool homeIsActive = true;
    bool searchIsActive = false;
    bool libraryIsActive = false;

    return Container(
      alignment: Alignment.center,
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NavBtn(
            icon: Icons.home,
            isActive: homeIsActive,
            fnHandler: () {
              homeIsActive = true;
              return homeIsActive;
            },
          ),
          const SizedBox(width: 20),
          NavBtn(
            icon: Icons.search,
            isActive: searchIsActive,
            fnHandler: () {
              searchIsActive = true;
              return searchIsActive;
            },
          ),
          const SizedBox(width: 20),
          NavBtn(
            icon: Icons.music_note_outlined,
            isActive: libraryIsActive,
            fnHandler: () {
              libraryIsActive = true;
              return libraryIsActive;
            },
          ),
        ],
      ),
    );
  }

  Widget navBtn({required IconData icon, required int index}) {
    return GestureDetector();
  }
}
