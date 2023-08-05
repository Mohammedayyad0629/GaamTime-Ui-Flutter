import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../custom/iconsgradient.dart';
import '../../../static/color.dart';

class DrawerItem extends StatelessWidget {
  final void Function() onTap;
  final String title;
  final IconData icon;
  const DrawerItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.h),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: Row(
          children: [
            GradientColor(
              icon: icon,
            ),
            SizedBox(
              width: 20.w,
            ),
            Text(
              title,
              style: GoogleFonts.poppins(fontSize: 16, color: kSupTitleColor),
            )
          ],
        ),
      ),
    );
  }
}
