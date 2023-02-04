import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sugar/shared/theme.dart';

import '../../shared/widgets/custom_expandable_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(backgroundImage: AssetImage("assets/images/man.png")),
                  const SizedBox(width: 10),
                  Text(
                      "مرحبا بك محمد",
                      style: TextStyle(
                        fontSize: 20,
                        color: ThemeManager.blueLight,
                        fontWeight: FontWeight.bold,
                      ),
                  ),

                ],
              )
            ),

            const SizedBox(height: 25),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color:ThemeManager.blueLight),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: InkWell(
                      onTap: () {},
                      child: const Icon(Icons.close, color: ThemeManager.grey),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'معاد الجرعة القادمة :',
                    style: TextStyle(
                      fontSize: 20,
                      color: ThemeManager.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text('الساعة 10:00 صباحاً', style: TextStyle(fontSize:18)),
                  const SizedBox(height: 5),
                ],
              ),
            ),

            const SizedBox(height: 25),

            CustomExpandableItem(
              title: 'اخر قراءة',
              body: _expandableBody(),
            ),
          ],
        ),
      ),
    );
  }
  Widget _expandableBody(){
    return Column(
      children: [
        Row(
          children: const [
            Icon(Icons.access_time, color: ThemeManager.blueLight),
            SizedBox(width: 10),
            Text(
              "الساعة 10:00 صباحاً",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          children: const [
            Icon(FontAwesomeIcons.syringe, color: ThemeManager.blueLight),
            SizedBox(width: 10),
            Text(
              "150",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
