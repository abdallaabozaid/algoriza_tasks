import 'package:flutter/material.dart';
import 'package:internship_tasks_06/config/constants/colors_const.dart';
import 'package:internship_tasks_06/screens/03_login_screen/widgets/background.dart';
import 'package:internship_tasks_06/screens/03_login_screen/widgets/behind_card.dart';
import 'package:internship_tasks_06/screens/03_login_screen/widgets/form_card.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
              const Positioned(
                top: 395,
                child: BehindCard(),
              ),
              Positioned(
                top: 130,
                child: FormCard(),
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
