import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_tasks_06/config/constants/colors_const.dart';

class LoginBackGround extends StatelessWidget {
  const LoginBackGround({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Container(
      color: AppColors.appMainColor,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          _firstContainer(
            colorScheme,
          ),
          _secondContainer(colorScheme),
          _thirdContainer(colorScheme),
        ],
      ),
    );
  }

  Widget _firstContainer(ColorScheme colorScheme) {
    return Positioned(
      left: 0,
      child: Transform.rotate(
        alignment: Alignment.topCenter,
        angle: 45,
        child: Container(
          width: 400.w,
          height: 600.h,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.elliptical(20, 20),
              topRight: Radius.elliptical(20, 20),
            ),
            color: colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }

  Widget _secondContainer(ColorScheme colorScheme) {
    return Positioned(
      left: 0,
      child: Transform.rotate(
        alignment: Alignment.topCenter,
        angle: 80,
        child: Container(
          width: 200.w,
          height: 200.h,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.elliptical(20, 20),
                topRight: Radius.elliptical(20, 20),
              ),
              border: Border.all(
                width: 15,
                color: colorScheme.primary,
              )),
        ),
      ),
    );
  }

  Widget _thirdContainer(ColorScheme colorScheme) {
    return Positioned(
      right: 0,
      bottom: 0,
      child: Transform.rotate(
        alignment: Alignment.topCenter,
        angle: 0.2,
        child: Container(
          width: 200.w,
          height: 200.h,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.elliptical(20, 20),
                topRight: Radius.elliptical(20, 20),
              ),
              border: Border.all(
                width: 15,
                color: colorScheme.onPrimary,
              )),
        ),
      ),
    );
  }
}
