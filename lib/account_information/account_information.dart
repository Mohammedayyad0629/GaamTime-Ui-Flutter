import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../auth/widget/tittle_and_sup.dart';
import '../custom/fieldtext.dart';
import '../custom/gradientbutton.dart';
import '../static/color.dart';
import 'account_information_controller.dart';

class AccountInformation extends StatelessWidget {
  const AccountInformation({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AccountInformationController());
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: GetBuilder<AccountInformationController>(
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
                        title: 'Account \nInformation',
                        supTitle:
                            'All your account information can be accessed and edited here but your mail will still remain un-edited.'),
                    FieldText(
                      hintText: 'Name',
                      inputController: controller.name,
                    ),
                    FieldText(
                      hintText: 'Username',
                      inputController: controller.username,
                    ),
                    FieldText(
                      hintText: 'Email',
                      inputController: controller.email,
                    ),
                    FieldText(
                      hintText: 'Phone Number',
                      inputController: controller.mobile,
                    ),
                    FieldText(
                      hintText: 'Bio',
                      inputController: controller.bio,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: GradientButton(text: 'Update', onPressed: () {}),
                    )
                  ]),
                ),
              )),
    );
  }
}
