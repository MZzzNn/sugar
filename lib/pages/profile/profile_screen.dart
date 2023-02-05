import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sugar/shared/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ThemeManager.blue,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, size: 26, color: Colors.white),
        backgroundColor: ThemeManager.blue,
        toolbarHeight: 40,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Align(
              alignment: Alignment.topLeft,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: const [
                  Icon(Icons.star, color: Colors.yellow, size: 45),
                  Text('4.5',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Opacity(
                  opacity:0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        FontAwesomeIcons.bookmark,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage(
                    'assets/images/doctor_avatar.png',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      FontAwesomeIcons.bookmark,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 35),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _rowItem(title: 'الاسم', value: 'علاء أبو زيد'),
                    const SizedBox(height: 15),
                    _rowItem(title: 'الرقم', value: '+20123456789'),
                    const SizedBox(height: 15),
                    _rowItem(title: 'العنوان', value: 'شارع الترعة - المنصورة'),
                    const SizedBox(height: 15),
                    _rowItem(
                        title: 'مواعيد العمل',
                        value: 'من 9 صباحاً حتى 5 مساءً'),
                    const SizedBox(height: 15),
                    _rowItem(title: 'السعر', value: ' ١٠٠ جنيه   '),
                    const SizedBox(height: 15),
                    _rowItem(
                        title: 'الوصف',
                        value: 'حاصل على شهادة الدكتوراه في الطب'),
                    const Spacer(),
                    Align(
                      child: SizedBox(
                        width: size.width * 0.5,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'حجز',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                  ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _rowItem({required String title, required String value}) => Text.rich(
        TextSpan(
          text: '$title :',
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
          children: [
            const WidgetSpan(child: SizedBox(width: 5)),
            TextSpan(
              text: value,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      );
}
