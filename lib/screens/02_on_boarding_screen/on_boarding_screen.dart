import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_tasks_06/config/constants/route_const.dart';
import 'package:internship_tasks_06/config/constants/text_const.dart';
import 'package:internship_tasks_06/screens/00_common_widgets/app_logo.dart';
import 'package:internship_tasks_06/screens/00_common_widgets/buttons/primary_button.dart';
import 'package:internship_tasks_06/screens/00_common_widgets/buttons/secondary_button.dart';
import 'package:internship_tasks_06/screens/02_on_boarding_screen/widgets/indicator_builder.dart';
import 'package:internship_tasks_06/screens/02_on_boarding_screen/widgets/page_builder.dart';

class OnBardingScreen extends StatefulWidget {
  const OnBardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBardingScreen> createState() => _OnBardingScreenState();
}

class _OnBardingScreenState extends State<OnBardingScreen>
    with SingleTickerProviderStateMixin {
  late final PageController _pageController;
  final ValueNotifier<int?> _currentPage = ValueNotifier(0);
  int counter = 1;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _statusBarPadding(),
          Align(
            alignment: Alignment.centerRight,
            child: SecondaryButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, loginScreen);
              },
              label: 'Skip',
              width: 60,
            ),
          ),
          _sizer(),
          const AppLogo(width: 130, onlyTextLogo: true),
          _sizer(),
          PageBuilder(
            pageController: _pageController,
            currentPage: _currentPage,
          ),
          _sizer(),
          ValueListenableBuilder<int?>(
            builder: (context, value, child) => Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: IndicatorBuilder(
                    currentPage: value,
                  ),
                ),
                _sizer(),
                PrimaryButton(
                  onPressed: () => _nextPage(),
                  label: value == 2 ? getStartedText : nextText,
                ),
              ],
            ),
            valueListenable: _currentPage,
          ),
          _sizer(),
        ],
      ),
    );
  }

  Widget _statusBarPadding() {
    return SizedBox(
      height: MediaQuery.of(context).padding.top + 20,
    );
  }

  Widget _sizer() {
    return SizedBox(
      height: 20.h,
    );
  }

  void _nextPage() {
    if (_currentPage.value == 2) {
      Navigator.pushReplacementNamed(context, loginScreen);
    }
    _pageController.nextPage(
      duration: Duration(milliseconds: 200),
      curve: Curves.ease,
    );
  }
}
