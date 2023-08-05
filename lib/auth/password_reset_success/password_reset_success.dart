import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaamtiime/static/imges.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../custom/gradientbutton.dart';
import '../../static/color.dart';

class PasswordResetSuccess extends StatelessWidget {
  const PasswordResetSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(kSuccess),
          SizedBox(
            width: Get.width / 1.5,
            child: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  'Password reset succesful!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      color: kMainColor,
                      fontSize: 22,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold,
                      height: 1),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  'A new password has been created',
                  style: GoogleFonts.poppins(
                      color: kSupTitleColor,
                      fontSize: 14,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w),
            child: GradientButton(text: 'Let’s Combat!', onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
