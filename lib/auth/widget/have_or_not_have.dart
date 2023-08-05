import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../static/color.dart';

class HaveOrDoNotHave extends StatelessWidget {
  final String text;
  final String goTo;
  final void Function() onTap;
  const HaveOrDoNotHave({
    super.key,
    required this.text,
    required this.goTo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            text,
            style: GoogleFonts.poppins(
                color: kSupTitleColor,
                fontSize: 12.sp,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(5.r),
          child: InkWell(
            onTap: onTap,
            child: Text(
              goTo,
              style: GoogleFonts.poppins(
                  color: kMainColor,
                  fontSize: 12.sp,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  height: 1),
            ),
          ),
        ),
      ],
    );
  }
}
