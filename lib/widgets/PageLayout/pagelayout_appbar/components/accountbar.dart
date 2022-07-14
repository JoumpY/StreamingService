import 'package:flutter/material.dart';
import 'package:splital/themes/themes.dart';

class AccountBar extends StatefulWidget {
  const AccountBar({Key? key}) : super(key: key);

  @override
  State<AccountBar> createState() => _AccountBarState();
}

class _AccountBarState extends State<AccountBar> {
  String accountName = "Jumpiniasty";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //IMPLEMENTS THIS SO IT NAVIGATES TO USER'S ACCOUNT PAGE
      },
      child: AnimatedContainer(
        height: 50,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 20, 24, 29),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/images/jake.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 5),
            Text(
              accountName,
              style: const TextStyle(color: AppColors.iconColor, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
