import 'package:flutter/material.dart';

import 'package:splital/themes/themes.dart';

class NavBtn extends StatefulWidget {
  final IconData icon;
  bool isActive;
  final Function fnHandler;

  NavBtn({
    required this.icon,
    required this.isActive,
    required this.fnHandler,
    Key? key,
  }) : super(key: key);

  @override
  State<NavBtn> createState() => _NavBtnState();

}

class _NavBtnState extends State<NavBtn> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      alignment: Alignment.center,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.linearToEaseOut,
        width: widget.isActive ? 100 : 50,
        height: 50,
        decoration: BoxDecoration(
          color: widget.isActive ? AppColors.primaryButton : Colors.transparent,
          borderRadius: BorderRadius.circular(25),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            splashFactory: NoSplash.splashFactory,
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: () {
            setState(() => widget.isActive = widget.fnHandler());
          },
          child: Icon(
            widget.icon,
            color: widget.isActive ? AppColors.iconColor : Colors.grey,
          ),
        ),
      ),
    );
  }
}
