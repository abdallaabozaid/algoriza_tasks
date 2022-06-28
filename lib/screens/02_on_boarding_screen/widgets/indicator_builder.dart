import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:internship_tasks_06/config/constants/colors_const.dart';

class IndicatorBuilder extends StatelessWidget {
  const IndicatorBuilder({
    Key? key,
    required this.currentPage,
  }) : super(key: key);
  final int? currentPage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.h,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            3,
            (index) {
              bool selected = currentPage == index;

              return Container(
                margin: EdgeInsets.symmetric(horizontal: 6.w),
                width: 12.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: selected
                      ? AppColors.appOnPrimaryColor
                      : AppColors.appMainColor,
                  border: Border.all(
                    width: 1,
                    color: AppColors.appOnPrimaryColor,
                  ),
                  borderRadius: BorderRadius.circular(20.r),
                ),
              );
            },
          )),
    );
  }
}
