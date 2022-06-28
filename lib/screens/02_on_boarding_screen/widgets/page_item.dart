import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:internship_tasks_06/models/onboarding_page_model.dart';

class PageItem extends StatelessWidget {
  const PageItem({
    Key? key,
    required this.pageData,
  }) : super(key: key);
  final OnBoardingPageModel pageData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            pageData.imageAsset,
            fit: BoxFit.cover,
            height: 200.h,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            pageData.title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26.sp),
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            pageData.description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.sp),
          ),
        ],
      ),
    );
  }
}
