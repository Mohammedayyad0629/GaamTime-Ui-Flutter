import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../verificationcode_password/widget/body_title.dart';
import 'verificationemail_controller.dart';

class VerificationCodeEmail extends StatelessWidget {
  const VerificationCodeEmail({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerificationEmailController());
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: GetBuilder<VerificationEmailController>(
          builder: (controller) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.w),
                child: BodyTitle(
                  email: controller.email,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 60.w),
              //   child: GradientButton(
              //       text: 'Next',
              //       onPressed: () {
              //         Get.offNamed('/passwordresetsuccess');
              //       }),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
