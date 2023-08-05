import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../static/color.dart';

class OtpField extends StatelessWidget {
  const OtpField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 50.w, vertical: 5.h),
          child: Text(
            'PIN CODE',
            style: GoogleFonts.poppins(
              fontSize: 8,
              letterSpacing: 0,
              fontWeight: FontWeight.bold,
              height: 1,
              color: kSupTitleColor,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        OtpTextField(
          filled: true,
          fieldWidth: 60,
          fillColor: Colors.white,
          borderWidth: 1,
          focusedBorderColor: kMainColor,
          disabledBorderColor: kMainColor,
          enabledBorderColor: kMainColor,
          textStyle: const TextStyle(fontSize: 33),
          numberOfFields: 4,
          borderColor: kMainColor,
          //set to true to show as box or false to show as dash
          showFieldAsBox: false,
          //runs when a code is typed in
          onCodeChanged: (String code) {
            //handle validation or checks here
          },
          //runs when every textfield is filled
          onSubmit: (String verifycode) {
            // controller.verificationcode(verifycode);
          }, // end onSubmit
        ),
      ],
    );
  }
}
