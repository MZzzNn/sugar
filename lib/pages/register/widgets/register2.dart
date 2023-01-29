import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/dropdown/custom_dropdown_button.dart';
import '../../../shared/dropdown/custom_dropdown_button2.dart';

class Register2 extends StatelessWidget {
  const Register2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          // Name
          const TextField(
            decoration: InputDecoration(
              hintText: 'الاسم',
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: size.height * 0.03),

          //  select gender
          const CustomDropdownButton(
            title: "النوع",
            icon:FontAwesomeIcons.venusMars,
            items: ["ذكر", "أنثى"],
          ),
          SizedBox(height: size.height * 0.03),

          // age
          const TextField(
            decoration: InputDecoration(
              hintText: 'السن',
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: size.height * 0.03),

          //الوزن
          const TextField(
            decoration: InputDecoration(
              hintText: 'الوزن',
              prefixIcon: Icon(FontAwesomeIcons.weightScale),
            ),
          ),

        ],
      ),
    );
  }
}
