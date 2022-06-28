import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_tasks_06/config/constants/colors_const.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.width = double.infinity,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String label;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      width: width.w,
      height: 34.h,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12.sp,
          ),
        ),
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          foregroundColor: MaterialStateProperty.all(
            Theme.of(context).colorScheme.onPrimary,
          ),
          side: MaterialStateProperty.all(
            const BorderSide(
              width: 1.4,
              color: AppColors.appOnPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
