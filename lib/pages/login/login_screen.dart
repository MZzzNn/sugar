import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sugar/pages/register/register_screen.dart';

import '../../layout/app_layout.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: size.width,
          height: size.height,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height:kToolbarHeight),

              Align(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: size.width * 0.4,
                  // height: size.height * 0.4,
                ),
              ),

              SizedBox(height: size.height * 0.03),
              const Text(
                'تسجيل الدخول',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.05),

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
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'هل نسيت كلمة المرور؟',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: size.height * 0.05),

              // Login Button
              Align(
                child: SizedBox(
                  width: size.width * 0.5,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () => Get.offAll(() => const AppLayout()),
                    child: const Text(
                      'دخول',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              const Spacer(),

              // Register Button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'ليس لديك حساب؟',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: ()=>Get.off(() => const RegisterScreen(), transition: Transition.fadeIn),
                    child: const Text(
                      'انشاء حساب',
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
    );
  }
}
