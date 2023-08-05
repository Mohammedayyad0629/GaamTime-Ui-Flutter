import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../static/color.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final bool isLoading;

  const GradientButton(
      {required this.text,
      required this.onPressed,
      Key? key,
      this.isLoading = false})
      : super(key: key);

  final double borderRadius = 30;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          height: 60.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            gradient: const LinearGradient(
              begin: Alignment(-0.54, -0.75),
              end: Alignment(1.81, 2.01),
              colors: kLinearColor,
            ),
            boxShadow: [
              BoxShadow(
                color: kMainColor.withOpacity(0.4),
                offset: const Offset(0, 3.0),
                blurRadius: 9.0,
              ),
            ],
          ),
          child: Center(
              child: isLoading == false
                  ? Text(
                      text,
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  : SizedBox(
                      width: 20.w,
                      height: 20.h,
                      child: CircularProgressIndicator(
                        strokeWidth: 2.w,
                        color: Colors.white,
                      ),
                    ))),
    );
  }
}
