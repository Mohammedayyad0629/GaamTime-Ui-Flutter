import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaamtiime/static/color.dart';
import 'package:get/get.dart';

import '../auth/widget/tittle_and_sup.dart';
import '../custom/fieldtext.dart';
import '../custom/gradientbutton.dart';
import 'changepasswordcontroller.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ChangePasswordController());
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: GetBuilder<ChangePasswordController>(
          builder: (controller) => Scaffold(
                appBar: AppBar(
                    leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: kMainColor,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                )),
                body: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 40.w,
                  ),
                  padding: EdgeInsets.only(top: 40.h),
                  child: ListView(children: [
                    const TitleandSup(
                        title: 'Change \nPassword',
                        supTitle:
                            'Feeling worried about your account been easily preyed on? Then change that password now!'),
                    FieldText(
                      obscure: controller.isshowpassword,
                      hintText: 'Old Password',
                      inputController: controller.oldPassword,
                      suffixIcon: InkWell(
                        onTap: () {
                          controller.isshow();
                        },
                        child: Icon(
                          controller.eyeicon,
                          size: 20.r,
                          color: controller.passwordicon,
                        ),
                      ),
                    ),
                    FieldText(
                      obscure: controller.isshowpassword2,
                      hintText: 'New Password',
                      inputController: controller.newPassword,
                      suffixIcon: InkWell(
                        onTap: () {
                          controller.isshow2();
                        },
                        child: Icon(
                          size: 20.r,
                          controller.eyeicon2,
                          color: controller.passwordicon2,
                        ),
                      ),
                    ),
                    FieldText(
                      obscure: controller.isshowpassword3,
                      hintText: 'Again New Password',
                      inputController: controller.againnewpassword,
                      suffixIcon: InkWell(
                        onTap: () {
                          controller.isshow3();
                        },
                        child: Icon(
                          size: 20.r,
                          controller.eyeicon3,
                          color: controller.passwordicon3,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: GradientButton(
                          text: 'Update',
                          onPressed: () {
                            controller.goTo();
                          }),
                    )
                  ]),
                ),
              )),
    );
  }
}
