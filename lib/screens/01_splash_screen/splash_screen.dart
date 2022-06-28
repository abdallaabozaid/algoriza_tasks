import 'package:flutter/material.dart';
import 'package:internship_tasks_06/config/constants/colors_const.dart';
import 'package:internship_tasks_06/config/constants/route_const.dart';
import 'package:internship_tasks_06/screens/00_common_widgets/app_logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  Future<void> _checkUser(BuildContext ctx) async {
// if user unauthenticated >>
    // if first time to open the app
    await Future.delayed(
      const Duration(milliseconds: 1200),
    );
    Navigator.pushReplacementNamed(ctx, onBoardingScreen);
    // else >> Navigator.pushReplacementNamed(ctx, loginScreen) ;
// else >>  Navigator.pushReplacementNamed(ctx, homeScreen) ;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _checkUser(context),
      builder: (context, snapshot) => const Scaffold(
        body: AppLogo(
          width: 130,
          onlyTextLogo: false,
        ),
        backgroundColor: AppColors.appMainColor,
      ),
    );
  }
}
