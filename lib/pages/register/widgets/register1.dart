import 'package:flutter/material.dart';

class Register1 extends StatelessWidget {
  const Register1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          // Email
          const TextField(
            decoration: InputDecoration(
              hintText: 'البريد الإلكتروني',
              prefixIcon: Icon(Icons.email),
            ),
          ),
          SizedBox(height: size.height * 0.03),

          // Password
          const TextField(
            decoration: InputDecoration(
              hintText: 'كلمة المرور',
              prefixIcon: Icon(Icons.lock),
            ),
          ),

          SizedBox(height: size.height * 0.03),

          // Confirm Password
          const TextField(
            decoration: InputDecoration(
              hintText: 'تأكيد كلمة المرور',
              prefixIcon: Icon(Icons.lock),
            ),
          ),
        ],
      ),
    );
  }
}
