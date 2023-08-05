import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../static/color.dart';

class ItemSelected extends StatelessWidget {
  final void Function() onTap;
  final String nameCountry;
  final bool isSelected;
  const ItemSelected({
    super.key,
    required this.onTap,
    required this.isSelected,
    required this.nameCountry,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 40.w,
      ),
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                nameCountry,
                style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  letterSpacing: 0,
                  fontWeight:
                      isSelected != true ? FontWeight.normal : FontWeight.bold,
                ),
              ),
              isSelected == true
                  ? Icon(
                      Icons.done,
                      color: kMainColor,
                      size: 18.r,
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
