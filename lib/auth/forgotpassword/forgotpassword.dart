import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaamtiime/auth/widget/tittle_and_sup.dart';
import 'package:get/get.dart';

import '../../custom/fieldtext.dart';
import '../../custom/gradientbutton.dart';
import '../../static/imges.dart';
import 'forgotpassword_controller.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgotPasswordController());
    return Scaffold(
      body: GetBuilder<ForgotPasswordController>(builder: (controller) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 40.h),
          child: ListView(children: [
            Image.asset(kForgotPassword),
            const TitleandSup(
                title: 'Forgot password?',
                supTitle:
                    'Enter your email address below and we\'ll send you an email with instructions on how to change your password'),
            FieldText(inputController: controller.email, hintText: 'Email'),
            SizedBox(
              height: 80.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: GradientButton(
                  text: 'Recover Password',
                  onPressed: () {
                    controller.goTo();
                  }),
            )
          ]),
        );
      }),
    );
  }
}
