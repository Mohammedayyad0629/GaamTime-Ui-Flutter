import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaamtiime/auth/login/login_controller.dart';
import 'package:gaamtiime/auth/login/widget/formlogin.dart';
import 'package:gaamtiime/auth/login/widget/text_forgotpassword.dart';
import 'package:get/get.dart';
import '../../custom/gradientbutton.dart';
import '../../static/imges.dart';
import '../widget/connect_with.dart';
import '../widget/have_or_not_have.dart';
import '../widget/tittle_and_sup.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          body: Container(
        margin: EdgeInsets.only(top: 30.h),
        child: GetBuilder<LoginController>(
          builder: (controller) => ListView(
            children: [
              Container(
                  margin: EdgeInsets.only(right: 34.w),
                  child: Image.asset(kLogInimges)),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleandSup(
                      title: 'Welcome Back!',
                      supTitle: 'Hi, Kindly login to continue battle',
                    ),
                    const FormLogin(),
                    const TextForgotPassword(),
                    SizedBox(
                      height: 30.h,
                    ),
                    Obx(() => Container(
                        margin: EdgeInsets.symmetric(horizontal: 30.w),
                        child: GradientButton(
                            isLoading: controller.saving.value,
                            text: 'Let’s Combat!',
                            onPressed: () {
                              controller.logIn();
                            }))),
                    SizedBox(
                      height: 20.h,
                    ),
                    const ConnectWith(),
                    HaveOrDoNotHave(
                      goTo: 'Create Account',
                      text: 'Don’t have an account ?',
                      onTap: () {
                        controller.goToSignUp();
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
