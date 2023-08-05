import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../static/color.dart';

class TitleandSup extends StatelessWidget {
  final String title;
  final String supTitle;

  const TitleandSup({
    super.key,
    required this.title,
    required this.supTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.left,
          style: GoogleFonts.poppins(
              color: kMainColor,
              fontSize: 22,
              letterSpacing: 0,
              fontWeight: FontWeight.bold,
              height: 1),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          supTitle,
          style: GoogleFonts.poppins(
              color: kSupTitleColor,
              fontSize: 12,
              letterSpacing: 0,
              fontWeight: FontWeight.normal,
              height: 1),
        ),
        SizedBox(
          height: 25.h,
        ),
      ],
    );
  }
}
