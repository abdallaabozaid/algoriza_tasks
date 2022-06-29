import 'dart:ui';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:internship_tasks_06/config/constants/assets_const.dart';
import 'package:internship_tasks_06/config/constants/text_const.dart';
import 'package:internship_tasks_06/screens/00_common_widgets/buttons/primary_button.dart';
import 'package:internship_tasks_06/screens/00_common_widgets/buttons/secondary_button.dart';
import 'package:internship_tasks_06/screens/03_login_screen/widgets/text_field.dart';

class FormCard extends StatefulWidget {
  FormCard({
    Key? key,
    required this.isSignIn,
  }) : super(key: key);
  bool isSignIn;

  @override
  State<FormCard> createState() => _FormCardState();
}

class _FormCardState extends State<FormCard> {
  late final TextEditingController _phoneNumberController =
      TextEditingController();
  late final TextEditingController _passwordController =
      TextEditingController();

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
        margin: EdgeInsets.zero,
        padding: EdgeInsets.all(20.w),
        width: 320.w,
        decoration: BoxDecoration(
          color: colorScheme.primary,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.elliptical(20, 20),
            topRight: Radius.elliptical(20, 20),
          ),
        ),
        child: Column(
          children: [
            _signInText(colorScheme),
            SizedBox(
              height: 36.h,
            ),
            FormTextField(
              controller: _phoneNumberController,
              keyBoardType: TextInputType.phone,
              prefix: _codePicker(),
              labelText: phoneNumberLabelText,
              isSecure: false,
            ),
            if (!widget.isSignIn)
              SizedBox(
                height: 20.h,
              ),
            if (!widget.isSignIn)
              FormTextField(
                controller: _passwordController,
                keyBoardType: TextInputType.visiblePassword,
                labelText: passwordLabelText,
                isSecure: true,
              ),
            SizedBox(
              height: 30.h,
            ),
            PrimaryButton(
              onPressed: () {},
              label: widget.isSignIn ? signInText : signUpText,
            ),
            SizedBox(
              height: 50.h,
            ),
            _divider(colorScheme),
            SizedBox(
              height: 20.h,
            ),
            SecondaryButton(onPressed: () {}, label: _googleSignIn()),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _codePicker() {
    return CountryCodePicker(
      onChanged: print,
      initialSelection: 'EG',
      favorite: const ['+20', 'EG'],
      showCountryOnly: false,
      showOnlyCountryWhenClosed: false,
      alignLeft: false,
    );
  }

  Widget _signInText(ColorScheme colorScheme) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            welcomeText,
            style: TextStyle(
              fontSize: 15.sp,
              color: colorScheme.secondary.withOpacity(0.6),
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          Text(
            widget.isSignIn ? signInText : signUpText,
            style: TextStyle(
              fontSize: 28.sp,
              color: colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider(ColorScheme colorScheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 80.w,
          height: 2.h,
          color: colorScheme.secondary.withOpacity(0.5),
        ),
        Text(
          'OR',
          style: TextStyle(
            color: colorScheme.secondary,
          ),
        ),
        Container(
          width: 80.w,
          height: 2.h,
          color: colorScheme.secondary.withOpacity(0.5),
        ),
      ],
    );
  }

  Widget _googleSignIn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AppAssets.googleIconAsset,
          width: 30.w,
          height: 30.w,
        ),
        SizedBox(width: 10.w),
        widget.isSignIn
            ? Text(signInWithGoogleText)
            : Text(signUpWithGoogleText),
      ],
    );
  }
}
