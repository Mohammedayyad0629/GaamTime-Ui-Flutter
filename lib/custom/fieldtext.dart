import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../static/color.dart';

class FieldText extends StatelessWidget {
  final TextEditingController inputController;
  final String hintText;
  final bool? obscure;
  final Widget? suffixIcon;
  final String? Function(String?)? valid;
  final int? maxLines;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  const FieldText({
    super.key,
    required this.inputController,
    required this.hintText,
    this.obscure,
    this.suffixIcon,
    this.maxLines = 1,
    this.focusNode,
    this.valid,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: valid,
      focusNode: focusNode,
      maxLines: maxLines,
      style: GoogleFonts.poppins(
        color: kSupTitleColor,
        fontSize: 16.sp,
        letterSpacing: 0,
        fontWeight: FontWeight.normal,
      ),
      controller: inputController,
      keyboardType: keyboardType,
      obscureText: obscure == null || obscure == false ? false : true,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.only(left: 18.w, right: 18.w, top: 13.h),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: kMainColor, strokeAlign: 2.0.h),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kMainColor, width: 2.0.h),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red, strokeAlign: 2.0.h),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kMainColor, strokeAlign: 2.0.h),
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          color: kSupTitleColor,
          fontSize: 12.sp,
          letterSpacing: 0,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
