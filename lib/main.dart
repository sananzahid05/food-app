import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/ui/home_screens/home_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(376, 813),
      minTextAdapt: true,
      splitScreenMode: true,
      child: const _AppRoot(),
    );
  }
}

class _AppRoot extends StatelessWidget {
  const _AppRoot();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(elevation: 0),
        bottomSheetTheme: const BottomSheetThemeData(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          modalBackgroundColor: Colors.transparent,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
