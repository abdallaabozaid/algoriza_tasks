import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:internship_tasks_06/config/constants/text_const.dart';

class BehindCard extends StatelessWidget {
  const BehindCard({
    Key? key,
    required this.isSignIn,
  }) : super(key: key);
  final bool isSignIn;
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 50.w),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.elliptical(20, 20),
          topRight: Radius.elliptical(20, 20),
        ),
      ),
      elevation: 5,
      child: Container(
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.zero,
        padding: EdgeInsets.all(20.w),
        height: 200.h,
        width: 250.w,
        decoration: BoxDecoration(
          color: colorScheme.primary,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.elliptical(20, 20),
            topRight: Radius.elliptical(20, 20),
          ),
        ),
        child: _text(colorScheme),
      ),
    );
  }

  Widget _text(ColorScheme colorScheme) {
    return Text(
      isSignIn ? creatAccountText : signInText,
      style: TextStyle(
        fontSize: 18.sp,
        color: colorScheme.secondary.withOpacity(0.6),
      ),
    );
  }
}
