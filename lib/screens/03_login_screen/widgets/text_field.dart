import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:internship_tasks_06/config/constants/colors_const.dart';
import 'package:internship_tasks_06/config/constants/text_const.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({
    Key? key,
    required this.controller,
    required this.keyBoardType,
    required this.labelText,
    required this.isSecure,
    this.prefix,
  }) : super(key: key);
  final TextEditingController controller;
  final TextInputType keyBoardType;
  final String labelText;
  final bool isSecure;

  final Widget? prefix;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return TextFormField(
      controller: controller,
      keyboardType: keyBoardType,
      obscureText: isSecure,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(12.w),
        prefixIcon: prefix == null
            ? null
            : SizedBox(
                width: 120.w,
                height: 35.w,
                child: prefix,
              ),
        labelText: labelText,
        labelStyle: TextStyle(
          color: AppColors.appOnPrimaryColor.withOpacity(0.5),
          fontSize: 14.sp,
        ),
        border: _borderStyle(borderColor: AppColors.appOnPrimaryColor),
        errorBorder: _borderStyle(borderColor: Colors.red.shade400),
        enabledBorder: _borderStyle(borderColor: colorScheme.secondary),
        focusedBorder: _borderStyle(borderColor: AppColors.appOnPrimaryColor),
      ),
    );
  }

  OutlineInputBorder _borderStyle({required Color borderColor}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: borderColor),
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.elliptical(10, 10),
        topRight: Radius.elliptical(10, 10),
      ),
    );
  }
}
