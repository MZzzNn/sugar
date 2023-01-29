import 'package:flutter/material.dart';
import 'package:sugar/shared/theme.dart';

class Register4 extends StatelessWidget {
  const Register4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'هل تعاني من امراض اخري',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),
          const CustomCheck(title: 'ضغط'),
          const CustomCheck(title: 'قلب'),
          const CustomCheck(title: 'حساسية صدر'),
          const CustomCheck(title: 'اخري'),

          const SizedBox(height: 20),
          Align(
            child: SizedBox(
              width: size.width * 0.5,
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'تسجيل',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class CustomCheck extends StatefulWidget {
  final String title;
  const CustomCheck({Key? key, required this.title}) : super(key: key);

  @override
  State<CustomCheck> createState() => _CustomCheckState();
}

class _CustomCheckState extends State<CustomCheck> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Checkbox(
            value: _value,
            visualDensity: VisualDensity.compact,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            side: const BorderSide(color: ThemeManager.blueLight, width: 1,strokeAlign: StrokeAlign.center),
            checkColor: ThemeManager.blueLight,
            overlayColor: MaterialStateProperty.all(ThemeManager.blueLight),
            activeColor: ThemeManager.blueLight,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              side: BorderSide(color: ThemeManager.blueLight, width: 1,strokeAlign: StrokeAlign.center),
            ),
            onChanged: (value) {
              setState(() {
                _value = value!;
              });
            },
            fillColor: MaterialStateProperty.all(Colors.white),
          ),
           Text(
            widget.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

