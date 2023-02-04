import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sugar/pages/login/login_screen.dart';
import 'package:sugar/pages/register/widgets/register1.dart';
import 'package:sugar/pages/register/widgets/register2.dart';
import 'package:sugar/pages/register/widgets/register3.dart';
import 'package:sugar/pages/register/widgets/register4.dart';
import 'package:sugar/shared/theme.dart';

import '../../layout/app_layout.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final _screens = [
    const Register1(),
    const Register2(),
    const Register3(),
    const Register4(),
  ];

  void onTapNext(int index) {
    if (index < _screens.length - 1) {
      _currentPage = pageController.page!.toInt() + 1;
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  void onTapBack(int index) {
    if (index > 0) {
      _currentPage = pageController.page!.toInt() - 1;
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: kToolbarHeight),
                Align(
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: size.width * 0.4,
                    // height: size.height * 0.4,
                  ),
                ),

                SizedBox(height: size.height * 0.03),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'انشاء حساب',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.05),

                // page view
                Flexible(
                  child: PageView(
                    physics: const BouncingScrollPhysics(),
                    pageSnapping: true,
                    controller: pageController,
                    onPageChanged: (index) {
                      setState(() => _currentPage = index);
                    },
                    children: _screens,
                  ),
                ),

                SizedBox(height: size.height * 0.03),
                Align(
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: _screens.length,
                    effect: ScaleEffect(
                      scale: 1.7,
                      dotHeight: 10,
                      dotWidth: 10,
                      dotColor: ThemeManager.redMedium,
                      activeDotColor: ThemeManager.redMedium,
                      activePaintStyle: PaintingStyle.stroke,
                      strokeWidth: 2,
                      activeStrokeWidth: 1.5,
                    ),
                  ),
                ),

                SizedBox(height: size.height * 0.03),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      if (_currentPage > 0)
                        Directionality(
                          textDirection: TextDirection.ltr,
                          child: nextButton(
                            text: 'رجوع',
                            icon: Icons.arrow_forward_ios,
                            onTap: () => onTapBack(_currentPage),
                          ),
                        ),
                      const Spacer(),
                      if (_currentPage < _screens.length - 1)
                        nextButton(
                          text: 'التالي',
                          icon: Icons.arrow_forward_ios,
                          onTap: () => onTapNext(_currentPage),
                        ),
                    ],
                  ),
                ),

                SizedBox(height: size.height * 0.03),

                // login button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'لدي حساب',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Get.off(() => const LoginScreen(),
                          transition: Transition.fadeIn),
                      child: const Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: size.height * 0.02),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget nextButton(
      {required String text,
      required IconData icon,
      required VoidCallback onTap}) {
    return Align(
      alignment: Alignment.centerLeft,
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 17),
            ),
            Icon(icon, size: 18),
          ],
        ),
      ),
    );
  }
}
