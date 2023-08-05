import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../static/color.dart';
import '../../static/imges.dart';

class BodySchedule extends StatelessWidget {
  final String title;
  final String supTitle;
  final String imageName;
  final String? nameVictor;
  final bool? isEllipse;
  final void Function() onTap;
  const BodySchedule({
    super.key,
    required this.title,
    required this.supTitle,
    required this.imageName,
    this.nameVictor,
    this.isEllipse,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: kLinearColor),
            borderRadius: BorderRadius.circular(8)),
        margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        height: 170.h,
        width: Get.width,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 12,
                        letterSpacing: -0.30000001192092896,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: Get.width / 2.3,
                      child: Text(
                        supTitle,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 10,
                          letterSpacing: -0.30000001192092896,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      FontAwesomeIcons.arrowRightLong,
                      color: Colors.white,
                    ),
                  ],
                ),
                imageName != kDiscover
                    ? Image.asset(
                        imageName,
                      )
                    : Container(),
              ],
            ),
            imageName == kDiscover
                ? Positioned(
                    right: 0,
                    top: 20.h,
                    child: Image.asset(
                      imageName,
                    ),
                  )
                : Container(),
            Positioned(
              right: 30.w,
              top: 0,
              child: nameVictor != null
                  ? SvgPicture.asset(nameVictor!)
                  : Container(),
            ),
            isEllipse == true
                ? Positioned(
                    right: 80.w,
                    top: 30.h,
                    child: SvgPicture.asset(kEllipse2),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
