import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gaamtiime/static/color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../static/imges.dart';

class CallVideo extends StatelessWidget {
  const CallVideo({super.key});

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
                  'Incoming video call…',
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
                      child: Icon(
                        Icons.videocam_outlined,
                        color: Colors.white,
                        size: 30.r,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 35.w, vertical: 20.h),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffA1E8B1),
                      ),
                      child: Icon(
                        Icons.videocam_outlined,
                        size: 30.r,
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
