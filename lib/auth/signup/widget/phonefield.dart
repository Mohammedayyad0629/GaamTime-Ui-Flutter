import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import '../../../static/color.dart';

class PhoneField extends StatelessWidget {
  final TextEditingController? incontroller;
  final void Function(PhoneNumber)? onChanged;
  final FutureOr<String?> Function(PhoneNumber?)? validator;
  const PhoneField(
      {super.key, this.validator, this.incontroller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: incontroller,
      validator: validator,
      initialCountryCode: 'US',
      disableLengthCheck: true,
      dropdownIcon: const Icon(
        Icons.arrow_drop_down,
        color: kMainColor,
      ),
      onChanged: onChanged,
      showCountryFlag: false,
      dropdownTextStyle: GoogleFonts.poppins(
        color: kSupTitleColor,
        fontSize: 16.sp,
        fontWeight: FontWeight.normal,
      ),
      style: GoogleFonts.poppins(
          color: kSupTitleColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.normal,
          height: 1.5),
      decoration: InputDecoration(
        hintText: 'Phone Number',
        hintStyle: GoogleFonts.poppins(
          color: kSupTitleColor,
          fontSize: 12.sp,
          letterSpacing: 0,
          fontWeight: FontWeight.normal,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: kMainColor, strokeAlign: 2.0.h),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kMainColor, width: 2.0.h),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2.0.h),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kMainColor, strokeAlign: 2.0.h),
        ),
      ),
    );
  }
}
