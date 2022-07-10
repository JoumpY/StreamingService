import 'package:flutter/material.dart';

import 'package:splital/themes/themes.dart';

class NavigatorBar extends StatefulWidget {
  final int defaultIndex;
  final Function(int) onSelect;

  const NavigatorBar({
    required this.defaultIndex,
    required this.onSelect,
    Key? key,
  }) : super(key: key);

  @override
  State<NavigatorBar> createState() => _NavigatorBarState();
}

class _NavigatorBarState extends State<NavigatorBar> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.defaultIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          navBtn(icon: Icons.home, caption: "Home", index: 0),
          const SizedBox(width: 20),
          navBtn(icon: Icons.search, caption: "Search", index: 1),
          const SizedBox(width: 20),
          navBtn(icon: Icons.music_note_rounded, caption: "Library", index: 2)
        ],
      ),
    );
  }

  Widget navBtn({
    required IconData icon,
    required String caption,
    required int index,
  }) {
    return GestureDetector(
      onTap: () {
        widget.onSelect(index);
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        width: 100,
        alignment: Alignment.center,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.linearToEaseOut,
          width: index == selectedIndex ? 100 : 50,
          height: 50,
          decoration: BoxDecoration(
            color: index == selectedIndex
                ? AppColors.primaryButton
                : Colors.transparent,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Icon(
            icon,
            color: index == selectedIndex ? AppColors.iconColor : Colors.grey,
          ),
        ),
      ),
    );
  }
}
