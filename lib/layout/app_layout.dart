import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sugar/layout/widgets/add_new_write.dart';
import 'package:sugar/layout/widgets/app_drawer.dart';
import 'package:sugar/pages/advice/advice_screen.dart';
import 'package:sugar/pages/doctor/doctor_screen.dart';
import 'package:sugar/pages/home/home_screen.dart';
import 'package:sugar/pages/planning/planning_screen.dart';

import '../shared/theme.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  _AppLayoutState createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  var _bottomNavIndex = 0;

  final List<IconData> iconList = <IconData>[
    FontAwesomeIcons.house,
    FontAwesomeIcons.briefcaseMedical,
    FontAwesomeIcons.userDoctor,
    FontAwesomeIcons.chartLine,
  ];

  final List<String> _titleBottom = <String>[
    'الرئيسية',
    'نصائح',
    'دكتور',
    'مخطط',
  ];

  final List<Widget> _screens = <Widget>[
    const HomeScreen(),
    const AdviceScreen(),
    const DoctorScreen(),
    const PlanningScreen(),
  ];

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: _key,
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Image.asset(
            'assets/images/logo.png',
            height: 60,
            width: 60,
          ),
          leading: IconButton(
            icon: Icon(FontAwesomeIcons.bars,
                color: Colors.white.withOpacity(0.6), size: 30),
            onPressed: () => _key.currentState!.openDrawer(),
          ),
          centerTitle: true,
          backgroundColor: ThemeManager.blue,
          elevation: 0,
          toolbarHeight: 65,
        ),
        drawer: const AppDrawer(),
        body: Container(
          color: ThemeManager.blue,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: _screens[_bottomNavIndex],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: ThemeManager.red,
          child: const Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () => AddNewWrite.show(context),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          itemCount: iconList.length,
          height: kBottomNavigationBarHeight,
          tabBuilder: (int index, bool isActive) {
            final color = isActive ? Colors.white : Colors.white.withOpacity(0.6);
            return Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 4.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconList[index],
                    size: 24,
                    color: color,
                  ),
                  const SizedBox(height: 3),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: AutoSizeText(
                      _titleBottom[index],
                      maxLines: 1,
                      style: TextStyle(color: color),
                      group: AutoSizeGroup(),
                    ),
                  )
                ],
              ),
            );
          },
          backgroundColor: ThemeManager.blue,
          activeIndex: _bottomNavIndex,
          splashColor: Colors.white.withOpacity(0.12),
          splashSpeedInMilliseconds: 0,
          notchSmoothness: NotchSmoothness.sharpEdge,
          gapLocation: GapLocation.center,
          leftCornerRadius: 0,
          rightCornerRadius: 0,
          onTap: (index) => setState(() => _bottomNavIndex = index),
        ),
      ),
    );
  }
}
