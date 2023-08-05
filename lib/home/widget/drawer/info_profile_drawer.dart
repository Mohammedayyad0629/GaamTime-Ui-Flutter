import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../static/color.dart';
import '../../../static/imges.dart';

class InfoProfileDrawer extends StatelessWidget {
  const InfoProfileDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: const AssetImage(kImages),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: kMainColor, width: 1)),
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Stone Stellar',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                  color: kMainColor,
                  fontSize: 16,
                  letterSpacing: -0.30000001192092896,
                  fontWeight: FontWeight.bold,
                  height: 1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.crown,
                  size: 10.r,
                  color: const Color(0xffF4C73E),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  'Gold Player',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                      color: const Color(0xffF4C73E),
                      fontSize: 10,
                      letterSpacing: -0.30000001192092896,
                      fontWeight: FontWeight.normal,
                      height: 1.8),
                ),
              ],
            ),
            Text(
              'Online',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                  color: const Color(0xff36C703),
                  fontSize: 10,
                  letterSpacing: -0.30000001192092896,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ],
        )
      ],
    );
  }
}
