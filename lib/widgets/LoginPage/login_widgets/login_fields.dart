// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  final TextEditingController controller;

  const LoginField(this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 50,
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color.fromARGB(255, 238, 238, 238),
          width: 2,
        ),
      ),
      child: TextField(
        style: const TextStyle(
          color: Color.fromARGB(255, 238, 238, 238),
        ),
        controller: controller,
      ),
    );
  }
}
