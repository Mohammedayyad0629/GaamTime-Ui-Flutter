import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaamtiime/auth/verificationcode_password/widget/otpfield.dart';
import 'package:get/get.dart';
import '../../custom/gradientbutton.dart';
import 'verificationcode_controller.dart';
import 'widget/body_title.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(VerificationCodeController());
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: GetBuilder<VerificationCodeController>(
          builder: (controller) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const BodyTitle(
                email: 'Email here',
              ),
              const OtpField(),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.w),
                child: GradientButton(
                    text: 'Next',
                    onPressed: () {
                      Get.offNamed('/passwordresetsuccess');
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
