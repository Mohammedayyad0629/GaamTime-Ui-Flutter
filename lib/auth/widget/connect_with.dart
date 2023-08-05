import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../custom/gradienticonbutton.dart';
import '../../static/color.dart';
import '../../static/imges.dart';
import '../login/login_controller.dart';

class ConnectWith extends GetView<LoginController> {
  const ConnectWith({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(5.r),
          child: Text(
            'Connect With:',
            style: GoogleFonts.poppins(
                color: kMainColor,
                fontSize: 12.sp,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
                height: 1),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientIconButton(
                icon: kGoogle,
                onPressed: () async {
                  await controller.signInWithGoogle();
                  controller.logIn();
                },
                color: const Color(0xffF34A38)),
            SizedBox(
              width: 20.w,
            ),
            GradientIconButton(
                icon: kFacebook,
                onPressed: () {},
                color: const Color(0xff2672CB)),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
