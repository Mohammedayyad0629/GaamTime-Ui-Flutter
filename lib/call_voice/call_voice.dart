import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gaamtiime/my_icons_icons.dart';
import 'package:gaamtiime/static/color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../static/imges.dart';

class CallVoice extends StatelessWidget {
  const CallVoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kMainColor.withOpacity(0.75),
        child: Stack(
          children: [
            SvgPicture.asset(kGraphics),
            Column(
              children: [
                const Spacer(),
                Text(
                  'Incoming voice call…',
                  style: GoogleFonts.poppins(
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                Text(
                  'Scott Brown',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 35.w, vertical: 20.h),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffFC5858),
                      ),
                      child: Transform.rotate(
                        angle: 90,
                        child: const Icon(
                          MyIcons.phone_handset,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 35.w, vertical: 20.h),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffA1E8B1),
                      ),
                      child: const Icon(
                        MyIcons.phone_handset,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100.h,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
