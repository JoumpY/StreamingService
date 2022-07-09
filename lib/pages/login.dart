import 'package:flutter/material.dart';
import 'package:neon/neon.dart';

import '../widgets/login_widgets/login_fields.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          /*
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              AppColors.pageGradient1,
              AppColors.pageGradient2,
            ],
          ),
          */
        ),
        height: double.infinity,
        width: double.infinity,
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            const Text(
              "Login",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 200),
                Neon(
                  text: "E-mail",
                  color: Colors.cyan,
                  font: NeonFont.Automania,
                  fontSize: 16,
                  blurRadius: 5,
                  flickeringLetters: const [7],
                ),
                const SizedBox(height: 10),
                LoginField(emailController),
                const SizedBox(height: 30),
                Neon(
                  text: "Password",
                  color: Colors.cyan,
                  font: NeonFont.Automania,
                  fontSize: 16,
                  blurRadius: 5,
                  flickeringLetters: const [7],
                ),
                const SizedBox(height: 10),
                LoginField(passwordController),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
