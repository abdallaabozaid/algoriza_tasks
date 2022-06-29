import 'package:flutter/material.dart';
import 'package:internship_tasks_06/config/constants/colors_const.dart';
import 'package:internship_tasks_06/screens/03_login_screen/widgets/background.dart';
import 'package:internship_tasks_06/screens/03_login_screen/widgets/behind_card.dart';
import 'package:internship_tasks_06/screens/03_login_screen/widgets/form_card.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSignIn = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _dismissKeyboard(context),
      child: Scaffold(
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              const LoginBackGround(),
              Positioned(
                top: isSignIn ? 395 : 425,
                child: GestureDetector(
                  child: BehindCard(isSignIn: isSignIn),
                  onTap: () => setState(() {
                    isSignIn = !isSignIn;
                  }),
                ),
              ),
              Positioned(
                top: isSignIn ? 130 : 100,
                child: FormCard(isSignIn: isSignIn),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _dismissKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }
}
