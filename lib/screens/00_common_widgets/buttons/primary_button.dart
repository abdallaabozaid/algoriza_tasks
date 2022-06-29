import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_tasks_06/config/constants/colors_const.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
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
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      width: width.w,
      height: 55.h,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(label),
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(colorScheme.onPrimary),
          foregroundColor: MaterialStateProperty.all(
            Theme.of(context).colorScheme.primary,
          ),
          side: MaterialStateProperty.all(
            const BorderSide(
              width: 1.4,
              color: AppColors.appOnPrimaryColor,
            ),
          ),
          overlayColor: MaterialStateProperty.all(
            Colors.black.withOpacity(0.1),
          ),
        ),
        //  ElevatedButton.styleFrom(
        //   elevation: 0,
        //   primary: colorScheme.onPrimary,
        //   onPrimary: colorScheme.primary,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(
        //       30.r,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
