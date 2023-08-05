import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../static/color.dart';

class BodyTitle extends StatelessWidget {
  final String email;
  const BodyTitle({
    super.key,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width / 1.5,
      child: Column(
        children: [
          Text(
            'Verification Email',
            textAlign: TextAlign.left,
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
            'A verification link has been sent to your email :',
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
          Text(
            email,
            style: GoogleFonts.poppins(
                color: kSupTitleColor,
                fontSize: 12,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
                height: 1),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 35.h,
          ),
          Text(
            'RESEND',
            style: GoogleFonts.poppins(
                color: kMainColor,
                decoration: TextDecoration.underline,
                decorationThickness: BorderSide.strokeAlignOutside,
                fontSize: 8,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
                height: 1),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 55.h,
          ),
        ],
      ),
    );
  }
}
