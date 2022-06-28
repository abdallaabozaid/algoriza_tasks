import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_tasks_06/config/constants/route_const.dart';
import 'package:internship_tasks_06/config/router/app_router.dart';
import 'package:internship_tasks_06/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (ctx, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Shipper',
          theme: AppTheme.appTheme,
          onGenerateRoute: AppRouter.onGenerateRoute,
          initialRoute: splashScreen,
        );
      },
    );
  }
}
