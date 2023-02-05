import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sugar/shared/theme.dart';

import '../profile/profile_screen.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: ThemeManager.blueLight.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'ابحث عن طبيب',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'الأكثر بحثا',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: const [
              Chip(label: Text('د. علاء أبو زيد')),
              Chip(label: Text('د. داليا يحي')),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'النتائج',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(bottom: 20,top: 10),
              itemBuilder: (_, i) => doctorCard(),
              separatorBuilder: (_, i) => const SizedBox(height: 10),
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }

  Widget doctorCard() {
    return InkWell(
      onTap: ()=>Get.to(()=>const ProfileScreen()),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: ThemeManager.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ListTile(
          leading: const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/doctor_avatar.png'),
          ),
          title: const Text.rich(
            TextSpan(
              text: 'الاسم:',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              children: [
                WidgetSpan(child: SizedBox(width: 5)),
                TextSpan(
                  text: 'علاء أبو زيد',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          subtitle: const Text.rich(
            TextSpan(
              text: 'الرقم:',
              children: [
                WidgetSpan(child: SizedBox(width: 5)),
                TextSpan(text: '+20123456789'),
              ],
            ),
          ),
          trailing: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: const [
              Icon(Icons.star, color: Colors.yellow, size: 45),
              Text('4.5'),
            ],
          ),
        ),
      ),
    );
  }
}
