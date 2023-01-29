import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sugar/pages/splash/splash_screen.dart';
import 'package:sugar/shared/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      locale:const Locale('ar', 'EG'),
      theme: ThemeManager.lightTheme,
      textDirection: TextDirection.rtl,
    );
  }
}

