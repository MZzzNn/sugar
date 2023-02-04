import 'package:flutter/material.dart';

import '../../../shared/theme.dart';
import '../../../shared/widgets/custom_expandable_item.dart';

class Register3 extends StatelessWidget {
  const Register3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      physics: const BouncingScrollPhysics(),
      child: Column(
        children:  [
          CustomExpandableItem(
            title: 'انسولين',
            icon: 'assets/images/insulin.png',
            body: _expandableBody(),
          ),
          SizedBox(height: size.height * 0.03),
          CustomExpandableItem(
            title: 'اقراص',
            icon: 'assets/images/pills.png',
            body: _expandableBody(),
          ),
        ],
      ),
    );
  }
  Widget _expandableBody(){
    return Column(
      children: [
        const TextField(
          decoration: InputDecoration(
            hintText: 'الاسم',
            filled: true,
            isDense: false,
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            fillColor: ThemeManager.greyLight,
            border: InputBorder.none,
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: ThemeManager.greyLight),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: ThemeManager.greyLight),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: const [
            Expanded(child: TextField(
              decoration: InputDecoration(
                hintText: 'الجرعة',
                filled: true,
                isDense: false,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                fillColor: ThemeManager.greyLight,
                border: InputBorder.none,
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: ThemeManager.greyLight),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: ThemeManager.greyLight),
                ),
              ),
            )),
            SizedBox(width: 10),
            Expanded(child: TextField(
              decoration: InputDecoration(
                hintText: 'الوقت',
                filled: true,
                isDense: false,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                fillColor: ThemeManager.greyLight,
                border: InputBorder.none,
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: ThemeManager.greyLight),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: ThemeManager.greyLight),
                ),
              ),
            )),
          ],
        )
      ],
    );
  }
}

