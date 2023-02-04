import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../pages/login/login_screen.dart';
import '../../shared/theme.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Drawer(
      width: size.width * 0.7,
      backgroundColor: ThemeManager.blue,
      child: Column(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: ThemeManager.blue),
            padding: const EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/man.png',
                  height: size.height * 0.09,
                  width: size.height * 0.09,
                ),
                const SizedBox(height: 7),
                const Text(
                  'مازن محمد محمد',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    _drawerItem(
                      title: 'الاشعارات',
                      icon: FontAwesomeIcons.bell,
                      onTap: () {},
                    ),
                    _drawerItem(
                      title: 'سجل القراءات',
                      icon: FontAwesomeIcons.clockRotateLeft,
                      onTap: () {},
                    ),
                    _drawerItem(
                      title: 'الاعدادات',
                      icon: FontAwesomeIcons.gear,
                      onTap: () {},
                    ),
                    _drawerItem(
                      title: 'مساعدة',
                      icon: FontAwesomeIcons.circleQuestion,
                      onTap: () {},
                    ),
                    _drawerItem(
                      title: 'حول التطبيق',
                      icon: FontAwesomeIcons.circleInfo,
                      onTap: () {},
                    ),
                    const Divider(
                      color: Color(0xFFEEEEEE),
                      thickness: 1.5,
                      height: 15,
                    ),
                    _drawerItem(
                      title: 'فيسبوك',
                      icon: FontAwesomeIcons.squareFacebook,
                      color: const Color(0xFF3B5998),
                      onTap: () {},
                    ),
                    _drawerItem(
                      title: 'تويتر',
                      icon: FontAwesomeIcons.squareTwitter,
                      color: const Color(0xFF1DA1F2),
                      onTap: () {},
                    ),
                    _drawerItem(
                      title: 'جوجل',
                      icon: FontAwesomeIcons.google,
                      color: const Color(0xFFDB4437),
                      onTap: () {},
                    ),
                    const Divider(
                      color: Color(0xFFEEEEEE),
                      thickness: 1.5,
                      height: 15,
                    ),
                    _drawerItem(
                      title: 'تسجيل الخروج',
                      icon: FontAwesomeIcons.rightFromBracket,
                      onTap: () =>Get.offAll(() => const LoginScreen()),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _drawerItem({
    required String title,
    required IconData icon,
    GestureTapCallback? onTap,
    Color? color,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            const SizedBox(width: 20),
            Icon(icon, size: 22, color: color),
            const SizedBox(width: 12),
            Text(
              title,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
