import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaamtiime/auth/signup/widget/formsignup.dart';
import 'package:gaamtiime/auth/widget/have_or_not_have.dart';
import 'package:gaamtiime/static/imges.dart';
import 'package:get/get.dart';
import '../../custom/gradientbutton.dart';
import '../widget/connect_with.dart';
import '../widget/tittle_and_sup.dart';
import 'signup_controller.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpController());
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          body: Container(
        margin: EdgeInsets.only(top: 30.h),
        child: GetBuilder<SignUpController>(
          builder: (controller) => ListView(
            children: [
              Container(
                  margin: EdgeInsets.only(right: 34.w),
                  child: Image.asset(kSignUpimges)),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleandSup(
                      title: 'Create Account',
                      supTitle: 'Hi, kindly fill in the form to proceed combat',
                    ),
                    const FormSignUp(),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 30.w),
                        child: GradientButton(
                            text: 'Create Account',
                            onPressed: () {
                              controller.signup();
                            })),
                    SizedBox(
                      height: 20.h,
                    ),
                    const ConnectWith(),
                    HaveOrDoNotHave(
                      text: 'Already have an account? ',
                      goTo: 'Login',
                      onTap: () {
                        controller.goToLogin();
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
