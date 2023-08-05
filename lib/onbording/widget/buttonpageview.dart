import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../custom/gradientbutton.dart';
import '../../static/color.dart';
import '../onbording_controller.dart';

class ButtonPageView extends GetView<OnbordingController> {
  const ButtonPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Positioned(
        bottom: 60.h,
        right: 0,
        left: 0,
        child: controller.currentPage.value < 2
            ? Text(
                'Skip',
                style: GoogleFonts.poppins(
                    color: kMainColor,
                    decoration: TextDecoration.underline,
                    decorationThickness: BorderSide.strokeAlignOutside,
                    fontSize: 14,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w500,
                    height: 1),
                textAlign: TextAlign.center,
              )
            : Container(
                margin: EdgeInsets.symmetric(horizontal: 60.w),
                child: GradientButton(
                  text: 'Let’s Combat!',
                  onPressed: () {},
                ),
              ),
      ),
    );
  }
}
