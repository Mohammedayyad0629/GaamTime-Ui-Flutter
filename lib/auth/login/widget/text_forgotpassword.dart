import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../static/color.dart';
import '../login_controller.dart';

class TextForgotPassword extends GetView<LoginController> {
  const TextForgotPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.r),
      alignment: Alignment.topRight,
      child: InkWell(
        onTap: () {
          controller.goToForget();
        },
        child: Text(
          "Forgot Password?",
          style: GoogleFonts.poppins(
              color: kSupTitleColor,
              fontSize: 12,
              letterSpacing: 0,
              fontWeight: FontWeight.normal,
              height: 1),
          textAlign: TextAlign.end,
        ),
      ),
    );
  }
}
