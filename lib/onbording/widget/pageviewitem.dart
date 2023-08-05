import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../static/color.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({Key? key, this.title, this.subTitle, this.image})
      : super(key: key);

  final String? title;
  final String? subTitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Container(
          margin: EdgeInsets.only(left: 65.w),
          child: Image.asset(
            image!,
            height: 300.h,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        // Figma Flutter Generator HeadtextWidget - TEXT
        SizedBox(
          width: Get.width / 1.5,
          child: Text(
            title!,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                color: kMainColor,
                fontSize: 24,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        SizedBox(
          width: Get.width / 1.5,
          child: Text(
            subTitle!,
            style: GoogleFonts.poppins(
                color: kSupTitleColor,
                fontSize: 14,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1),
            textAlign: TextAlign.center,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
