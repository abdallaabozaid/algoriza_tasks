import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_tasks_06/models/onboarding_page_model.dart';
import 'package:internship_tasks_06/screens/02_on_boarding_screen/widgets/page_item.dart';

class PageBuilder extends StatefulWidget {
  const PageBuilder(
      {Key? key, required this.pageController, required this.currentPage})
      : super(key: key);
  final ValueNotifier<int?> currentPage;

  final PageController pageController;

  @override
  State<PageBuilder> createState() => _PageBuilderState();
}

class _PageBuilderState extends State<PageBuilder> {
  @override
  Widget build(BuildContext context) {
    print('object');

    return SizedBox(
      height: 450.h,
      child: PageView.builder(
        onPageChanged: (value) {
          widget.currentPage.value = value;
        },
        physics: const BouncingScrollPhysics(),
        controller: widget.pageController,
        itemCount: 3,
        itemBuilder: (context, index) => PageItem(
          pageData: onBoardingData[index],
        ),
      ),
    );
  }
}
